import 'package:expression_ui/src/models/tap_event.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class BaseExpressionView extends StatelessWidget {
  /// Assets path to the .riv file
  final String filePath;

  /// The exact name of the artboard in the rive file that you want to load
  final String artboardName;

  /// Fired when an event pointer down happens in the rive file
  ///
  /// Events has the be triggered in the rive file
  final Function(TapEvent) onTap;

  /// Set to true if the entire view needs to be scrollable
  ///
  /// defaults to false
  final bool scrollable;

  /// The name of the state machine to load
  final String? stateMachine;

  const BaseExpressionView({
    super.key,
    required this.filePath,
    required this.artboardName,
    required this.onTap,
    this.scrollable = false,
    this.stateMachine,
  });

  @override
  Widget build(BuildContext context) {
    final riveView = RiveAnimation.asset(
      filePath,
      artboard: artboardName,
      useArtboardSize: scrollable,
      fit: BoxFit.cover,
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
    final controller = StateMachineController.fromArtboard(
      artboard,
      stateMachine ?? 'State Machine 1',
    );

    if (controller != null) {
      controller.addEventListener((event) {
        onTap.call(TapEvent(eventName: event.name));
      });

      artboard.addController(controller);
    }
  }
}
