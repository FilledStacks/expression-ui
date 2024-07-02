import 'package:expression_cli/src/enums/template_item_type.dart';
import 'package:expression_cli/src/models/templating/template_event.dart';
import 'package:expression_cli/src/models/templating/template_item.dart';
import 'package:expression_cli/src/models/templating/template_textrun.dart';
import 'package:expression_cli/src/rive/rive_file.dart';

extension RiveFileExtensions on RiveFile {
  List<TemplateItem> getTemplateItems({required String filePath}) {
    final List<TemplateItem> templateViews = [];
    final artboards = this.artboards;

    for (final artboard in artboards.where((artboard) =>
        artboard.name.contains('-view') ||
        artboard.name.contains('-component'))) {
      final view = TemplateItem(
          artboardName: artboard.name,
          filePath: filePath,
          type: artboard.name.contains('-view')
              ? TemplateItemType.view
              : TemplateItemType.component,
          textRuns: artboard.textValueRuns
              .where((textRun) => textRun.name.isNotEmpty)
              .map((textRun) => TemplateTextRun(rawName: textRun.name))
              .toList(),
          events: artboard.events
              .map((event) => TemplateEvent(rawName: event.name))
              .toList());

      templateViews.add(view);
    }
    return templateViews;
  }
}
