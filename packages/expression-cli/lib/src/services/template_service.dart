import 'dart:io';

import 'package:expression_cli/src/models/templating/template_view.dart';
import 'package:mustachex/mustachex.dart';

class TemplateService {
  /// For a specifc [framework], generates the type-safe code
  Future<void> generateCode({
    required String framework,
    required List<TemplateView> views,
  }) async {
    final viewTemplatePath = 'templates/$framework/view.dart.tmp';

    var viewTemplateContent = await File(viewTemplatePath).readAsString();
    var viewTemplate = Template(viewTemplateContent, lenient: true);

    for (var view in views) {
      var renderedContent = viewTemplate.renderString(view.toTemplateData());
      final outputPath = 'expressionui/views/${view.viewFileName}.dart';
      var outputFile = File(outputPath);

      if (!(await outputFile.exists())) {
        await outputFile.create(recursive: true);
      }

      await outputFile.writeAsString(renderedContent);
    }
  }
}
