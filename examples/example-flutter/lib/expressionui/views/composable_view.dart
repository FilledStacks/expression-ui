import 'package:expression_ui/expression_ui.dart';
import 'package:flutter/material.dart';

class ComposableExpressionView extends StatelessWidget {
  final Function()? onNextTapped;

  final StateController? controller;

  const ComposableExpressionView({
    super.key,
    this.onNextTapped,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BaseExpressionView(
      filePath: 'assets/expressionui.riv',
      artboardName: 'composable-view',
      onEvent: onEventHandler,
      textValues: getTextValues(),
      controller: controller,
    );
  }

  void onEventHandler(StateEvent event) {
    switch (event.name) {
      case 'next_tapped':
        onNextTapped?.call();
        break;
    }
  }

  Map<String, String> getTextValues() {
    return {
    };
  }
}
