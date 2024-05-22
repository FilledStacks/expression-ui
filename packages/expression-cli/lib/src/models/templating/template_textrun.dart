import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recase/recase.dart';

part 'template_textrun.freezed.dart';
part 'template_textrun.g.dart';

@freezed
class TemplateTextRun with _$TemplateTextRun {
  TemplateTextRun._();

  factory TemplateTextRun({
    required String rawName,
  }) = _TemplateTextRun;

  factory TemplateTextRun.fromJson(Map<String, dynamic> json) =>
      _$TemplateTextRunFromJson(json);

  String get propertyName => ReCase(rawName).camelCase;

  Map<String, dynamic> toTemplateData() {
    final jsonMap = toJson();
    jsonMap['propertyName'] = propertyName;
    return jsonMap;
  }
}
