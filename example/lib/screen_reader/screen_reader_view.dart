import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:stacked/stacked.dart';

import 'screen_reader_viewmodel.dart';

class ScreenReaderView extends StackedView<ScreenReaderViewModel> {
  const ScreenReaderView({super.key});

  @override
  Widget builder(
    BuildContext context,
    ScreenReaderViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Semantics(
          label: viewModel.semanticLabel,
          child: RiveAnimation.asset(
            'assets/responsive.riv',
            artboard: 'Screen Reader',
            fit: BoxFit.fill,
            onInit: viewModel.loadRiveSemantic,
          ),
        ),
      ),
    );
  }

  @override
  ScreenReaderViewModel viewModelBuilder(BuildContext context) =>
      ScreenReaderViewModel();
}
