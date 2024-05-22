import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recase/recase.dart';

part 'template_event.freezed.dart';
part 'template_event.g.dart';

@freezed
class TemplateEvent with _$TemplateEvent {
  TemplateEvent._();

  factory TemplateEvent({
    /// Name of the event as defined on the state machine
    required String rawName,
  }) = _TemplateEvent;

  factory TemplateEvent.fromJson(Map<String, dynamic> json) =>
      _$TemplateEventFromJson(json);

  String get eventFunctionName => 'on${ReCase(rawName).pascalCase}';

  Map<String, dynamic> toTemplateData() {
    final jsonMap = toJson();
    jsonMap['eventFunctionName'] = eventFunctionName;
    return jsonMap;
  }
}
