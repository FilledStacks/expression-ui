import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_counter/extensions/rive_extensions.dart';
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
          final titleRun = artboard.textRun('title')!;
          titleRun.text = title;

          final descriptionRun = artboard.textRun('description')!;
          descriptionRun.text = description;

          final ctaRun = artboard.textRun('cta')!;
          ctaRun.text = cta;
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
