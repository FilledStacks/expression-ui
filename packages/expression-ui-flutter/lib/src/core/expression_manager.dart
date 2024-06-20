import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class ExpressionManager {
  static ExpressionManager? _instance;

  static ExpressionManager get instance {
    _instance ??= ExpressionManager();
    return _instance!;
  }

  final Map<String, (Artboard, StateMachineController)> _cachedResponsiveViews =
      {};

  late RiveFile _riveFile;
  RiveFile get riveFile => _riveFile;

  Artboard getArtboardForView(String viewName) {
    return _cachedResponsiveViews[viewName]!.$1;
  }

  StateMachineController getStateMachineControllerForView(String viewName) {
    return _cachedResponsiveViews[viewName]!.$2;
  }

  Future<void> preloadResponsiveViews({
    required String riveFilePath,
    required Size size,
  }) async {
    final riveAnimationData = await rootBundle.load(riveFilePath);
    _riveFile = RiveFile.import(riveAnimationData);

    for (var artboard in _riveFile.artboards) {
      final artboardName = artboard.name;

      if (artboardName.contains('-view')) {
        final stateMachineController = StateMachineController.fromArtboard(
          artboard,
          'State Machine 1',
        );

        if (stateMachineController != null) {
          stateMachineController.addEventListener((event) {
            print('💥💥💥💥💥 Normal Event${event.name}');
          });

          print('💪💪💪💪💪 Artboard Events: ${artboard.events}');

          stateMachineController.reportedEvents.addAll(artboard.events);

          print('💪💪💪💪💪 Reported Events: ${artboard.events}');

          artboard.addController(stateMachineController);
          artboard.advance(1, nested: true);

          bool hasResponsiveHeight = false, hasResponsiveWidth = false;

          for (var i = 0; i < stateMachineController.inputs.length; i++) {
            if (stateMachineController.inputs.elementAt(i).name == 'height') {
              stateMachineController.inputs.elementAt(i).value = size.height;
              hasResponsiveHeight = true;
            } else if (stateMachineController.inputs.elementAt(i).name ==
                'width') {
              stateMachineController.inputs.elementAt(i).value = size.width;
              hasResponsiveWidth = true;
            }
          }

          artboard.advance(1, nested: true);

          if (hasResponsiveWidth || hasResponsiveHeight) {
            print(
                'Caching state machine controller and artboard for $artboardName');
            _cachedResponsiveViews[artboardName] =
                (artboard, stateMachineController);
          }
        }
      }
    }
  }
}
