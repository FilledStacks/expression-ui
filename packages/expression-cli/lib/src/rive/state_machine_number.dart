import 'package:expression_cli/src/rive/state_machine_component.dart';

class StateMachineNumber extends StateMachineComponent {
  static const int typeKey = 56;

  @override
  int get coreType => StateMachineNumber.typeKey;

  double _value = 0;

  /// Value of the [StateMachineNumber]
  double get value => _value;

  /// Setter to change the [_value] field value.
  set value(double value) {
    if (_value == value) return;
    _value = value;
  }

  @override
  String toString() => 'StateMachineNumber(name: $name, value: $value)';
}
