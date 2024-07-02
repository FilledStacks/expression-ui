import 'package:args/command_runner.dart';
import 'package:expression_cli/src/constants/command_constants.dart';
import 'package:expression_cli/src/constants/message_constants.dart';
import 'package:expression_cli/src/extensions/rive_file_extensions.dart';
import 'package:expression_cli/src/locator.dart';
import 'package:expression_cli/src/rive/rive_file.dart';
import 'package:expression_cli/src/services/template_service.dart';

class GenerateCommand extends Command {
  final templateService = locator<TemplateService>();

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
    final filePath = argResults![ksPath];
    final riveFile = await RiveFile.file(filePath);

    final framework = argResults![ksFramework];

    await templateService.generateCode(
      framework: framework,
      templateItems: riveFile.getTemplateItems(filePath: filePath),
    );
  }
}
