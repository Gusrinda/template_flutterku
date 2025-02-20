// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_daftar_ppn.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDaftarPpn _$ResponseDaftarPpnFromJson(Map<String, dynamic> json) {
  return _ResponseDaftarPpn.fromJson(json);
}

/// @nodoc
mixin _$ResponseDaftarPpn {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataPPN>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDaftarPpnCopyWith<ResponseDaftarPpn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDaftarPpnCopyWith<$Res> {
  factory $ResponseDaftarPpnCopyWith(
          ResponseDaftarPpn value, $Res Function(ResponseDaftarPpn) then) =
      _$ResponseDaftarPpnCopyWithImpl<$Res, ResponseDaftarPpn>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataPPN>? data});
}

/// @nodoc
class _$ResponseDaftarPpnCopyWithImpl<$Res, $Val extends ResponseDaftarPpn>
    implements $ResponseDaftarPpnCopyWith<$Res> {
  _$ResponseDaftarPpnCopyWithImpl(this._value, this._then);

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
              as List<DataPPN>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDaftarPpnImplCopyWith<$Res>
    implements $ResponseDaftarPpnCopyWith<$Res> {
  factory _$$ResponseDaftarPpnImplCopyWith(_$ResponseDaftarPpnImpl value,
          $Res Function(_$ResponseDaftarPpnImpl) then) =
      __$$ResponseDaftarPpnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataPPN>? data});
}

/// @nodoc
class __$$ResponseDaftarPpnImplCopyWithImpl<$Res>
    extends _$ResponseDaftarPpnCopyWithImpl<$Res, _$ResponseDaftarPpnImpl>
    implements _$$ResponseDaftarPpnImplCopyWith<$Res> {
  __$$ResponseDaftarPpnImplCopyWithImpl(_$ResponseDaftarPpnImpl _value,
      $Res Function(_$ResponseDaftarPpnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDaftarPpnImpl(
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
              as List<DataPPN>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDaftarPpnImpl implements _ResponseDaftarPpn {
  const _$ResponseDaftarPpnImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") final List<DataPPN>? data})
      : _data = data;

  factory _$ResponseDaftarPpnImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDaftarPpnImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  final List<DataPPN>? _data;
  @override
  @JsonKey(name: "data")
  List<DataPPN>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseDaftarPpn(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDaftarPpnImpl &&
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
  _$$ResponseDaftarPpnImplCopyWith<_$ResponseDaftarPpnImpl> get copyWith =>
      __$$ResponseDaftarPpnImplCopyWithImpl<_$ResponseDaftarPpnImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDaftarPpnImplToJson(
      this,
    );
  }
}

abstract class _ResponseDaftarPpn implements ResponseDaftarPpn {
  const factory _ResponseDaftarPpn(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final List<DataPPN>? data}) =
      _$ResponseDaftarPpnImpl;

  factory _ResponseDaftarPpn.fromJson(Map<String, dynamic> json) =
      _$ResponseDaftarPpnImpl.fromJson;

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
  List<DataPPN>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDaftarPpnImplCopyWith<_$ResponseDaftarPpnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataPPN _$DataPPNFromJson(Map<String, dynamic> json) {
  return _DataPPN.fromJson(json);
}

/// @nodoc
mixin _$DataPPN {
  @JsonKey(name: "value_pct")
  int? get valuePct => throw _privateConstructorUsedError;
  @JsonKey(name: "plus_min")
  int? get plusMin => throw _privateConstructorUsedError;
  @JsonKey(name: "Text")
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "Value")
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPPNCopyWith<DataPPN> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPPNCopyWith<$Res> {
  factory $DataPPNCopyWith(DataPPN value, $Res Function(DataPPN) then) =
      _$DataPPNCopyWithImpl<$Res, DataPPN>;
  @useResult
  $Res call(
      {@JsonKey(name: "value_pct") int? valuePct,
      @JsonKey(name: "plus_min") int? plusMin,
      @JsonKey(name: "Text") String? text,
      @JsonKey(name: "Value") String? value});
}

/// @nodoc
class _$DataPPNCopyWithImpl<$Res, $Val extends DataPPN>
    implements $DataPPNCopyWith<$Res> {
  _$DataPPNCopyWithImpl(this._value, this._then);

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
              as int?,
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
abstract class _$$DataPPNImplCopyWith<$Res> implements $DataPPNCopyWith<$Res> {
  factory _$$DataPPNImplCopyWith(
          _$DataPPNImpl value, $Res Function(_$DataPPNImpl) then) =
      __$$DataPPNImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "value_pct") int? valuePct,
      @JsonKey(name: "plus_min") int? plusMin,
      @JsonKey(name: "Text") String? text,
      @JsonKey(name: "Value") String? value});
}

/// @nodoc
class __$$DataPPNImplCopyWithImpl<$Res>
    extends _$DataPPNCopyWithImpl<$Res, _$DataPPNImpl>
    implements _$$DataPPNImplCopyWith<$Res> {
  __$$DataPPNImplCopyWithImpl(
      _$DataPPNImpl _value, $Res Function(_$DataPPNImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valuePct = freezed,
    Object? plusMin = freezed,
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_$DataPPNImpl(
      valuePct: freezed == valuePct
          ? _value.valuePct
          : valuePct // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$DataPPNImpl implements _DataPPN {
  const _$DataPPNImpl(
      {@JsonKey(name: "value_pct") this.valuePct,
      @JsonKey(name: "plus_min") this.plusMin,
      @JsonKey(name: "Text") this.text,
      @JsonKey(name: "Value") this.value});

  factory _$DataPPNImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataPPNImplFromJson(json);

  @override
  @JsonKey(name: "value_pct")
  final int? valuePct;
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
    return 'DataPPN(valuePct: $valuePct, plusMin: $plusMin, text: $text, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataPPNImpl &&
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
  _$$DataPPNImplCopyWith<_$DataPPNImpl> get copyWith =>
      __$$DataPPNImplCopyWithImpl<_$DataPPNImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataPPNImplToJson(
      this,
    );
  }
}

abstract class _DataPPN implements DataPPN {
  const factory _DataPPN(
      {@JsonKey(name: "value_pct") final int? valuePct,
      @JsonKey(name: "plus_min") final int? plusMin,
      @JsonKey(name: "Text") final String? text,
      @JsonKey(name: "Value") final String? value}) = _$DataPPNImpl;

  factory _DataPPN.fromJson(Map<String, dynamic> json) = _$DataPPNImpl.fromJson;

  @override
  @JsonKey(name: "value_pct")
  int? get valuePct;
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
  _$$DataPPNImplCopyWith<_$DataPPNImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
