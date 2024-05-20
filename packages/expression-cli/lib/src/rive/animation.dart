import 'package:expression_cli/src/core/core.dart';

class Animation extends Core {
  static const int typeKey = 27;
  @override
  int get coreType => typeKey;

  String _name = '';

  /// Name of the animation
  String get name => _name;

  /// Setter to change the [_name] field value.
  set name(String value) {
    if (_name == value) return;
    _name = value;
  }
}
