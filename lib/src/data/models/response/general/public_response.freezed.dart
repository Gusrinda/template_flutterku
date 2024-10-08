// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PublicResponse _$PublicResponseFromJson(Map<String, dynamic> json) {
  return _PublicResponse.fromJson(json);
}

/// @nodoc
mixin _$PublicResponse {
  String? get message => throw _privateConstructorUsedError;
  List<dynamic>? get success => throw _privateConstructorUsedError;
  List<dynamic>? get errors => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'processed_time')
  double? get processedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicResponseCopyWith<PublicResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicResponseCopyWith<$Res> {
  factory $PublicResponseCopyWith(
          PublicResponse value, $Res Function(PublicResponse) then) =
      _$PublicResponseCopyWithImpl<$Res, PublicResponse>;
  @useResult
  $Res call(
      {String? message,
      List<dynamic>? success,
      List<dynamic>? errors,
      dynamic id,
      @JsonKey(name: 'processed_time') double? processedTime});
}

/// @nodoc
class _$PublicResponseCopyWithImpl<$Res, $Val extends PublicResponse>
    implements $PublicResponseCopyWith<$Res> {
  _$PublicResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? success = freezed,
    Object? errors = freezed,
    Object? id = freezed,
    Object? processedTime = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublicResponseImplCopyWith<$Res>
    implements $PublicResponseCopyWith<$Res> {
  factory _$$PublicResponseImplCopyWith(_$PublicResponseImpl value,
          $Res Function(_$PublicResponseImpl) then) =
      __$$PublicResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      List<dynamic>? success,
      List<dynamic>? errors,
      dynamic id,
      @JsonKey(name: 'processed_time') double? processedTime});
}

/// @nodoc
class __$$PublicResponseImplCopyWithImpl<$Res>
    extends _$PublicResponseCopyWithImpl<$Res, _$PublicResponseImpl>
    implements _$$PublicResponseImplCopyWith<$Res> {
  __$$PublicResponseImplCopyWithImpl(
      _$PublicResponseImpl _value, $Res Function(_$PublicResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? success = freezed,
    Object? errors = freezed,
    Object? id = freezed,
    Object? processedTime = freezed,
  }) {
    return _then(_$PublicResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value._success
          : success // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicResponseImpl implements _PublicResponse {
  _$PublicResponseImpl(
      {this.message,
      final List<dynamic>? success,
      final List<dynamic>? errors,
      this.id,
      @JsonKey(name: 'processed_time') this.processedTime})
      : _success = success,
        _errors = errors;

  factory _$PublicResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicResponseImplFromJson(json);

  @override
  final String? message;
  final List<dynamic>? _success;
  @override
  List<dynamic>? get success {
    final value = _success;
    if (value == null) return null;
    if (_success is EqualUnmodifiableListView) return _success;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _errors;
  @override
  List<dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic id;
  @override
  @JsonKey(name: 'processed_time')
  final double? processedTime;

  @override
  String toString() {
    return 'PublicResponse(message: $message, success: $success, errors: $errors, id: $id, processedTime: $processedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._success, _success) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.processedTime, processedTime) ||
                other.processedTime == processedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_success),
      const DeepCollectionEquality().hash(_errors),
      const DeepCollectionEquality().hash(id),
      processedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicResponseImplCopyWith<_$PublicResponseImpl> get copyWith =>
      __$$PublicResponseImplCopyWithImpl<_$PublicResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicResponseImplToJson(
      this,
    );
  }
}

abstract class _PublicResponse implements PublicResponse {
  factory _PublicResponse(
          {final String? message,
          final List<dynamic>? success,
          final List<dynamic>? errors,
          final dynamic id,
          @JsonKey(name: 'processed_time') final double? processedTime}) =
      _$PublicResponseImpl;

  factory _PublicResponse.fromJson(Map<String, dynamic> json) =
      _$PublicResponseImpl.fromJson;

  @override
  String? get message;
  @override
  List<dynamic>? get success;
  @override
  List<dynamic>? get errors;
  @override
  dynamic get id;
  @override
  @JsonKey(name: 'processed_time')
  double? get processedTime;
  @override
  @JsonKey(ignore: true)
  _$$PublicResponseImplCopyWith<_$PublicResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
