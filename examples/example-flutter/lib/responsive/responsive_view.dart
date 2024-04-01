import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:rive/rive.dart';
import 'package:stacked/stacked.dart';

import 'responsive_viewmodel.dart';

class ResponsiveView extends StackedView<ResponsiveViewModel> {
  const ResponsiveView({super.key});

  @override
  Widget builder(
    BuildContext context,
    ResponsiveViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          final artboard = switch (sizingInformation.deviceScreenType) {
            DeviceScreenType.desktop => 'Desktop',
            DeviceScreenType.tablet => 'Tablet',
            _ => 'Mobile'
          };

          return RiveAnimation.asset(
            'assets/responsive.riv',
            artboard: artboard,
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }

  @override
  ResponsiveViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResponsiveViewModel();
}
