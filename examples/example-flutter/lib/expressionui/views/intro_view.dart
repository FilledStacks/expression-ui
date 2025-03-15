import 'package:expression_ui/expression_ui.dart';
import 'package:flutter/material.dart';

class IntroExpressionView extends StatelessWidget {
  final Function()? onBeginExperience;

  final StateController? controller;

  const IntroExpressionView({
    super.key,
    this.onBeginExperience,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BaseExpressionView(
      filePath: 'assets/expressionui.riv',
      artboardName: 'intro-view',
      onEvent: onEventHandler,
      textValues: getTextValues(),
      controller: controller,
    );
  }

  void onEventHandler(StateEvent event) {
    switch (event.name) {
      case 'begin_experience':
        onBeginExperience?.call();
        break;
    }
  }

  Map<String, String> getTextValues() {
    return {
    };
  }
}
