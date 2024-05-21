import 'package:expression_cli/src/rive/animation.dart';
import 'package:expression_cli/src/rive/state_machine_component.dart';

class StateMachine extends Animation {
  static const int typeKey = 53;
  @override
  int get coreType => StateMachine.typeKey;

  /// List of [StateMachineComponent]s attached with this state machine
  final List<StateMachineComponent> _inputs = <StateMachineComponent>[];

  /// Returns list of inputs attached to this state machine.
  List<StateMachineComponent> get inputs => _inputs;

  /// Adds a [StateMachineComponent] to the state machine
  void addStateMachineComponent(StateMachineComponent component) {
    if (_inputs.contains(component)) return;
    _inputs.add(component);
  }

  @override
  String toString() => 'StateMachine(name: $name, inputs: $_inputs)';
}
