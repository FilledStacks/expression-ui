import 'package:expression_cli/src/core/core.dart';
import 'package:expression_cli/src/rive/component.dart';
import 'package:expression_cli/src/rive/state_machine.dart';
import 'package:expression_cli/src/rive/text_value_run.dart';

class Artboard extends Component {
  static const int typeKey = 1;
  @override
  int get coreType => Artboard.typeKey;

  /// List of core objects attached to the artboard
  final List<Core> _coreObjects = <Core>[];

  /// List of [TextValueRun]s in the artboard
  Iterable<TextValueRun> get textValueRuns =>
      _coreObjects.whereType<TextValueRun>();

  /// List of [StateMachine]s in the artboard
  Iterable<StateMachine> get stateMachines =>
      _coreObjects.whereType<StateMachine>();

  /// Adds a core object to this artboard.
  void addCoreObject(Core object) {
    if (_coreObjects.contains(object)) return;
    return _coreObjects.add(object);
  }

  /// Removes a core object from this artboard
  bool removeCoreObject(Core object) {
    if (!_coreObjects.contains(object)) return false;
    return _coreObjects.remove(object);
  }

  @override
  String toString() =>
      'Artboard(name: $name, textRuns: ${textValueRuns.toList()}, '
      'stateMachines: ${stateMachines.toList()})';
}
