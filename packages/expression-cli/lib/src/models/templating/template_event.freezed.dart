// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TemplateEvent _$TemplateEventFromJson(Map<String, dynamic> json) {
  return _TemplateEvent.fromJson(json);
}

/// @nodoc
mixin _$TemplateEvent {
  /// Name of the event as defined on the state machine
  String get rawName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateEventCopyWith<TemplateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateEventCopyWith<$Res> {
  factory $TemplateEventCopyWith(
          TemplateEvent value, $Res Function(TemplateEvent) then) =
      _$TemplateEventCopyWithImpl<$Res, TemplateEvent>;
  @useResult
  $Res call({String rawName});
}

/// @nodoc
class _$TemplateEventCopyWithImpl<$Res, $Val extends TemplateEvent>
    implements $TemplateEventCopyWith<$Res> {
  _$TemplateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawName = null,
  }) {
    return _then(_value.copyWith(
      rawName: null == rawName
          ? _value.rawName
          : rawName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateEventImplCopyWith<$Res>
    implements $TemplateEventCopyWith<$Res> {
  factory _$$TemplateEventImplCopyWith(
          _$TemplateEventImpl value, $Res Function(_$TemplateEventImpl) then) =
      __$$TemplateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rawName});
}

/// @nodoc
class __$$TemplateEventImplCopyWithImpl<$Res>
    extends _$TemplateEventCopyWithImpl<$Res, _$TemplateEventImpl>
    implements _$$TemplateEventImplCopyWith<$Res> {
  __$$TemplateEventImplCopyWithImpl(
      _$TemplateEventImpl _value, $Res Function(_$TemplateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawName = null,
  }) {
    return _then(_$TemplateEventImpl(
      rawName: null == rawName
          ? _value.rawName
          : rawName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplateEventImpl extends _TemplateEvent {
  _$TemplateEventImpl({required this.rawName}) : super._();

  factory _$TemplateEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateEventImplFromJson(json);

  /// Name of the event as defined on the state machine
  @override
  final String rawName;

  @override
  String toString() {
    return 'TemplateEvent(rawName: $rawName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateEventImpl &&
            (identical(other.rawName, rawName) || other.rawName == rawName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rawName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateEventImplCopyWith<_$TemplateEventImpl> get copyWith =>
      __$$TemplateEventImplCopyWithImpl<_$TemplateEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateEventImplToJson(
      this,
    );
  }
}

abstract class _TemplateEvent extends TemplateEvent {
  factory _TemplateEvent({required final String rawName}) = _$TemplateEventImpl;
  _TemplateEvent._() : super._();

  factory _TemplateEvent.fromJson(Map<String, dynamic> json) =
      _$TemplateEventImpl.fromJson;

  @override

  /// Name of the event as defined on the state machine
  String get rawName;
  @override
  @JsonKey(ignore: true)
  _$$TemplateEventImplCopyWith<_$TemplateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
