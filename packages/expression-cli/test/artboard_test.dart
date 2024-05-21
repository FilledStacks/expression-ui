import 'package:expression_cli/src/rive/rive_file.dart';
import 'package:expression_cli/src/rive/state_machine_bool.dart';
import 'package:expression_cli/src/rive/state_machine_number.dart';
import 'package:expression_cli/src/rive/state_machine_trigger.dart';
import 'package:test/test.dart';

import 'helpers/load_file.dart';

void main() {
  late RiveFile riveFile;

  setUp(() {
    riveFile = RiveFile.import(loadFileByteData('textruns.riv'));
  });

  test('Artboard has correct count of text runs', () {
    final screenReaderAB = riveFile.artboardByName('Screen Reader');
    final carouselAB = riveFile.artboardByName('Carousel');

    expect(screenReaderAB!.textValueRuns.length, 3);
    expect(carouselAB!.textValueRuns.length, 1);
  });

  test('Artboard has correct text run name and text', () {
    final screenReaderAB = riveFile.artboardByName('Screen Reader');

    final firstTextRun = screenReaderAB!.textValueRuns.first;
    final secondTextRun = screenReaderAB.textValueRuns.elementAt(1);
    final lastTextRun = screenReaderAB.textValueRuns.last;

    expect(firstTextRun.name, 'content-heading');
    expect(firstTextRun.text, 'There are 4 colored boxes in the screen');

    expect(secondTextRun.name, 'appbar-subtitle');
    expect(secondTextRun.text, 'A screen reader experience');

    expect(lastTextRun.name, 'appbar-title');
    expect(lastTextRun.text, 'Rive Runtime');
  });

  test('Artboard has correct number of state machines', () {
    final screenReaderAB = riveFile.artboardByName('Screen Reader');
    expect(screenReaderAB!.stateMachines.length, 1);
  });

  test('Artboard has correct state machine name', () {
    final screenReaderAB = riveFile.artboardByName('Screen Reader');
    expect(screenReaderAB!.stateMachines.first.name, 'State Machine 1');
  });

  test('State Machine has correct inputs', () {
    final carouselAB = riveFile.artboardByName('Carousel');
    expect(carouselAB!.stateMachines.length, 1);

    final stateMachine = carouselAB.stateMachines.first;
    expect(stateMachine.inputs.length, 3);

    final stateMachineInputs = stateMachine.inputs;
    final boolInputs = stateMachineInputs.whereType<StateMachineBool>();
    final numberInputs = stateMachineInputs.whereType<StateMachineNumber>();
    final triggerInputs = stateMachineInputs.whereType<StateMachineTrigger>();

    expect(boolInputs.length, 1);
    expect(numberInputs.length, 1);
    expect(triggerInputs.length, 1);

    expect(boolInputs.first.name, 'abc');
    expect(boolInputs.first.value, false);

    expect(numberInputs.first.name, 'xyz');
    expect(numberInputs.first.value, 0.0);

    expect(triggerInputs.first.name, 'mno');
  });
}
