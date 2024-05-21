import 'package:expression_cli/src/rive/component.dart';

class TextValueRun extends Component {
  static const int typeKey = 135;
  @override
  int get coreType => TextValueRun.typeKey;

  String _text = '';

  /// Value of the [TextValueRun].
  String get text => _text;

  /// Setter to change the [_text] field value.
  set text(String value) {
    if (_text == value) return;
    _text = value;
  }

  @override
  String toString() => 'TextValueRun(name: $name, text: $text)';
}
