import 'package:expression_cli/src/core/core.dart';

class StateMachineComponent extends Core {
  static const int typeKey = 54;
  @override
  int get coreType => typeKey;

  String _name = '';

  /// Non-unique identifier, used to give friendly names to state machine
  /// components (like layers or inputs).
  String get name => _name;

  /// Setter to change the [_name] field value.
  set name(String value) {
    if (_name == value) return;
    _name = value;
  }
}
