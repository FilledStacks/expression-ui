import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_counter/extensions/rive_extensions.dart';
import 'package:stacked/stacked.dart';

import 'carousel_viewmodel.dart';

class CarouselView extends StackedView<CarouselViewModel> {
  const CarouselView({super.key});

  @override
  Widget builder(
    BuildContext context,
    CarouselViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Center(
        child: PageView.builder(
          pageSnapping: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return RiveAnimation.asset(
              'assets/responsive.riv',
              artboard: 'Carousel',
              fit: BoxFit.none,
              onInit: (artboard) {
                artboard.textRun('Placeholder')?.text = 'Index: $index';
              },
            );
          },
        ),
      ),
    );
  }

  @override
  CarouselViewModel viewModelBuilder(BuildContext context) =>
      CarouselViewModel();
}
