import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_details_viewmodel.dart';

class OnboardingDetailsView extends StackedView<OnboardingDetailsViewModel> {
  const OnboardingDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  OnboardingDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingDetailsViewModel();
}
