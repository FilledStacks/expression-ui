// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemplateViewImpl _$$TemplateViewImplFromJson(Map<String, dynamic> json) =>
    _$TemplateViewImpl(
      artboardName: json['artboardName'] as String,
      filePath: json['filePath'] as String,
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => TemplateEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TemplateViewImplToJson(_$TemplateViewImpl instance) =>
    <String, dynamic>{
      'artboardName': instance.artboardName,
      'filePath': instance.filePath,
      'events': instance.events,
    };
