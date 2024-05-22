// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TemplateView _$TemplateViewFromJson(Map<String, dynamic> json) {
  return _TemplateView.fromJson(json);
}

/// @nodoc
mixin _$TemplateView {
  /// The name of the artboard as defined in the .riv file
  String get artboardName => throw _privateConstructorUsedError;

  /// The path to the file that contains this artboard
  String get filePath => throw _privateConstructorUsedError;

  /// Events present in the state machine for this arboard
  List<TemplateEvent> get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateViewCopyWith<TemplateView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateViewCopyWith<$Res> {
  factory $TemplateViewCopyWith(
          TemplateView value, $Res Function(TemplateView) then) =
      _$TemplateViewCopyWithImpl<$Res, TemplateView>;
  @useResult
  $Res call({String artboardName, String filePath, List<TemplateEvent> events});
}

/// @nodoc
class _$TemplateViewCopyWithImpl<$Res, $Val extends TemplateView>
    implements $TemplateViewCopyWith<$Res> {
  _$TemplateViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artboardName = null,
    Object? filePath = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      artboardName: null == artboardName
          ? _value.artboardName
          : artboardName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TemplateEvent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateViewImplCopyWith<$Res>
    implements $TemplateViewCopyWith<$Res> {
  factory _$$TemplateViewImplCopyWith(
          _$TemplateViewImpl value, $Res Function(_$TemplateViewImpl) then) =
      __$$TemplateViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String artboardName, String filePath, List<TemplateEvent> events});
}

/// @nodoc
class __$$TemplateViewImplCopyWithImpl<$Res>
    extends _$TemplateViewCopyWithImpl<$Res, _$TemplateViewImpl>
    implements _$$TemplateViewImplCopyWith<$Res> {
  __$$TemplateViewImplCopyWithImpl(
      _$TemplateViewImpl _value, $Res Function(_$TemplateViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artboardName = null,
    Object? filePath = null,
    Object? events = null,
  }) {
    return _then(_$TemplateViewImpl(
      artboardName: null == artboardName
          ? _value.artboardName
          : artboardName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TemplateEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplateViewImpl extends _TemplateView {
  _$TemplateViewImpl(
      {required this.artboardName,
      required this.filePath,
      final List<TemplateEvent> events = const []})
      : _events = events,
        super._();

  factory _$TemplateViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateViewImplFromJson(json);

  /// The name of the artboard as defined in the .riv file
  @override
  final String artboardName;

  /// The path to the file that contains this artboard
  @override
  final String filePath;

  /// Events present in the state machine for this arboard
  final List<TemplateEvent> _events;

  /// Events present in the state machine for this arboard
  @override
  @JsonKey()
  List<TemplateEvent> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'TemplateView(artboardName: $artboardName, filePath: $filePath, events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateViewImpl &&
            (identical(other.artboardName, artboardName) ||
                other.artboardName == artboardName) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, artboardName, filePath,
      const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateViewImplCopyWith<_$TemplateViewImpl> get copyWith =>
      __$$TemplateViewImplCopyWithImpl<_$TemplateViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateViewImplToJson(
      this,
    );
  }
}

abstract class _TemplateView extends TemplateView {
  factory _TemplateView(
      {required final String artboardName,
      required final String filePath,
      final List<TemplateEvent> events}) = _$TemplateViewImpl;
  _TemplateView._() : super._();

  factory _TemplateView.fromJson(Map<String, dynamic> json) =
      _$TemplateViewImpl.fromJson;

  @override

  /// The name of the artboard as defined in the .riv file
  String get artboardName;
  @override

  /// The path to the file that contains this artboard
  String get filePath;
  @override

  /// Events present in the state machine for this arboard
  List<TemplateEvent> get events;
  @override
  @JsonKey(ignore: true)
  _$$TemplateViewImplCopyWith<_$TemplateViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
