import 'package:expression_ui/expression_ui.dart';
import 'package:flutter/material.dart';

class CounterExpressionView extends StatelessWidget {
  final Function()? onButtonClicked;
  final String? counter;

  final StateController? controller;

  const CounterExpressionView({
    super.key,
    this.onButtonClicked,
    this.counter,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BaseExpressionView(
      filePath: 'assets/expressionui.riv',
      artboardName: 'counter-view',
      onEvent: onEventHandler,
      textValues: getTextValues(),
      controller: controller,
    );
  }

  void onEventHandler(StateEvent event) {
    switch (event.name) {
      case 'button_clicked':
        onButtonClicked?.call();
        break;
    }
  }

  Map<String, String> getTextValues() {
    return {
      if (counter != null) 'Counter': counter!,
    };
  }
}
