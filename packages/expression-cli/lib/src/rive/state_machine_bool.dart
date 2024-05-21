import 'package:expression_cli/src/rive/state_machine_component.dart';

class StateMachineBool extends StateMachineComponent {
  static const int typeKey = 59;
  @override
  int get coreType => StateMachineBool.typeKey;

  bool _value = false;

  /// Value of the [StateMachineBool]
  bool get value => _value;

  /// Setter to change the [_value] field value.
  set value(bool value) {
    if (_value == value) return;
    _value = value;
  }

  @override
  String toString() => 'StateMachineBool(name: $name, value: $value)';
}
