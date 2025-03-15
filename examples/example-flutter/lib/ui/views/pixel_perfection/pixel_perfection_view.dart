import 'package:expression_ui_example/expressionui/views/pixel_perfection_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'pixel_perfection_viewmodel.dart';

class PixelPerfectionView extends StackedView<PixelPerfectionViewModel> {
  const PixelPerfectionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PixelPerfectionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: PixelPerfectionExpressionView(
        onNextTapped: viewModel.navigateToNextView,
      )
    );
  }

  @override
  PixelPerfectionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PixelPerfectionViewModel();
}
