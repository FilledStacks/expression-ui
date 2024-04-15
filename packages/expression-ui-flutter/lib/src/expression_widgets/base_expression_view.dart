import 'package:expression_ui/src/extensions/rive_extensions.dart';
import 'package:expression_ui/src/models/state_event.dart';
import 'package:expression_ui/src/utils/state_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:rive/rive.dart';

class BaseExpressionView extends StatelessWidget {
  /// Assets path to the .riv file
  final String filePath;

  /// The exact name of the artboard in the rive file that you want to load
  final String artboardName;

  /// Fired when an event pointer down happens in the rive file
  ///
  /// Events has the be triggered in the rive file
  final Function(StateEvent) onEvent;

  /// Set to true if the entire view needs to be scrollable
  ///
  /// defaults to false
  /// Alias for [useArtboardSize]
  final bool scrollable;

  /// The name of the state machine to load
  final String? stateMachine;

  /// The map of dynamic text updates to perform
  final Map<String, String> textValues;

  /// Controller to manage the state of [artboardName]
  final StateController? controller;

  final BoxFit fit;

  /// Internally sizes the wdget to match the artboard dimensions defined
  /// on the canvas
  final bool useArtboardSize;

  const BaseExpressionView({
    super.key,
    required this.filePath,
    required this.artboardName,
    required this.onEvent,
    this.useArtboardSize = false,
    this.scrollable = false,
    this.stateMachine,
    this.textValues = const {},
    this.controller,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    final riveView = RiveAnimation.asset(
      filePath,
      artboard: artboardName,
      useArtboardSize: useArtboardSize || scrollable,
      fit: fit,
      onInit: onRiveFileInitialized,
    );

    if (!scrollable) {
      return riveView;
    }

    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: riveView,
      ),
    );
  }

  void onRiveFileInitialized(Artboard artboard) {
    final stateMachineController = StateMachineController.fromArtboard(
      artboard,
      stateMachine ?? 'State Machine 1',
    );

    for (var entry in textValues.keys) {
      final textRun = artboard.textRun(entry);

      if (textRun != null) {
        textRun.text = textValues[entry]!;
      }
    }

    if (stateMachineController != null) {
      stateMachineController.addEventListener((event) {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          onEvent.call(StateEvent(name: event.name));
        });
      });

      controller?.setInputs(stateMachineController.inputs);

      artboard.addController(stateMachineController);
    }
  }
}
