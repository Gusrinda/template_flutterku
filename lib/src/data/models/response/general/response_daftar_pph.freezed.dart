// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_daftar_pph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDaftarPph _$ResponseDaftarPphFromJson(Map<String, dynamic> json) {
  return _ResponseDaftarPph.fromJson(json);
}

/// @nodoc
mixin _$ResponseDaftarPph {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataPPH>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDaftarPphCopyWith<ResponseDaftarPph> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDaftarPphCopyWith<$Res> {
  factory $ResponseDaftarPphCopyWith(
          ResponseDaftarPph value, $Res Function(ResponseDaftarPph) then) =
      _$ResponseDaftarPphCopyWithImpl<$Res, ResponseDaftarPph>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataPPH>? data});
}

/// @nodoc
class _$ResponseDaftarPphCopyWithImpl<$Res, $Val extends ResponseDaftarPph>
    implements $ResponseDaftarPphCopyWith<$Res> {
  _$ResponseDaftarPphCopyWithImpl(this._value, this._then);

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
              as List<DataPPH>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDaftarPphImplCopyWith<$Res>
    implements $ResponseDaftarPphCopyWith<$Res> {
  factory _$$ResponseDaftarPphImplCopyWith(_$ResponseDaftarPphImpl value,
          $Res Function(_$ResponseDaftarPphImpl) then) =
      __$$ResponseDaftarPphImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataPPH>? data});
}

/// @nodoc
class __$$ResponseDaftarPphImplCopyWithImpl<$Res>
    extends _$ResponseDaftarPphCopyWithImpl<$Res, _$ResponseDaftarPphImpl>
    implements _$$ResponseDaftarPphImplCopyWith<$Res> {
  __$$ResponseDaftarPphImplCopyWithImpl(_$ResponseDaftarPphImpl _value,
      $Res Function(_$ResponseDaftarPphImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDaftarPphImpl(
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
              as List<DataPPH>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDaftarPphImpl implements _ResponseDaftarPph {
  const _$ResponseDaftarPphImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") final List<DataPPH>? data})
      : _data = data;

  factory _$ResponseDaftarPphImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDaftarPphImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  final List<DataPPH>? _data;
  @override
  @JsonKey(name: "data")
  List<DataPPH>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseDaftarPph(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDaftarPphImpl &&
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
  _$$ResponseDaftarPphImplCopyWith<_$ResponseDaftarPphImpl> get copyWith =>
      __$$ResponseDaftarPphImplCopyWithImpl<_$ResponseDaftarPphImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDaftarPphImplToJson(
      this,
    );
  }
}

abstract class _ResponseDaftarPph implements ResponseDaftarPph {
  const factory _ResponseDaftarPph(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final List<DataPPH>? data}) =
      _$ResponseDaftarPphImpl;

  factory _ResponseDaftarPph.fromJson(Map<String, dynamic> json) =
      _$ResponseDaftarPphImpl.fromJson;

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
  List<DataPPH>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDaftarPphImplCopyWith<_$ResponseDaftarPphImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataPPH _$DataPPHFromJson(Map<String, dynamic> json) {
  return _DataPPH.fromJson(json);
}

/// @nodoc
mixin _$DataPPH {
  @JsonKey(name: "value_pct")
  double? get valuePct => throw _privateConstructorUsedError;
  @JsonKey(name: "plus_min")
  int? get plusMin => throw _privateConstructorUsedError;
  @JsonKey(name: "Text")
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "Value")
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPPHCopyWith<DataPPH> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPPHCopyWith<$Res> {
  factory $DataPPHCopyWith(DataPPH value, $Res Function(DataPPH) then) =
      _$DataPPHCopyWithImpl<$Res, DataPPH>;
  @useResult
  $Res call(
      {@JsonKey(name: "value_pct") double? valuePct,
      @JsonKey(name: "plus_min") int? plusMin,
      @JsonKey(name: "Text") String? text,
      @JsonKey(name: "Value") String? value});
}

/// @nodoc
class _$DataPPHCopyWithImpl<$Res, $Val extends DataPPH>
    implements $DataPPHCopyWith<$Res> {
  _$DataPPHCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valuePct = freezed,
    Object? plusMin = freezed,
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      valuePct: freezed == valuePct
          ? _value.valuePct
          : valuePct // ignore: cast_nullable_to_non_nullable
              as double?,
      plusMin: freezed == plusMin
          ? _value.plusMin
          : plusMin // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$DataPPHImplCopyWith<$Res> implements $DataPPHCopyWith<$Res> {
  factory _$$DataPPHImplCopyWith(
          _$DataPPHImpl value, $Res Function(_$DataPPHImpl) then) =
      __$$DataPPHImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "value_pct") double? valuePct,
      @JsonKey(name: "plus_min") int? plusMin,
      @JsonKey(name: "Text") String? text,
      @JsonKey(name: "Value") String? value});
}

/// @nodoc
class __$$DataPPHImplCopyWithImpl<$Res>
    extends _$DataPPHCopyWithImpl<$Res, _$DataPPHImpl>
    implements _$$DataPPHImplCopyWith<$Res> {
  __$$DataPPHImplCopyWithImpl(
      _$DataPPHImpl _value, $Res Function(_$DataPPHImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valuePct = freezed,
    Object? plusMin = freezed,
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_$DataPPHImpl(
      valuePct: freezed == valuePct
          ? _value.valuePct
          : valuePct // ignore: cast_nullable_to_non_nullable
              as double?,
      plusMin: freezed == plusMin
          ? _value.plusMin
          : plusMin // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$DataPPHImpl implements _DataPPH {
  const _$DataPPHImpl(
      {@JsonKey(name: "value_pct") this.valuePct,
      @JsonKey(name: "plus_min") this.plusMin,
      @JsonKey(name: "Text") this.text,
      @JsonKey(name: "Value") this.value});

  factory _$DataPPHImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataPPHImplFromJson(json);

  @override
  @JsonKey(name: "value_pct")
  final double? valuePct;
  @override
  @JsonKey(name: "plus_min")
  final int? plusMin;
  @override
  @JsonKey(name: "Text")
  final String? text;
  @override
  @JsonKey(name: "Value")
  final String? value;

  @override
  String toString() {
    return 'DataPPH(valuePct: $valuePct, plusMin: $plusMin, text: $text, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataPPHImpl &&
            (identical(other.valuePct, valuePct) ||
                other.valuePct == valuePct) &&
            (identical(other.plusMin, plusMin) || other.plusMin == plusMin) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, valuePct, plusMin, text, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPPHImplCopyWith<_$DataPPHImpl> get copyWith =>
      __$$DataPPHImplCopyWithImpl<_$DataPPHImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataPPHImplToJson(
      this,
    );
  }
}

abstract class _DataPPH implements DataPPH {
  const factory _DataPPH(
      {@JsonKey(name: "value_pct") final double? valuePct,
      @JsonKey(name: "plus_min") final int? plusMin,
      @JsonKey(name: "Text") final String? text,
      @JsonKey(name: "Value") final String? value}) = _$DataPPHImpl;

  factory _DataPPH.fromJson(Map<String, dynamic> json) = _$DataPPHImpl.fromJson;

  @override
  @JsonKey(name: "value_pct")
  double? get valuePct;
  @override
  @JsonKey(name: "plus_min")
  int? get plusMin;
  @override
  @JsonKey(name: "Text")
  String? get text;
  @override
  @JsonKey(name: "Value")
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$DataPPHImplCopyWith<_$DataPPHImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
