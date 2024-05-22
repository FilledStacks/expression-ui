import 'package:expression_cli/src/models/templating/template_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recase/recase.dart';

part 'template_view.freezed.dart';
part 'template_view.g.dart';

@freezed
class TemplateView with _$TemplateView {
  TemplateView._();

  factory TemplateView({
    /// The name of the artboard as defined in the .riv file
    required String artboardName,

    /// The path to the file that contains this artboard
    required String filePath,

    /// Events present in the state machine for this arboard
    @Default([]) List<TemplateEvent> events,
  }) = _TemplateView;

  factory TemplateView.fromJson(Map<String, dynamic> json) =>
      _$TemplateViewFromJson(json);

  String get viewName {
    final nameWithoutView = artboardName.replaceAll('-view', '');
    return ReCase(nameWithoutView).pascalCase;
  }

  String get viewFileName {
    return ReCase(artboardName).snakeCase;
  }

  Map<String, dynamic> toTemplateData() {
    final jsonMap = toJson();
    jsonMap['events'] = [...events.map((event) => event.toTemplateData())];
    jsonMap['viewName'] = viewName;
    return jsonMap;
  }
}
