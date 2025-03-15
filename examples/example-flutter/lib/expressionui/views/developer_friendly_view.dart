import 'package:expression_ui/expression_ui.dart';
import 'package:flutter/material.dart';

class DeveloperFriendlyExpressionView extends StatelessWidget {
  final Function()? onNextTapped;
  final String? occupationTitle;

  final StateController? controller;

  const DeveloperFriendlyExpressionView({
    super.key,
    this.onNextTapped,
    this.occupationTitle,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BaseExpressionView(
      filePath: 'assets/expressionui.riv',
      artboardName: 'developer-friendly-view',
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
      if (occupationTitle != null) 'occupationTitle': occupationTitle!,
    };
  }
}
