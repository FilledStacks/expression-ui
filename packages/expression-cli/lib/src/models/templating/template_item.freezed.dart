// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TemplateItem _$TemplateItemFromJson(Map<String, dynamic> json) {
  return _TemplateItem.fromJson(json);
}

/// @nodoc
mixin _$TemplateItem {
  /// The name of the artboard as defined in the .riv file
  String get artboardName => throw _privateConstructorUsedError;

  /// The path to the file that contains this artboard
  String get filePath => throw _privateConstructorUsedError;

  /// Either view or component
  TemplateItemType get type => throw _privateConstructorUsedError;

  /// Events present in the state machine for this arboard
  List<TemplateEvent> get events => throw _privateConstructorUsedError;

  /// TextRuns are all the text values that can dynamically be replaced in
  /// the current [artboardName]
  List<TemplateTextRun> get textRuns => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateItemCopyWith<TemplateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateItemCopyWith<$Res> {
  factory $TemplateItemCopyWith(
          TemplateItem value, $Res Function(TemplateItem) then) =
      _$TemplateItemCopyWithImpl<$Res, TemplateItem>;
  @useResult
  $Res call(
      {String artboardName,
      String filePath,
      TemplateItemType type,
      List<TemplateEvent> events,
      List<TemplateTextRun> textRuns});
}

/// @nodoc
class _$TemplateItemCopyWithImpl<$Res, $Val extends TemplateItem>
    implements $TemplateItemCopyWith<$Res> {
  _$TemplateItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artboardName = null,
    Object? filePath = null,
    Object? type = null,
    Object? events = null,
    Object? textRuns = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TemplateItemType,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TemplateEvent>,
      textRuns: null == textRuns
          ? _value.textRuns
          : textRuns // ignore: cast_nullable_to_non_nullable
              as List<TemplateTextRun>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateItemImplCopyWith<$Res>
    implements $TemplateItemCopyWith<$Res> {
  factory _$$TemplateItemImplCopyWith(
          _$TemplateItemImpl value, $Res Function(_$TemplateItemImpl) then) =
      __$$TemplateItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String artboardName,
      String filePath,
      TemplateItemType type,
      List<TemplateEvent> events,
      List<TemplateTextRun> textRuns});
}

/// @nodoc
class __$$TemplateItemImplCopyWithImpl<$Res>
    extends _$TemplateItemCopyWithImpl<$Res, _$TemplateItemImpl>
    implements _$$TemplateItemImplCopyWith<$Res> {
  __$$TemplateItemImplCopyWithImpl(
      _$TemplateItemImpl _value, $Res Function(_$TemplateItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artboardName = null,
    Object? filePath = null,
    Object? type = null,
    Object? events = null,
    Object? textRuns = null,
  }) {
    return _then(_$TemplateItemImpl(
      artboardName: null == artboardName
          ? _value.artboardName
          : artboardName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TemplateItemType,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TemplateEvent>,
      textRuns: null == textRuns
          ? _value._textRuns
          : textRuns // ignore: cast_nullable_to_non_nullable
              as List<TemplateTextRun>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplateItemImpl extends _TemplateItem {
  _$TemplateItemImpl(
      {required this.artboardName,
      required this.filePath,
      required this.type,
      final List<TemplateEvent> events = const [],
      final List<TemplateTextRun> textRuns = const []})
      : _events = events,
        _textRuns = textRuns,
        super._();

  factory _$TemplateItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateItemImplFromJson(json);

  /// The name of the artboard as defined in the .riv file
  @override
  final String artboardName;

  /// The path to the file that contains this artboard
  @override
  final String filePath;

  /// Either view or component
  @override
  final TemplateItemType type;

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

  /// TextRuns are all the text values that can dynamically be replaced in
  /// the current [artboardName]
  final List<TemplateTextRun> _textRuns;

  /// TextRuns are all the text values that can dynamically be replaced in
  /// the current [artboardName]
  @override
  @JsonKey()
  List<TemplateTextRun> get textRuns {
    if (_textRuns is EqualUnmodifiableListView) return _textRuns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textRuns);
  }

  @override
  String toString() {
    return 'TemplateItem(artboardName: $artboardName, filePath: $filePath, type: $type, events: $events, textRuns: $textRuns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateItemImpl &&
            (identical(other.artboardName, artboardName) ||
                other.artboardName == artboardName) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._textRuns, _textRuns));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      artboardName,
      filePath,
      type,
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_textRuns));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateItemImplCopyWith<_$TemplateItemImpl> get copyWith =>
      __$$TemplateItemImplCopyWithImpl<_$TemplateItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateItemImplToJson(
      this,
    );
  }
}

abstract class _TemplateItem extends TemplateItem {
  factory _TemplateItem(
      {required final String artboardName,
      required final String filePath,
      required final TemplateItemType type,
      final List<TemplateEvent> events,
      final List<TemplateTextRun> textRuns}) = _$TemplateItemImpl;
  _TemplateItem._() : super._();

  factory _TemplateItem.fromJson(Map<String, dynamic> json) =
      _$TemplateItemImpl.fromJson;

  @override

  /// The name of the artboard as defined in the .riv file
  String get artboardName;
  @override

  /// The path to the file that contains this artboard
  String get filePath;
  @override

  /// Either view or component
  TemplateItemType get type;
  @override

  /// Events present in the state machine for this arboard
  List<TemplateEvent> get events;
  @override

  /// TextRuns are all the text values that can dynamically be replaced in
  /// the current [artboardName]
  List<TemplateTextRun> get textRuns;
  @override
  @JsonKey(ignore: true)
  _$$TemplateItemImplCopyWith<_$TemplateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
