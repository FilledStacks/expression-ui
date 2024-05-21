import 'package:expression_cli/src/rive/state_machine_component.dart';

class StateMachineTrigger extends StateMachineComponent {
  static const int typeKey = 58;
  @override
  int get coreType => StateMachineTrigger.typeKey;

  @override
  String toString() => 'StateMachineTrigger(name: $name)';
}
