import 'package:expression_cli/src/core/core.dart';

class Component extends Core {
  static const int typeKey = 10;
  @override
  int get coreType => typeKey;

  String _name = '';

  /// Non-unique identifier, used to give friendly names to elements in the
  /// hierarchy. Runtimes provide an API for finding components by this [name].
  String get name => _name;

  /// Setter to change the [_name] field value.
  set name(String value) {
    if (_name == value) return;
    _name = value;
  }
}
