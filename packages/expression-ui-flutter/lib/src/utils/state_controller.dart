import 'package:rive/rive.dart';

class StateController {
  Map<String, SMIInput> inputs = {};

  void setInputs(Iterable<SMIInput> inputsFromArtboard) {
    for (var input in inputsFromArtboard) {
      inputs[input.name] = input;
    }
  }

  void fireTrigger({required String name}) {
    final input = inputs[name];
    if (input != null && input is SMITrigger) {
      input.fire();
    }
  }

  void updateNumber({required String name, required double value}) {
    final input = inputs[name];
    if (input != null && input is SMINumber) {
      input.value = value;
    }
  }
}
