import 'package:expression_ui/expression_ui.dart';
import 'package:flutter/material.dart';

class PixelPerfectionExpressionView extends StatelessWidget {
  final Function()? onNextTapped;
  final String? titleRowTwo;

  final StateController? controller;

  const PixelPerfectionExpressionView({
    super.key,
    this.onNextTapped,
    this.titleRowTwo,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BaseExpressionView(
      filePath: 'assets/expressionui.riv',
      artboardName: 'pixel-perfection-view',
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
      if (titleRowTwo != null) 'titleRowTwo': titleRowTwo!,
    };
  }
}
