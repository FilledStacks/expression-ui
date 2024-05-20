import 'package:expression_cli/src/rive/animation.dart';

class StateMachine extends Animation {
  static const int typeKey = 53;
  @override
  int get coreType => StateMachine.typeKey;

  @override
  String toString() => 'StateMachine(name: $name)';
}
