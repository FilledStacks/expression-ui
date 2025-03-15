import 'package:expression_ui_example/expressionui/views/cross_framework_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'cross_framework_viewmodel.dart';

class CrossFrameworkView extends StackedView<CrossFrameworkViewModel> {
  const CrossFrameworkView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CrossFrameworkViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: CrossFrameworkExpressionView(
        onNextTapped: viewModel.navigateToNextView,
      )
    );
  }

  @override
  CrossFrameworkViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CrossFrameworkViewModel();
}
