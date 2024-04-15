import 'package:expression_ui_example/constants/expression_constants.dart';
import 'package:expression_ui_example/expression_ui/expression_view.dart';
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
      body: ExpressionView(
        artboardName: ksPixelPerfectionView,
        onEvent: (_) => viewModel.navigateToNextView(),
      ),
    );
  }

  @override
  PixelPerfectionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PixelPerfectionViewModel();
}
