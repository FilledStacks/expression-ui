// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_textrun.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TemplateTextRun _$TemplateTextRunFromJson(Map<String, dynamic> json) {
  return _TemplateTextRun.fromJson(json);
}

/// @nodoc
mixin _$TemplateTextRun {
  String get rawName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateTextRunCopyWith<TemplateTextRun> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateTextRunCopyWith<$Res> {
  factory $TemplateTextRunCopyWith(
          TemplateTextRun value, $Res Function(TemplateTextRun) then) =
      _$TemplateTextRunCopyWithImpl<$Res, TemplateTextRun>;
  @useResult
  $Res call({String rawName});
}

/// @nodoc
class _$TemplateTextRunCopyWithImpl<$Res, $Val extends TemplateTextRun>
    implements $TemplateTextRunCopyWith<$Res> {
  _$TemplateTextRunCopyWithImpl(this._value, this._then);

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
abstract class _$$TemplateTextRunImplCopyWith<$Res>
    implements $TemplateTextRunCopyWith<$Res> {
  factory _$$TemplateTextRunImplCopyWith(_$TemplateTextRunImpl value,
          $Res Function(_$TemplateTextRunImpl) then) =
      __$$TemplateTextRunImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rawName});
}

/// @nodoc
class __$$TemplateTextRunImplCopyWithImpl<$Res>
    extends _$TemplateTextRunCopyWithImpl<$Res, _$TemplateTextRunImpl>
    implements _$$TemplateTextRunImplCopyWith<$Res> {
  __$$TemplateTextRunImplCopyWithImpl(
      _$TemplateTextRunImpl _value, $Res Function(_$TemplateTextRunImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawName = null,
  }) {
    return _then(_$TemplateTextRunImpl(
      rawName: null == rawName
          ? _value.rawName
          : rawName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplateTextRunImpl extends _TemplateTextRun {
  _$TemplateTextRunImpl({required this.rawName}) : super._();

  factory _$TemplateTextRunImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateTextRunImplFromJson(json);

  @override
  final String rawName;

  @override
  String toString() {
    return 'TemplateTextRun(rawName: $rawName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateTextRunImpl &&
            (identical(other.rawName, rawName) || other.rawName == rawName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rawName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateTextRunImplCopyWith<_$TemplateTextRunImpl> get copyWith =>
      __$$TemplateTextRunImplCopyWithImpl<_$TemplateTextRunImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateTextRunImplToJson(
      this,
    );
  }
}

abstract class _TemplateTextRun extends TemplateTextRun {
  factory _TemplateTextRun({required final String rawName}) =
      _$TemplateTextRunImpl;
  _TemplateTextRun._() : super._();

  factory _TemplateTextRun.fromJson(Map<String, dynamic> json) =
      _$TemplateTextRunImpl.fromJson;

  @override
  String get rawName;
  @override
  @JsonKey(ignore: true)
  _$$TemplateTextRunImplCopyWith<_$TemplateTextRunImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
