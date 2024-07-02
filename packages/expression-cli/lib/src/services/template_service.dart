import 'dart:io';

import 'package:expression_cli/src/enums/template_item_type.dart';
import 'package:expression_cli/src/models/templating/template_item.dart';
import 'package:mustachex/mustachex.dart';

class TemplateService {
  /// For a specifc [framework], generates the type-safe code
  Future<void> generateCode({
    required String framework,
    required List<TemplateItem> templateItems,
  }) async {
    final viewTemplatePath = 'templates/$framework/view.dart.tmp';
    final componentTemplatePath = 'templates/$framework/component.dart.tmp';

    var viewTemplateContent = await File(viewTemplatePath).readAsString();
    var componentTemplateContent =
        await File(componentTemplatePath).readAsString();

    for (var item in templateItems) {
      var itemTemplate = Template(
        item.type == TemplateItemType.view
            ? viewTemplateContent
            : componentTemplateContent,
        lenient: true,
      );

      final templateData = item.toTemplateData();
      print('Template data for ${item.itemName}: \n$templateData');
      var renderedContent = itemTemplate.renderString(templateData);
      final outputPath =
          'expressionui/${item.type.outputPath}/${item.itemFileName}.dart';
      var outputFile = File(outputPath);

      if (!(await outputFile.exists())) {
        await outputFile.create(recursive: true);
      }

      await outputFile.writeAsString(renderedContent);
    }
  }
}
