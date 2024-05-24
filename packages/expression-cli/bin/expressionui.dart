import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:expression_cli/src/commands/generate_command.dart';
import 'package:expression_cli/src/constants/command_constants.dart';
import 'package:expression_cli/src/constants/message_constants.dart';
import 'package:expression_cli/src/locator.dart';
import 'package:expression_cli/src/services/brew_service.dart';

const String version = '0.0.1';

Future<void> main(List<String> arguments) async {
  setupLocator();

  final runner = CommandRunner(
    kCommandRunnerName,
    kCommandRunnerDescription,
  )
    ..argParser.addFlag(
      'version',
      negatable: false,
      help: 'Print the tool version.',
    )
    ..addCommand(GenerateCommand());

  try {
    final argResults = runner.parse(arguments);

    if (argResults[ksVersion]) {
      // DEVELOPMENT NOTE:
      // The CLI will be installed through brew so this won't work until the cli
      // has been added to the brew tap
      await _handleVersion();
      exit(0);
    }

    runner.run(arguments);
  } catch (e, _) {
    stdout.writeln(e.toString());

    exit(2);
  }
}

/// Prints version of the application.
Future<void> _handleVersion() async {
  stdout.writeln(await locator<BrewService>().getCurrentVersion());
}
