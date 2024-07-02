// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemplateItemImpl _$$TemplateItemImplFromJson(Map<String, dynamic> json) =>
    _$TemplateItemImpl(
      artboardName: json['artboardName'] as String,
      filePath: json['filePath'] as String,
      type: $enumDecode(_$TemplateItemTypeEnumMap, json['type']),
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => TemplateEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      textRuns: (json['textRuns'] as List<dynamic>?)
              ?.map((e) => TemplateTextRun.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TemplateItemImplToJson(_$TemplateItemImpl instance) =>
    <String, dynamic>{
      'artboardName': instance.artboardName,
      'filePath': instance.filePath,
      'type': _$TemplateItemTypeEnumMap[instance.type]!,
      'events': instance.events.map((e) => e.toJson()).toList(),
      'textRuns': instance.textRuns.map((e) => e.toJson()).toList(),
    };

const _$TemplateItemTypeEnumMap = {
  TemplateItemType.view: 'view',
  TemplateItemType.component: 'component',
};
