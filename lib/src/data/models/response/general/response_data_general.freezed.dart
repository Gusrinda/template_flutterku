// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_data_general.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDataGeneral _$ResponseDataGeneralFromJson(Map<String, dynamic> json) {
  return _ResponseDataGeneral.fromJson(json);
}

/// @nodoc
mixin _$ResponseDataGeneral {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataGeneral>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDataGeneralCopyWith<ResponseDataGeneral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataGeneralCopyWith<$Res> {
  factory $ResponseDataGeneralCopyWith(
          ResponseDataGeneral value, $Res Function(ResponseDataGeneral) then) =
      _$ResponseDataGeneralCopyWithImpl<$Res, ResponseDataGeneral>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataGeneral>? data});
}

/// @nodoc
class _$ResponseDataGeneralCopyWithImpl<$Res, $Val extends ResponseDataGeneral>
    implements $ResponseDataGeneralCopyWith<$Res> {
  _$ResponseDataGeneralCopyWithImpl(this._value, this._then);

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
              as List<DataGeneral>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDataGeneralImplCopyWith<$Res>
    implements $ResponseDataGeneralCopyWith<$Res> {
  factory _$$ResponseDataGeneralImplCopyWith(_$ResponseDataGeneralImpl value,
          $Res Function(_$ResponseDataGeneralImpl) then) =
      __$$ResponseDataGeneralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataGeneral>? data});
}

/// @nodoc
class __$$ResponseDataGeneralImplCopyWithImpl<$Res>
    extends _$ResponseDataGeneralCopyWithImpl<$Res, _$ResponseDataGeneralImpl>
    implements _$$ResponseDataGeneralImplCopyWith<$Res> {
  __$$ResponseDataGeneralImplCopyWithImpl(_$ResponseDataGeneralImpl _value,
      $Res Function(_$ResponseDataGeneralImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDataGeneralImpl(
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
              as List<DataGeneral>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDataGeneralImpl implements _ResponseDataGeneral {
  const _$ResponseDataGeneralImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") final List<DataGeneral>? data})
      : _data = data;

  factory _$ResponseDataGeneralImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDataGeneralImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  final List<DataGeneral>? _data;
  @override
  @JsonKey(name: "data")
  List<DataGeneral>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseDataGeneral(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDataGeneralImpl &&
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
  _$$ResponseDataGeneralImplCopyWith<_$ResponseDataGeneralImpl> get copyWith =>
      __$$ResponseDataGeneralImplCopyWithImpl<_$ResponseDataGeneralImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDataGeneralImplToJson(
      this,
    );
  }
}

abstract class _ResponseDataGeneral implements ResponseDataGeneral {
  const factory _ResponseDataGeneral(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final List<DataGeneral>? data}) =
      _$ResponseDataGeneralImpl;

  factory _ResponseDataGeneral.fromJson(Map<String, dynamic> json) =
      _$ResponseDataGeneralImpl.fromJson;

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
  List<DataGeneral>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDataGeneralImplCopyWith<_$ResponseDataGeneralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataGeneral _$DataGeneralFromJson(Map<String, dynamic> json) {
  return _DataGeneral.fromJson(json);
}

/// @nodoc
mixin _$DataGeneral {
  @JsonKey(name: "Text")
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "Value")
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataGeneralCopyWith<DataGeneral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataGeneralCopyWith<$Res> {
  factory $DataGeneralCopyWith(
          DataGeneral value, $Res Function(DataGeneral) then) =
      _$DataGeneralCopyWithImpl<$Res, DataGeneral>;
  @useResult
  $Res call(
      {@JsonKey(name: "Text") String? text,
      @JsonKey(name: "Value") String? value});
}

/// @nodoc
class _$DataGeneralCopyWithImpl<$Res, $Val extends DataGeneral>
    implements $DataGeneralCopyWith<$Res> {
  _$DataGeneralCopyWithImpl(this._value, this._then);

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
abstract class _$$DataGeneralImplCopyWith<$Res>
    implements $DataGeneralCopyWith<$Res> {
  factory _$$DataGeneralImplCopyWith(
          _$DataGeneralImpl value, $Res Function(_$DataGeneralImpl) then) =
      __$$DataGeneralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Text") String? text,
      @JsonKey(name: "Value") String? value});
}

/// @nodoc
class __$$DataGeneralImplCopyWithImpl<$Res>
    extends _$DataGeneralCopyWithImpl<$Res, _$DataGeneralImpl>
    implements _$$DataGeneralImplCopyWith<$Res> {
  __$$DataGeneralImplCopyWithImpl(
      _$DataGeneralImpl _value, $Res Function(_$DataGeneralImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_$DataGeneralImpl(
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
class _$DataGeneralImpl implements _DataGeneral {
  const _$DataGeneralImpl(
      {@JsonKey(name: "Text") this.text, @JsonKey(name: "Value") this.value});

  factory _$DataGeneralImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataGeneralImplFromJson(json);

  @override
  @JsonKey(name: "Text")
  final String? text;
  @override
  @JsonKey(name: "Value")
  final String? value;

  @override
  String toString() {
    return 'DataGeneral(text: $text, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataGeneralImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataGeneralImplCopyWith<_$DataGeneralImpl> get copyWith =>
      __$$DataGeneralImplCopyWithImpl<_$DataGeneralImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataGeneralImplToJson(
      this,
    );
  }
}

abstract class _DataGeneral implements DataGeneral {
  const factory _DataGeneral(
      {@JsonKey(name: "Text") final String? text,
      @JsonKey(name: "Value") final String? value}) = _$DataGeneralImpl;

  factory _DataGeneral.fromJson(Map<String, dynamic> json) =
      _$DataGeneralImpl.fromJson;

  @override
  @JsonKey(name: "Text")
  String? get text;
  @override
  @JsonKey(name: "Value")
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$DataGeneralImplCopyWith<_$DataGeneralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BulkDataGeneral _$BulkDataGeneralFromJson(Map<String, dynamic> json) {
  return _BulkDataGeneral.fromJson(json);
}

/// @nodoc
mixin _$BulkDataGeneral {
  @JsonKey(name: "data_prefix")
  List<DataGeneral>? get dataPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "data_group")
  List<DataGeneral>? get dataGroupWilayah => throw _privateConstructorUsedError;
  @JsonKey(name: "data_wilayah_penagihan")
  List<DataGeneral>? get dataWilayahPenagihan =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "data_jt")
  List<DataGeneral>? get dataJatuhTempo => throw _privateConstructorUsedError;
  @JsonKey(name: "data_country")
  List<DataGeneral>? get dataCountry => throw _privateConstructorUsedError;
  @JsonKey(name: "data_provinsi")
  List<DataGeneral>? get dataProvinsi => throw _privateConstructorUsedError;
  @JsonKey(name: "data_city")
  List<DataGeneral>? get dataCity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BulkDataGeneralCopyWith<BulkDataGeneral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulkDataGeneralCopyWith<$Res> {
  factory $BulkDataGeneralCopyWith(
          BulkDataGeneral value, $Res Function(BulkDataGeneral) then) =
      _$BulkDataGeneralCopyWithImpl<$Res, BulkDataGeneral>;
  @useResult
  $Res call(
      {@JsonKey(name: "data_prefix") List<DataGeneral>? dataPrefix,
      @JsonKey(name: "data_group") List<DataGeneral>? dataGroupWilayah,
      @JsonKey(name: "data_wilayah_penagihan")
      List<DataGeneral>? dataWilayahPenagihan,
      @JsonKey(name: "data_jt") List<DataGeneral>? dataJatuhTempo,
      @JsonKey(name: "data_country") List<DataGeneral>? dataCountry,
      @JsonKey(name: "data_provinsi") List<DataGeneral>? dataProvinsi,
      @JsonKey(name: "data_city") List<DataGeneral>? dataCity});
}

/// @nodoc
class _$BulkDataGeneralCopyWithImpl<$Res, $Val extends BulkDataGeneral>
    implements $BulkDataGeneralCopyWith<$Res> {
  _$BulkDataGeneralCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataPrefix = freezed,
    Object? dataGroupWilayah = freezed,
    Object? dataWilayahPenagihan = freezed,
    Object? dataJatuhTempo = freezed,
    Object? dataCountry = freezed,
    Object? dataProvinsi = freezed,
    Object? dataCity = freezed,
  }) {
    return _then(_value.copyWith(
      dataPrefix: freezed == dataPrefix
          ? _value.dataPrefix
          : dataPrefix // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      dataGroupWilayah: freezed == dataGroupWilayah
          ? _value.dataGroupWilayah
          : dataGroupWilayah // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      dataWilayahPenagihan: freezed == dataWilayahPenagihan
          ? _value.dataWilayahPenagihan
          : dataWilayahPenagihan // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      dataJatuhTempo: freezed == dataJatuhTempo
          ? _value.dataJatuhTempo
          : dataJatuhTempo // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      dataCountry: freezed == dataCountry
          ? _value.dataCountry
          : dataCountry // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      dataProvinsi: freezed == dataProvinsi
          ? _value.dataProvinsi
          : dataProvinsi // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      dataCity: freezed == dataCity
          ? _value.dataCity
          : dataCity // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BulkDataGeneralImplCopyWith<$Res>
    implements $BulkDataGeneralCopyWith<$Res> {
  factory _$$BulkDataGeneralImplCopyWith(_$BulkDataGeneralImpl value,
          $Res Function(_$BulkDataGeneralImpl) then) =
      __$$BulkDataGeneralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data_prefix") List<DataGeneral>? dataPrefix,
      @JsonKey(name: "data_group") List<DataGeneral>? dataGroupWilayah,
      @JsonKey(name: "data_wilayah_penagihan")
      List<DataGeneral>? dataWilayahPenagihan,
      @JsonKey(name: "data_jt") List<DataGeneral>? dataJatuhTempo,
      @JsonKey(name: "data_country") List<DataGeneral>? dataCountry,
      @JsonKey(name: "data_provinsi") List<DataGeneral>? dataProvinsi,
      @JsonKey(name: "data_city") List<DataGeneral>? dataCity});
}

/// @nodoc
class __$$BulkDataGeneralImplCopyWithImpl<$Res>
    extends _$BulkDataGeneralCopyWithImpl<$Res, _$BulkDataGeneralImpl>
    implements _$$BulkDataGeneralImplCopyWith<$Res> {
  __$$BulkDataGeneralImplCopyWithImpl(
      _$BulkDataGeneralImpl _value, $Res Function(_$BulkDataGeneralImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataPrefix = freezed,
    Object? dataGroupWilayah = freezed,
    Object? dataWilayahPenagihan = freezed,
    Object? dataJatuhTempo = freezed,
    Object? dataCountry = freezed,
    Object? dataProvinsi = freezed,
    Object? dataCity = freezed,
  }) {
    return _then(_$BulkDataGeneralImpl(
      dataPrefix: freezed == dataPrefix
          ? _value._dataPrefix
          : dataPrefix // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      dataGroupWilayah: freezed == dataGroupWilayah
          ? _value._dataGroupWilayah
          : dataGroupWilayah // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      dataWilayahPenagihan: freezed == dataWilayahPenagihan
          ? _value._dataWilayahPenagihan
          : dataWilayahPenagihan // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      dataJatuhTempo: freezed == dataJatuhTempo
          ? _value._dataJatuhTempo
          : dataJatuhTempo // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      dataCountry: freezed == dataCountry
          ? _value._dataCountry
          : dataCountry // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      dataProvinsi: freezed == dataProvinsi
          ? _value._dataProvinsi
          : dataProvinsi // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      dataCity: freezed == dataCity
          ? _value._dataCity
          : dataCity // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BulkDataGeneralImpl implements _BulkDataGeneral {
  const _$BulkDataGeneralImpl(
      {@JsonKey(name: "data_prefix") final List<DataGeneral>? dataPrefix,
      @JsonKey(name: "data_group") final List<DataGeneral>? dataGroupWilayah,
      @JsonKey(name: "data_wilayah_penagihan")
      final List<DataGeneral>? dataWilayahPenagihan,
      @JsonKey(name: "data_jt") final List<DataGeneral>? dataJatuhTempo,
      @JsonKey(name: "data_country") final List<DataGeneral>? dataCountry,
      @JsonKey(name: "data_provinsi") final List<DataGeneral>? dataProvinsi,
      @JsonKey(name: "data_city") final List<DataGeneral>? dataCity})
      : _dataPrefix = dataPrefix,
        _dataGroupWilayah = dataGroupWilayah,
        _dataWilayahPenagihan = dataWilayahPenagihan,
        _dataJatuhTempo = dataJatuhTempo,
        _dataCountry = dataCountry,
        _dataProvinsi = dataProvinsi,
        _dataCity = dataCity;

  factory _$BulkDataGeneralImpl.fromJson(Map<String, dynamic> json) =>
      _$$BulkDataGeneralImplFromJson(json);

  final List<DataGeneral>? _dataPrefix;
  @override
  @JsonKey(name: "data_prefix")
  List<DataGeneral>? get dataPrefix {
    final value = _dataPrefix;
    if (value == null) return null;
    if (_dataPrefix is EqualUnmodifiableListView) return _dataPrefix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DataGeneral>? _dataGroupWilayah;
  @override
  @JsonKey(name: "data_group")
  List<DataGeneral>? get dataGroupWilayah {
    final value = _dataGroupWilayah;
    if (value == null) return null;
    if (_dataGroupWilayah is EqualUnmodifiableListView)
      return _dataGroupWilayah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DataGeneral>? _dataWilayahPenagihan;
  @override
  @JsonKey(name: "data_wilayah_penagihan")
  List<DataGeneral>? get dataWilayahPenagihan {
    final value = _dataWilayahPenagihan;
    if (value == null) return null;
    if (_dataWilayahPenagihan is EqualUnmodifiableListView)
      return _dataWilayahPenagihan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DataGeneral>? _dataJatuhTempo;
  @override
  @JsonKey(name: "data_jt")
  List<DataGeneral>? get dataJatuhTempo {
    final value = _dataJatuhTempo;
    if (value == null) return null;
    if (_dataJatuhTempo is EqualUnmodifiableListView) return _dataJatuhTempo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DataGeneral>? _dataCountry;
  @override
  @JsonKey(name: "data_country")
  List<DataGeneral>? get dataCountry {
    final value = _dataCountry;
    if (value == null) return null;
    if (_dataCountry is EqualUnmodifiableListView) return _dataCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DataGeneral>? _dataProvinsi;
  @override
  @JsonKey(name: "data_provinsi")
  List<DataGeneral>? get dataProvinsi {
    final value = _dataProvinsi;
    if (value == null) return null;
    if (_dataProvinsi is EqualUnmodifiableListView) return _dataProvinsi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DataGeneral>? _dataCity;
  @override
  @JsonKey(name: "data_city")
  List<DataGeneral>? get dataCity {
    final value = _dataCity;
    if (value == null) return null;
    if (_dataCity is EqualUnmodifiableListView) return _dataCity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BulkDataGeneral(dataPrefix: $dataPrefix, dataGroupWilayah: $dataGroupWilayah, dataWilayahPenagihan: $dataWilayahPenagihan, dataJatuhTempo: $dataJatuhTempo, dataCountry: $dataCountry, dataProvinsi: $dataProvinsi, dataCity: $dataCity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkDataGeneralImpl &&
            const DeepCollectionEquality()
                .equals(other._dataPrefix, _dataPrefix) &&
            const DeepCollectionEquality()
                .equals(other._dataGroupWilayah, _dataGroupWilayah) &&
            const DeepCollectionEquality()
                .equals(other._dataWilayahPenagihan, _dataWilayahPenagihan) &&
            const DeepCollectionEquality()
                .equals(other._dataJatuhTempo, _dataJatuhTempo) &&
            const DeepCollectionEquality()
                .equals(other._dataCountry, _dataCountry) &&
            const DeepCollectionEquality()
                .equals(other._dataProvinsi, _dataProvinsi) &&
            const DeepCollectionEquality().equals(other._dataCity, _dataCity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dataPrefix),
      const DeepCollectionEquality().hash(_dataGroupWilayah),
      const DeepCollectionEquality().hash(_dataWilayahPenagihan),
      const DeepCollectionEquality().hash(_dataJatuhTempo),
      const DeepCollectionEquality().hash(_dataCountry),
      const DeepCollectionEquality().hash(_dataProvinsi),
      const DeepCollectionEquality().hash(_dataCity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkDataGeneralImplCopyWith<_$BulkDataGeneralImpl> get copyWith =>
      __$$BulkDataGeneralImplCopyWithImpl<_$BulkDataGeneralImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BulkDataGeneralImplToJson(
      this,
    );
  }
}

abstract class _BulkDataGeneral implements BulkDataGeneral {
  const factory _BulkDataGeneral(
      {@JsonKey(name: "data_prefix") final List<DataGeneral>? dataPrefix,
      @JsonKey(name: "data_group") final List<DataGeneral>? dataGroupWilayah,
      @JsonKey(name: "data_wilayah_penagihan")
      final List<DataGeneral>? dataWilayahPenagihan,
      @JsonKey(name: "data_jt") final List<DataGeneral>? dataJatuhTempo,
      @JsonKey(name: "data_country") final List<DataGeneral>? dataCountry,
      @JsonKey(name: "data_provinsi") final List<DataGeneral>? dataProvinsi,
      @JsonKey(name: "data_city")
      final List<DataGeneral>? dataCity}) = _$BulkDataGeneralImpl;

  factory _BulkDataGeneral.fromJson(Map<String, dynamic> json) =
      _$BulkDataGeneralImpl.fromJson;

  @override
  @JsonKey(name: "data_prefix")
  List<DataGeneral>? get dataPrefix;
  @override
  @JsonKey(name: "data_group")
  List<DataGeneral>? get dataGroupWilayah;
  @override
  @JsonKey(name: "data_wilayah_penagihan")
  List<DataGeneral>? get dataWilayahPenagihan;
  @override
  @JsonKey(name: "data_jt")
  List<DataGeneral>? get dataJatuhTempo;
  @override
  @JsonKey(name: "data_country")
  List<DataGeneral>? get dataCountry;
  @override
  @JsonKey(name: "data_provinsi")
  List<DataGeneral>? get dataProvinsi;
  @override
  @JsonKey(name: "data_city")
  List<DataGeneral>? get dataCity;
  @override
  @JsonKey(ignore: true)
  _$$BulkDataGeneralImplCopyWith<_$BulkDataGeneralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
