import 'package:rive/rive.dart';
import 'package:stacked/stacked.dart';

class CounterViewModel extends BaseViewModel {
  late TextValueRun _counter;

  void setCounterState(TextValueRun counter) {
    _counter = counter;
  }

  void onRiveEvent(RiveEvent event) {
    var counterValue = int.parse(_counter.text);
    counterValue++;

    _counter.text = counterValue.toString();
  }
}
