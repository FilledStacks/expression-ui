import 'package:expression_ui/expression_ui.dart';
import 'package:flutter/material.dart';

class CrossFrameworkExpressionView extends StatelessWidget {
  final Function()? onNextTapped;
  final String? description;

  final StateController? controller;

  const CrossFrameworkExpressionView({
    super.key,
    this.onNextTapped,
    this.description,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BaseExpressionView(
      filePath: 'assets/expressionui.riv',
      artboardName: 'cross-framework-view',
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
      if (description != null) 'description': description!,
    };
  }
}
