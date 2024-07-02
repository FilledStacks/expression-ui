import 'package:expression_cli/src/enums/template_item_type.dart';
import 'package:expression_cli/src/models/templating/template_event.dart';
import 'package:expression_cli/src/models/templating/template_textrun.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recase/recase.dart';

part 'template_item.freezed.dart';
part 'template_item.g.dart';

@freezed
class TemplateItem with _$TemplateItem {
  TemplateItem._();

  factory TemplateItem({
    /// The name of the artboard as defined in the .riv file
    required String artboardName,

    /// The path to the file that contains this artboard
    required String filePath,

    /// Either view or component
    required TemplateItemType type,

    /// Events present in the state machine for this arboard
    @Default([]) List<TemplateEvent> events,

    /// TextRuns are all the text values that can dynamically be replaced in
    /// the current [artboardName]
    @Default([]) List<TemplateTextRun> textRuns,
  }) = _TemplateItem;

  factory TemplateItem.fromJson(Map<String, dynamic> json) =>
      _$TemplateItemFromJson(json);

  String get itemName {
    final nameWithoutView = artboardName.replaceAll('-view', '');
    return ReCase(nameWithoutView).pascalCase;
  }

  String get itemFileName {
    return ReCase(artboardName).snakeCase;
  }

  Map<String, dynamic> toTemplateData() {
    final jsonMap = toJson();
    jsonMap['events'] = [...events.map((event) => event.toTemplateData())];

    jsonMap['textRuns'] = [
      ...textRuns.map((textRun) => textRun.toTemplateData())
    ];

    jsonMap[type.itemTemplateNameKey] = itemName;

    return jsonMap;
  }
}
