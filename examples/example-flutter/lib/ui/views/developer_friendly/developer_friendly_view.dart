import 'package:expression_ui_example/constants/expression_constants.dart';
import 'package:expression_ui_example/expression_ui/expression_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'developer_friendly_viewmodel.dart';

class DeveloperFriendlyView extends StackedView<DeveloperFriendlyViewModel> {
  const DeveloperFriendlyView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DeveloperFriendlyViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: ExpressionView(
        artboardName: ksDeveloperFriendlyView,
        onEvent: (_) => viewModel.navigateToNextView(),
      ),
    );
  }

  @override
  DeveloperFriendlyViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DeveloperFriendlyViewModel();
}
