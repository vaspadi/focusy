// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grammar_tests_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GrammarTestsRequest _$GrammarTestsRequestFromJson(Map<String, dynamic> json) {
  return _GrammarTestsRequest.fromJson(json);
}

/// @nodoc
mixin _$GrammarTestsRequest {
  int get count => throw _privateConstructorUsedError;
  GrammarTestMode get mode => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true)
  GrammarTestType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrammarTestsRequestCopyWith<GrammarTestsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrammarTestsRequestCopyWith<$Res> {
  factory $GrammarTestsRequestCopyWith(
          GrammarTestsRequest value, $Res Function(GrammarTestsRequest) then) =
      _$GrammarTestsRequestCopyWithImpl<$Res, GrammarTestsRequest>;
  @useResult
  $Res call(
      {int count,
      GrammarTestMode mode,
      @JsonKey(disallowNullValue: true) GrammarTestType? type});
}

/// @nodoc
class _$GrammarTestsRequestCopyWithImpl<$Res, $Val extends GrammarTestsRequest>
    implements $GrammarTestsRequestCopyWith<$Res> {
  _$GrammarTestsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? mode = null,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as GrammarTestMode,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GrammarTestType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GrammarTestsRequestImplCopyWith<$Res>
    implements $GrammarTestsRequestCopyWith<$Res> {
  factory _$$GrammarTestsRequestImplCopyWith(_$GrammarTestsRequestImpl value,
          $Res Function(_$GrammarTestsRequestImpl) then) =
      __$$GrammarTestsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      GrammarTestMode mode,
      @JsonKey(disallowNullValue: true) GrammarTestType? type});
}

/// @nodoc
class __$$GrammarTestsRequestImplCopyWithImpl<$Res>
    extends _$GrammarTestsRequestCopyWithImpl<$Res, _$GrammarTestsRequestImpl>
    implements _$$GrammarTestsRequestImplCopyWith<$Res> {
  __$$GrammarTestsRequestImplCopyWithImpl(_$GrammarTestsRequestImpl _value,
      $Res Function(_$GrammarTestsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? mode = null,
    Object? type = freezed,
  }) {
    return _then(_$GrammarTestsRequestImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as GrammarTestMode,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GrammarTestType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrammarTestsRequestImpl implements _GrammarTestsRequest {
  const _$GrammarTestsRequestImpl(
      {this.count = 50,
      this.mode = GrammarTestMode.mixed,
      @JsonKey(disallowNullValue: true) this.type})
      : assert(mode == GrammarTestMode.mixed ||
            (mode == GrammarTestMode.single && type != null));

  factory _$GrammarTestsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrammarTestsRequestImplFromJson(json);

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final GrammarTestMode mode;
  @override
  @JsonKey(disallowNullValue: true)
  final GrammarTestType? type;

  @override
  String toString() {
    return 'GrammarTestsRequest(count: $count, mode: $mode, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrammarTestsRequestImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, mode, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GrammarTestsRequestImplCopyWith<_$GrammarTestsRequestImpl> get copyWith =>
      __$$GrammarTestsRequestImplCopyWithImpl<_$GrammarTestsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrammarTestsRequestImplToJson(
      this,
    );
  }
}

abstract class _GrammarTestsRequest implements GrammarTestsRequest {
  const factory _GrammarTestsRequest(
          {final int count,
          final GrammarTestMode mode,
          @JsonKey(disallowNullValue: true) final GrammarTestType? type}) =
      _$GrammarTestsRequestImpl;

  factory _GrammarTestsRequest.fromJson(Map<String, dynamic> json) =
      _$GrammarTestsRequestImpl.fromJson;

  @override
  int get count;
  @override
  GrammarTestMode get mode;
  @override
  @JsonKey(disallowNullValue: true)
  GrammarTestType? get type;
  @override
  @JsonKey(ignore: true)
  _$$GrammarTestsRequestImplCopyWith<_$GrammarTestsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
