import 'package:rive/rive.dart';
import 'package:stacked/stacked.dart';

class ScreenReaderViewModel extends BaseViewModel {
  String _semanticLabel = '';

  String get semanticLabel => _semanticLabel;

  void loadRiveSemantic(Artboard artboard) {
    artboard.forEachComponent((component) {
      if (component.name.isNotEmpty) {
        // * Note: Assumptions is that components are returned in reverse order
        // * If this is not true, can be sorted with {component.graphOrder}
        switch (component.runtimeType.toString()) {
          case 'Shape':
            _semanticLabel = '${component.name}, $semanticLabel';
            break;
          case 'Text':
            final componentName = component.name;
            final textComponent = artboard.component(componentName);
            _semanticLabel = '${textComponent.text}, $semanticLabel';
            break;
          default:
            break;
        }
      }
    });
    rebuildUi();
  }
}
