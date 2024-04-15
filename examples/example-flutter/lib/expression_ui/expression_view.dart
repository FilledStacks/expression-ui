import 'package:expression_ui/expression_ui.dart';
import 'package:expression_ui_example/constants/expression_constants.dart';
import 'package:flutter/material.dart';

class ExpressionView extends StatelessWidget {
  /// The exact name of the artboard in the rive file that you want to load
  final String artboardName;

  /// Fired when an event pointer down happens in the rive file
  ///
  /// Events has the be triggered in the rive file
  final Function(StateEvent) onEvent;

  /// Set to true if the entire view needs to be scrollable
  ///
  /// defaults to false
  final bool scrollable;
  final bool useArtboardSize;

  final Map<String, String> textValues;

  final StateController? controller;

  final BoxFit fit;

  const ExpressionView({
    Key? key,
    required this.artboardName,
    required this.onEvent,
    this.scrollable = false,
    this.textValues = const {},
    this.controller,
    this.fit = BoxFit.cover,
    this.useArtboardSize = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseExpressionView(
      filePath: ksExpressionUIFilePath,
      artboardName: artboardName,
      scrollable: scrollable,
      onEvent: (event) => onEvent.call(event),
      textValues: textValues,
      controller: controller,
      fit: fit,
      useArtboardSize: useArtboardSize,
    );
  }
}
