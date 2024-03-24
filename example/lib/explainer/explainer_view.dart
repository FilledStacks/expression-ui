import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:stacked/stacked.dart';

import 'explainer_viewmodel.dart';

class ExplainerView extends StackedView<ExplainerViewModel> {
  final String title;
  final String description;
  final String cta;

  const ExplainerView({
    super.key,
    required this.title,
    required this.description,
    required this.cta,
  });

  @override
  Widget builder(
    BuildContext context,
    ExplainerViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: RiveAnimation.asset(
        'assets/onboarding-selection-list.riv',
        artboard: 'explainer-view',
        fit: BoxFit.cover,
        onInit: (Artboard artboard) {
          // final controller = StateMachineController.fromArtboard(
          //   artboard,
          //   'CounterStateMachine',
          // );

          // controller?.addEventListener(viewModel.onRiveEvent);
          // artboard.addController(controller!);

          // final counterState = artboard.textRun('Counter')!;
          // viewModel.setCounterState(counterState);
        },
      ),
    );
  }

  @override
  ExplainerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ExplainerViewModel();
}
