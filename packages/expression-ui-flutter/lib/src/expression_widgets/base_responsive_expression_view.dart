import 'package:expression_ui/src/core/expression_manager.dart';
import 'package:expression_ui/src/extensions/rive_extensions.dart';
import 'package:expression_ui/src/models/state_event.dart';
import 'package:expression_ui/src/utils/state_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:rive/rive.dart';

/// Used for full views that make use of the responsive functionality that
/// ExpressionUI provides.
///
/// Responsive views need to be pre-loaded and setup with the correct screen
/// size values before it's displayed. This removes the "jump bug" that is seen
/// when a new view is loaded that has to be set to the current screen size.
///
/// Non responsive views use the [BaseExpressionView] class
class BaseResponsiveExpressionView extends StatelessWidget {
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

  /// Controller to manage the state of [artboardName]
  final StateController? controller;

  StateMachineController get _stateMachineController =>
      ExpressionManager.instance.getStateMachineControllerForView(artboardName);

  Artboard get _artboard =>
      ExpressionManager.instance.getArtboardForView(artboardName);

  BaseResponsiveExpressionView({
    super.key,
    required this.artboardName,
    required this.onEvent,
    this.scrollable = false,
    this.stateMachine,
    Map<String, String> textValues = const {},
    this.controller,
  }) {
    for (var entry in textValues.keys) {
      final textRun = _artboard.textRun(entry);

      if (textRun != null) {
        textRun.text = textValues[entry]!;
      }
    }

    _stateMachineController.addEventListener((event) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        onEvent.call(StateEvent(name: event.name));
      });
    });

    controller?.setInputs(_stateMachineController.inputs);
  }

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      minWidth: 0.0,
      minHeight: 0.0,
      maxWidth: double.infinity,
      maxHeight: double.infinity,
      alignment: Alignment.center,
      child: Rive(
        artboard: ExpressionManager.instance.getArtboardForView(artboardName),
        useArtboardSize: true,
        fit: BoxFit.cover,
        enablePointerEvents: true,
      ),
    );
  }
}
