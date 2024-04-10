import 'package:rive/rive.dart';
import 'package:stacked/stacked.dart';

class CarouselViewModel extends BaseViewModel {
  void setPageViewIndex(TextValueRun textValueRun, int index) {
    textValueRun.text = 'Index: $index';
  }
}
