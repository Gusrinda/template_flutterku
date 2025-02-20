// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_daftar_wilayah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDaftarWilayah _$ResponseDaftarWilayahFromJson(
    Map<String, dynamic> json) {
  return _ResponseDaftarWilayah.fromJson(json);
}

/// @nodoc
mixin _$ResponseDaftarWilayah {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataWilayah>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDaftarWilayahCopyWith<ResponseDaftarWilayah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDaftarWilayahCopyWith<$Res> {
  factory $ResponseDaftarWilayahCopyWith(ResponseDaftarWilayah value,
          $Res Function(ResponseDaftarWilayah) then) =
      _$ResponseDaftarWilayahCopyWithImpl<$Res, ResponseDaftarWilayah>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataWilayah>? data});
}

/// @nodoc
class _$ResponseDaftarWilayahCopyWithImpl<$Res,
        $Val extends ResponseDaftarWilayah>
    implements $ResponseDaftarWilayahCopyWith<$Res> {
  _$ResponseDaftarWilayahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataWilayah>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDaftarWilayahImplCopyWith<$Res>
    implements $ResponseDaftarWilayahCopyWith<$Res> {
  factory _$$ResponseDaftarWilayahImplCopyWith(
          _$ResponseDaftarWilayahImpl value,
          $Res Function(_$ResponseDaftarWilayahImpl) then) =
      __$$ResponseDaftarWilayahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataWilayah>? data});
}

/// @nodoc
class __$$ResponseDaftarWilayahImplCopyWithImpl<$Res>
    extends _$ResponseDaftarWilayahCopyWithImpl<$Res,
        _$ResponseDaftarWilayahImpl>
    implements _$$ResponseDaftarWilayahImplCopyWith<$Res> {
  __$$ResponseDaftarWilayahImplCopyWithImpl(_$ResponseDaftarWilayahImpl _value,
      $Res Function(_$ResponseDaftarWilayahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDaftarWilayahImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataWilayah>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDaftarWilayahImpl implements _ResponseDaftarWilayah {
  const _$ResponseDaftarWilayahImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") final List<DataWilayah>? data})
      : _data = data;

  factory _$ResponseDaftarWilayahImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDaftarWilayahImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  final List<DataWilayah>? _data;
  @override
  @JsonKey(name: "data")
  List<DataWilayah>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseDaftarWilayah(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDaftarWilayahImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDaftarWilayahImplCopyWith<_$ResponseDaftarWilayahImpl>
      get copyWith => __$$ResponseDaftarWilayahImplCopyWithImpl<
          _$ResponseDaftarWilayahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDaftarWilayahImplToJson(
      this,
    );
  }
}

abstract class _ResponseDaftarWilayah implements ResponseDaftarWilayah {
  const factory _ResponseDaftarWilayah(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final List<DataWilayah>? data}) =
      _$ResponseDaftarWilayahImpl;

  factory _ResponseDaftarWilayah.fromJson(Map<String, dynamic> json) =
      _$ResponseDaftarWilayahImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "message")
  dynamic get message;
  @override
  @JsonKey(name: "error")
  dynamic get error;
  @override
  @JsonKey(name: "data")
  List<DataWilayah>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDaftarWilayahImplCopyWith<_$ResponseDaftarWilayahImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataWilayah _$DataWilayahFromJson(Map<String, dynamic> json) {
  return _DataWilayah.fromJson(json);
}

/// @nodoc
mixin _$DataWilayah {
  @JsonKey(name: "Text")
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "Value")
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataWilayahCopyWith<DataWilayah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataWilayahCopyWith<$Res> {
  factory $DataWilayahCopyWith(
          DataWilayah value, $Res Function(DataWilayah) then) =
      _$DataWilayahCopyWithImpl<$Res, DataWilayah>;
  @useResult
  $Res call(
      {@JsonKey(name: "Text") String? text,
      @JsonKey(name: "Value") String? value});
}

/// @nodoc
class _$DataWilayahCopyWithImpl<$Res, $Val extends DataWilayah>
    implements $DataWilayahCopyWith<$Res> {
  _$DataWilayahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataWilayahImplCopyWith<$Res>
    implements $DataWilayahCopyWith<$Res> {
  factory _$$DataWilayahImplCopyWith(
          _$DataWilayahImpl value, $Res Function(_$DataWilayahImpl) then) =
      __$$DataWilayahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Text") String? text,
      @JsonKey(name: "Value") String? value});
}

/// @nodoc
class __$$DataWilayahImplCopyWithImpl<$Res>
    extends _$DataWilayahCopyWithImpl<$Res, _$DataWilayahImpl>
    implements _$$DataWilayahImplCopyWith<$Res> {
  __$$DataWilayahImplCopyWithImpl(
      _$DataWilayahImpl _value, $Res Function(_$DataWilayahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_$DataWilayahImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataWilayahImpl implements _DataWilayah {
  const _$DataWilayahImpl(
      {@JsonKey(name: "Text") this.text, @JsonKey(name: "Value") this.value});

  factory _$DataWilayahImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataWilayahImplFromJson(json);

  @override
  @JsonKey(name: "Text")
  final String? text;
  @override
  @JsonKey(name: "Value")
  final String? value;

  @override
  String toString() {
    return 'DataWilayah(text: $text, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataWilayahImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataWilayahImplCopyWith<_$DataWilayahImpl> get copyWith =>
      __$$DataWilayahImplCopyWithImpl<_$DataWilayahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataWilayahImplToJson(
      this,
    );
  }
}

abstract class _DataWilayah implements DataWilayah {
  const factory _DataWilayah(
      {@JsonKey(name: "Text") final String? text,
      @JsonKey(name: "Value") final String? value}) = _$DataWilayahImpl;

  factory _DataWilayah.fromJson(Map<String, dynamic> json) =
      _$DataWilayahImpl.fromJson;

  @override
  @JsonKey(name: "Text")
  String? get text;
  @override
  @JsonKey(name: "Value")
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$DataWilayahImplCopyWith<_$DataWilayahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
