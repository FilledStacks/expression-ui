import 'package:expression_ui/expression_ui.dart';
import 'package:flutter/material.dart';

class EditTextRunView extends StatelessWidget {
  EditTextRunView({super.key});

  final GlobalKey<BaseExpressionViewState> _globalKey = GlobalKey();

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: BaseExpressionView(
        key: _globalKey,
        filePath: 'assets/counter.riv',
        artboardName: 'counter',
        onTap: (TapEvent event) {
          if (event.eventName == 'button_clicked') {
            _globalKey.currentState!.editTextValueRun('Counter', '3');
          }
        },
        stateMachine: 'CounterStateMachine',
      ),
    );
  }
}
