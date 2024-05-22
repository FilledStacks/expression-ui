import 'package:expression_cli/src/models/templating/template_textrun.dart';
import 'package:expression_cli/src/models/templating/template_view.dart';
import 'package:expression_cli/src/rive/rive_file.dart';

extension RiveFileExtensions on RiveFile {
  List<TemplateView> getViews({required String filePath}) {
    final List<TemplateView> templateViews = [];
    final artboards = this.artboards;

    for (final artboard
        in artboards.where((artboard) => artboard.name.contains('-view'))) {
      final view = TemplateView(
        artboardName: artboard.name,
        filePath: filePath,
        textRuns: artboard.textValueRuns
            .where((textRun) => textRun.name.isNotEmpty)
            .map((textRun) => TemplateTextRun(rawName: textRun.name))
            .toList(),
        // TODO: Add events here to be rendered into the template
      );

      templateViews.add(view);
    }
    return templateViews;
  }
}
