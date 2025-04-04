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
  /// Events have to be triggered in the rive file
  final Function(StateEvent) onEvent;

  /// The name of the state machine to load
  final String? stateMachine;

  /// The map of dynamic text updates to perform
  final Map<String, String> textValues;

  /// Controller to manage the state of [artboardName]
  final StateController? controller;

  /// Fit for the animation in the widget.
  final BoxFit? fit;

  /// Internally sizes the wdget to match the artboard dimensions defined
  /// on the canvas
  final bool useArtboardSize;

  const BaseExpressionView({
    super.key,
    required this.filePath,
    required this.artboardName,
    required this.onEvent,
    this.useArtboardSize = false,
    this.stateMachine,
    this.textValues = const {},
    this.controller,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    final riveView = RiveAnimation.asset(
      filePath,
      artboard: artboardName,
      useArtboardSize: useArtboardSize,
      fit: fit,
      onInit: (artboard) => onRiveFileInitialized(artboard, context),
    );

    return riveView;
  }

  void onRiveFileInitialized(Artboard artboard, BuildContext context) {
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

    final screenSize = MediaQuery.of(context).size;

    artboard.width = screenSize.width;
    artboard.height = screenSize.height;
  }
}
