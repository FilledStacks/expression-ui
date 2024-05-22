import 'package:expression_cli/src/rive/component.dart';

class Event extends Component {
  static const int typeKey = 128;
  @override
  int get coreType => Event.typeKey;

  @override
  String toString() => 'Event(name: $name)';
}
