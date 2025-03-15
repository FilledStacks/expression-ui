import 'package:expression_ui_example/expressionui/views/composable_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'composable_viewmodel.dart';

class ComposableView extends StackedView<ComposableViewModel> {
  const ComposableView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ComposableViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        body: ComposableExpressionView(
      onNextTapped: viewModel.getStarted,
    ));
  }

  @override
  ComposableViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ComposableViewModel();
}
