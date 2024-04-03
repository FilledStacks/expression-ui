import 'package:expression_ui/src/extensions/rive_extensions.dart';
import 'package:expression_ui/src/models/tap_event.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class BaseExpressionView extends StatefulWidget {
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
  State<BaseExpressionView> createState() => BaseExpressionViewState();
}

class BaseExpressionViewState extends State<BaseExpressionView> {
  late final Artboard _artboard;

  @override
  Widget build(BuildContext context) {
    final riveView = RiveAnimation.asset(
      widget.filePath,
      artboard: widget.artboardName,
      useArtboardSize: widget.scrollable,
      fit: BoxFit.cover,
      onInit: onRiveFileInitialized,
    );

    if (!widget.scrollable) {
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
    _artboard = artboard;
    final controller = StateMachineController.fromArtboard(
      artboard,
      widget.stateMachine ?? 'State Machine 1',
    );

    if (controller != null) {
      controller.addEventListener((event) {
        widget.onTap.call(TapEvent(eventName: event.name));
      });

      artboard.addController(controller);
    }
  }

  void editTextValueRun(String key, String value) {
    _artboard.textRun(key)!.text = value;
  }
}
