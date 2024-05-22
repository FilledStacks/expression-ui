import 'package:args/command_runner.dart';
import 'package:expression_cli/src/constants/command_constants.dart';
import 'package:expression_cli/src/constants/message_constants.dart';

class GenerateCommand extends Command {
  @override
  String get description => ksCommandGenerateDescription;

  @override
  String get name => ksCommandGenerateName;

  GenerateCommand() {
    argParser
      ..addOption(
        ksPath,
        abbr: 'p',
        mandatory: true,
      )
      ..addOption(
        ksFramework,
        abbr: 'f',
        mandatory: true,
        allowed: allowedFrameworks,
      );
  }

  @override
  Future<void> run() async {
    // TODO: Load the rive file using the [ksPath] value
    // TODO: Select the template location
    // TODO: Read the view file and generate a basic view
  }
}
