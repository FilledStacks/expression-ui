import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_list_viewmodel.dart';

class OnboardingListView extends StackedView<OnboardingListViewModel> {
  const OnboardingListView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingListViewModel viewModel,
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
  OnboardingListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingListViewModel();
}
