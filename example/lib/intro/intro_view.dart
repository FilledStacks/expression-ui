import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_counter/counter/counter_view.dart';
import 'package:stacked/stacked.dart';

import 'intro_viewmodel.dart';

class IntroView extends StackedView<IntroViewModel> {
  const IntroView({super.key});

  @override
  Widget builder(
    BuildContext context,
    IntroViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: RiveAnimation.asset(
        'assets/counter.riv',
        artboard: 'intro-screen',
        fit: BoxFit.cover,
        onInit: (Artboard artboard) {
          final controller = StateMachineController.fromArtboard(
            artboard,
            'ExperienceStateMachine',
          );

          controller?.addEventListener((_) {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              Navigator.of(context).push(
                  CupertinoPageRoute(builder: (_) => const CounterView()));
            });
          });
          artboard.addController(controller!);
        },
      ),
    );
  }

  @override
  IntroViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      IntroViewModel();
}
