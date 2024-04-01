import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_counter/extensions/rive_extensions.dart';
import 'package:stacked/stacked.dart';

import 'counter_viewmodel.dart';

class CounterView extends StackedView<CounterViewModel> {
  const CounterView({super.key});

  @override
  Widget builder(
    BuildContext context,
    CounterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: RiveAnimation.asset(
        'assets/counter.riv',
        artboard: 'counter',
        fit: BoxFit.cover,
        onInit: (Artboard artboard) {
          final controller = StateMachineController.fromArtboard(
            artboard,
            'CounterStateMachine',
          );

          controller?.addEventListener(viewModel.onRiveEvent);
          artboard.addController(controller!);

          final counterState = artboard.textRun('Counter')!;
          viewModel.setCounterState(counterState);
        },
      ),
    );
  }

  @override
  CounterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CounterViewModel();
}
