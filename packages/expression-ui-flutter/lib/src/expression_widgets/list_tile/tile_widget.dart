import 'package:expression_ui/expression_ui.dart';
import 'package:expression_ui/src/extensions/rive_extensions.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ExpressionTile extends StatefulWidget {
  /// Assets path to the .riv file
  final String filePath;

  /// The exact name of the artboard in the rive file that you want to load
  final String artboardName;

  /// Fired when an event pointer down happens in the rive file
  ///
  /// Events has the be triggered in the rive file
  final Function(TapEvent) onTap;

  /// The name of the state machine to load
  final String? stateMachine;

  final ToJsonTile objetToDraw;

  const ExpressionTile(
      {super.key,
      required this.filePath,
      required this.artboardName,
      required this.onTap,
      this.stateMachine,
      required this.objetToDraw});

  @override
  State<ExpressionTile> createState() => _ExpressionTileState();
}

class _ExpressionTileState extends State<ExpressionTile> {
  @override
  void initState() {
    super.initState();
  }

  _setTextRun() {
    var objectMap = widget.objetToDraw.toJsonTile();
    var keys = objectMap.keys;
    for (var key in keys) {
      _artboard.textRun(key)!.text = objectMap[key];
    }
  }

  late final Artboard _artboard;

  @override
  Widget build(BuildContext context) {
    return RiveAnimation.asset(
      widget.filePath,
      artboard: widget.artboardName,
      useArtboardSize: true,
      fit: BoxFit.cover,
      onInit: onRiveFileInitialized,
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

    _setTextRun();
  }
}
