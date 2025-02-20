// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_customer_visiting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCustomerVisiting _$ResponseCustomerVisitingFromJson(
    Map<String, dynamic> json) {
  return _ResponseCustomerVisiting.fromJson(json);
}

/// @nodoc
mixin _$ResponseCustomerVisiting {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataCustomerVisiting>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCustomerVisitingCopyWith<ResponseCustomerVisiting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCustomerVisitingCopyWith<$Res> {
  factory $ResponseCustomerVisitingCopyWith(ResponseCustomerVisiting value,
          $Res Function(ResponseCustomerVisiting) then) =
      _$ResponseCustomerVisitingCopyWithImpl<$Res, ResponseCustomerVisiting>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataCustomerVisiting>? data});
}

/// @nodoc
class _$ResponseCustomerVisitingCopyWithImpl<$Res,
        $Val extends ResponseCustomerVisiting>
    implements $ResponseCustomerVisitingCopyWith<$Res> {
  _$ResponseCustomerVisitingCopyWithImpl(this._value, this._then);

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
              as List<DataCustomerVisiting>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseCustomerVisitingImplCopyWith<$Res>
    implements $ResponseCustomerVisitingCopyWith<$Res> {
  factory _$$ResponseCustomerVisitingImplCopyWith(
          _$ResponseCustomerVisitingImpl value,
          $Res Function(_$ResponseCustomerVisitingImpl) then) =
      __$$ResponseCustomerVisitingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataCustomerVisiting>? data});
}

/// @nodoc
class __$$ResponseCustomerVisitingImplCopyWithImpl<$Res>
    extends _$ResponseCustomerVisitingCopyWithImpl<$Res,
        _$ResponseCustomerVisitingImpl>
    implements _$$ResponseCustomerVisitingImplCopyWith<$Res> {
  __$$ResponseCustomerVisitingImplCopyWithImpl(
      _$ResponseCustomerVisitingImpl _value,
      $Res Function(_$ResponseCustomerVisitingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseCustomerVisitingImpl(
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
              as List<DataCustomerVisiting>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCustomerVisitingImpl implements _ResponseCustomerVisiting {
  const _$ResponseCustomerVisitingImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") final List<DataCustomerVisiting>? data})
      : _data = data;

  factory _$ResponseCustomerVisitingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCustomerVisitingImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  final List<DataCustomerVisiting>? _data;
  @override
  @JsonKey(name: "data")
  List<DataCustomerVisiting>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseCustomerVisiting(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCustomerVisitingImpl &&
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
  _$$ResponseCustomerVisitingImplCopyWith<_$ResponseCustomerVisitingImpl>
      get copyWith => __$$ResponseCustomerVisitingImplCopyWithImpl<
          _$ResponseCustomerVisitingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCustomerVisitingImplToJson(
      this,
    );
  }
}

abstract class _ResponseCustomerVisiting implements ResponseCustomerVisiting {
  const factory _ResponseCustomerVisiting(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final List<DataCustomerVisiting>? data}) =
      _$ResponseCustomerVisitingImpl;

  factory _ResponseCustomerVisiting.fromJson(Map<String, dynamic> json) =
      _$ResponseCustomerVisitingImpl.fromJson;

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
  List<DataCustomerVisiting>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseCustomerVisitingImplCopyWith<_$ResponseCustomerVisitingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataCustomerVisiting _$DataCustomerVisitingFromJson(Map<String, dynamic> json) {
  return _DataCustomerVisiting.fromJson(json);
}

/// @nodoc
mixin _$DataCustomerVisiting {
  @JsonKey(name: "m_cust_id")
  int? get mCustId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_code")
  String? get mCustCode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_name")
  String? get mCustName => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_name_alias")
  String? get mCustNameAlias => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_grup_wilayah_id")
  int? get mCustGrupWilayahId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_grup_wilayah")
  String? get mCustGrupWilayah => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_d_addr_id")
  int? get mCustDAddrId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_d_addr_name")
  String? get mCustDAddrName => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_d_addr_address")
  String? get mCustDAddrAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "jumlah_piutang")
  double? get jumlahPiutang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCustomerVisitingCopyWith<DataCustomerVisiting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCustomerVisitingCopyWith<$Res> {
  factory $DataCustomerVisitingCopyWith(DataCustomerVisiting value,
          $Res Function(DataCustomerVisiting) then) =
      _$DataCustomerVisitingCopyWithImpl<$Res, DataCustomerVisiting>;
  @useResult
  $Res call(
      {@JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "m_cust_code") String? mCustCode,
      @JsonKey(name: "m_cust_name") String? mCustName,
      @JsonKey(name: "m_cust_name_alias") String? mCustNameAlias,
      @JsonKey(name: "m_cust_grup_wilayah_id") int? mCustGrupWilayahId,
      @JsonKey(name: "m_cust_grup_wilayah") String? mCustGrupWilayah,
      @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
      @JsonKey(name: "m_cust_d_addr_name") String? mCustDAddrName,
      @JsonKey(name: "m_cust_d_addr_address") String? mCustDAddrAddress,
      @JsonKey(name: "jumlah_piutang") double? jumlahPiutang});
}

/// @nodoc
class _$DataCustomerVisitingCopyWithImpl<$Res,
        $Val extends DataCustomerVisiting>
    implements $DataCustomerVisitingCopyWith<$Res> {
  _$DataCustomerVisitingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mCustId = freezed,
    Object? mCustCode = freezed,
    Object? mCustName = freezed,
    Object? mCustNameAlias = freezed,
    Object? mCustGrupWilayahId = freezed,
    Object? mCustGrupWilayah = freezed,
    Object? mCustDAddrId = freezed,
    Object? mCustDAddrName = freezed,
    Object? mCustDAddrAddress = freezed,
    Object? jumlahPiutang = freezed,
  }) {
    return _then(_value.copyWith(
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustCode: freezed == mCustCode
          ? _value.mCustCode
          : mCustCode // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustName: freezed == mCustName
          ? _value.mCustName
          : mCustName // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustNameAlias: freezed == mCustNameAlias
          ? _value.mCustNameAlias
          : mCustNameAlias // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustGrupWilayahId: freezed == mCustGrupWilayahId
          ? _value.mCustGrupWilayahId
          : mCustGrupWilayahId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustGrupWilayah: freezed == mCustGrupWilayah
          ? _value.mCustGrupWilayah
          : mCustGrupWilayah // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustDAddrId: freezed == mCustDAddrId
          ? _value.mCustDAddrId
          : mCustDAddrId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustDAddrName: freezed == mCustDAddrName
          ? _value.mCustDAddrName
          : mCustDAddrName // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustDAddrAddress: freezed == mCustDAddrAddress
          ? _value.mCustDAddrAddress
          : mCustDAddrAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahPiutang: freezed == jumlahPiutang
          ? _value.jumlahPiutang
          : jumlahPiutang // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataCustomerVisitingImplCopyWith<$Res>
    implements $DataCustomerVisitingCopyWith<$Res> {
  factory _$$DataCustomerVisitingImplCopyWith(_$DataCustomerVisitingImpl value,
          $Res Function(_$DataCustomerVisitingImpl) then) =
      __$$DataCustomerVisitingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "m_cust_code") String? mCustCode,
      @JsonKey(name: "m_cust_name") String? mCustName,
      @JsonKey(name: "m_cust_name_alias") String? mCustNameAlias,
      @JsonKey(name: "m_cust_grup_wilayah_id") int? mCustGrupWilayahId,
      @JsonKey(name: "m_cust_grup_wilayah") String? mCustGrupWilayah,
      @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
      @JsonKey(name: "m_cust_d_addr_name") String? mCustDAddrName,
      @JsonKey(name: "m_cust_d_addr_address") String? mCustDAddrAddress,
      @JsonKey(name: "jumlah_piutang") double? jumlahPiutang});
}

/// @nodoc
class __$$DataCustomerVisitingImplCopyWithImpl<$Res>
    extends _$DataCustomerVisitingCopyWithImpl<$Res, _$DataCustomerVisitingImpl>
    implements _$$DataCustomerVisitingImplCopyWith<$Res> {
  __$$DataCustomerVisitingImplCopyWithImpl(_$DataCustomerVisitingImpl _value,
      $Res Function(_$DataCustomerVisitingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mCustId = freezed,
    Object? mCustCode = freezed,
    Object? mCustName = freezed,
    Object? mCustNameAlias = freezed,
    Object? mCustGrupWilayahId = freezed,
    Object? mCustGrupWilayah = freezed,
    Object? mCustDAddrId = freezed,
    Object? mCustDAddrName = freezed,
    Object? mCustDAddrAddress = freezed,
    Object? jumlahPiutang = freezed,
  }) {
    return _then(_$DataCustomerVisitingImpl(
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustCode: freezed == mCustCode
          ? _value.mCustCode
          : mCustCode // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustName: freezed == mCustName
          ? _value.mCustName
          : mCustName // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustNameAlias: freezed == mCustNameAlias
          ? _value.mCustNameAlias
          : mCustNameAlias // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustGrupWilayahId: freezed == mCustGrupWilayahId
          ? _value.mCustGrupWilayahId
          : mCustGrupWilayahId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustGrupWilayah: freezed == mCustGrupWilayah
          ? _value.mCustGrupWilayah
          : mCustGrupWilayah // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustDAddrId: freezed == mCustDAddrId
          ? _value.mCustDAddrId
          : mCustDAddrId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustDAddrName: freezed == mCustDAddrName
          ? _value.mCustDAddrName
          : mCustDAddrName // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustDAddrAddress: freezed == mCustDAddrAddress
          ? _value.mCustDAddrAddress
          : mCustDAddrAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahPiutang: freezed == jumlahPiutang
          ? _value.jumlahPiutang
          : jumlahPiutang // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataCustomerVisitingImpl implements _DataCustomerVisiting {
  const _$DataCustomerVisitingImpl(
      {@JsonKey(name: "m_cust_id") this.mCustId,
      @JsonKey(name: "m_cust_code") this.mCustCode,
      @JsonKey(name: "m_cust_name") this.mCustName,
      @JsonKey(name: "m_cust_name_alias") this.mCustNameAlias,
      @JsonKey(name: "m_cust_grup_wilayah_id") this.mCustGrupWilayahId,
      @JsonKey(name: "m_cust_grup_wilayah") this.mCustGrupWilayah,
      @JsonKey(name: "m_cust_d_addr_id") this.mCustDAddrId,
      @JsonKey(name: "m_cust_d_addr_name") this.mCustDAddrName,
      @JsonKey(name: "m_cust_d_addr_address") this.mCustDAddrAddress,
      @JsonKey(name: "jumlah_piutang") this.jumlahPiutang});

  factory _$DataCustomerVisitingImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataCustomerVisitingImplFromJson(json);

  @override
  @JsonKey(name: "m_cust_id")
  final int? mCustId;
  @override
  @JsonKey(name: "m_cust_code")
  final String? mCustCode;
  @override
  @JsonKey(name: "m_cust_name")
  final String? mCustName;
  @override
  @JsonKey(name: "m_cust_name_alias")
  final String? mCustNameAlias;
  @override
  @JsonKey(name: "m_cust_grup_wilayah_id")
  final int? mCustGrupWilayahId;
  @override
  @JsonKey(name: "m_cust_grup_wilayah")
  final String? mCustGrupWilayah;
  @override
  @JsonKey(name: "m_cust_d_addr_id")
  final int? mCustDAddrId;
  @override
  @JsonKey(name: "m_cust_d_addr_name")
  final String? mCustDAddrName;
  @override
  @JsonKey(name: "m_cust_d_addr_address")
  final String? mCustDAddrAddress;
  @override
  @JsonKey(name: "jumlah_piutang")
  final double? jumlahPiutang;

  @override
  String toString() {
    return 'DataCustomerVisiting(mCustId: $mCustId, mCustCode: $mCustCode, mCustName: $mCustName, mCustNameAlias: $mCustNameAlias, mCustGrupWilayahId: $mCustGrupWilayahId, mCustGrupWilayah: $mCustGrupWilayah, mCustDAddrId: $mCustDAddrId, mCustDAddrName: $mCustDAddrName, mCustDAddrAddress: $mCustDAddrAddress, jumlahPiutang: $jumlahPiutang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataCustomerVisitingImpl &&
            (identical(other.mCustId, mCustId) || other.mCustId == mCustId) &&
            (identical(other.mCustCode, mCustCode) ||
                other.mCustCode == mCustCode) &&
            (identical(other.mCustName, mCustName) ||
                other.mCustName == mCustName) &&
            (identical(other.mCustNameAlias, mCustNameAlias) ||
                other.mCustNameAlias == mCustNameAlias) &&
            (identical(other.mCustGrupWilayahId, mCustGrupWilayahId) ||
                other.mCustGrupWilayahId == mCustGrupWilayahId) &&
            (identical(other.mCustGrupWilayah, mCustGrupWilayah) ||
                other.mCustGrupWilayah == mCustGrupWilayah) &&
            (identical(other.mCustDAddrId, mCustDAddrId) ||
                other.mCustDAddrId == mCustDAddrId) &&
            (identical(other.mCustDAddrName, mCustDAddrName) ||
                other.mCustDAddrName == mCustDAddrName) &&
            (identical(other.mCustDAddrAddress, mCustDAddrAddress) ||
                other.mCustDAddrAddress == mCustDAddrAddress) &&
            (identical(other.jumlahPiutang, jumlahPiutang) ||
                other.jumlahPiutang == jumlahPiutang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mCustId,
      mCustCode,
      mCustName,
      mCustNameAlias,
      mCustGrupWilayahId,
      mCustGrupWilayah,
      mCustDAddrId,
      mCustDAddrName,
      mCustDAddrAddress,
      jumlahPiutang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataCustomerVisitingImplCopyWith<_$DataCustomerVisitingImpl>
      get copyWith =>
          __$$DataCustomerVisitingImplCopyWithImpl<_$DataCustomerVisitingImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataCustomerVisitingImplToJson(
      this,
    );
  }
}

abstract class _DataCustomerVisiting implements DataCustomerVisiting {
  const factory _DataCustomerVisiting(
      {@JsonKey(name: "m_cust_id") final int? mCustId,
      @JsonKey(name: "m_cust_code") final String? mCustCode,
      @JsonKey(name: "m_cust_name") final String? mCustName,
      @JsonKey(name: "m_cust_name_alias") final String? mCustNameAlias,
      @JsonKey(name: "m_cust_grup_wilayah_id") final int? mCustGrupWilayahId,
      @JsonKey(name: "m_cust_grup_wilayah") final String? mCustGrupWilayah,
      @JsonKey(name: "m_cust_d_addr_id") final int? mCustDAddrId,
      @JsonKey(name: "m_cust_d_addr_name") final String? mCustDAddrName,
      @JsonKey(name: "m_cust_d_addr_address") final String? mCustDAddrAddress,
      @JsonKey(name: "jumlah_piutang")
      final double? jumlahPiutang}) = _$DataCustomerVisitingImpl;

  factory _DataCustomerVisiting.fromJson(Map<String, dynamic> json) =
      _$DataCustomerVisitingImpl.fromJson;

  @override
  @JsonKey(name: "m_cust_id")
  int? get mCustId;
  @override
  @JsonKey(name: "m_cust_code")
  String? get mCustCode;
  @override
  @JsonKey(name: "m_cust_name")
  String? get mCustName;
  @override
  @JsonKey(name: "m_cust_name_alias")
  String? get mCustNameAlias;
  @override
  @JsonKey(name: "m_cust_grup_wilayah_id")
  int? get mCustGrupWilayahId;
  @override
  @JsonKey(name: "m_cust_grup_wilayah")
  String? get mCustGrupWilayah;
  @override
  @JsonKey(name: "m_cust_d_addr_id")
  int? get mCustDAddrId;
  @override
  @JsonKey(name: "m_cust_d_addr_name")
  String? get mCustDAddrName;
  @override
  @JsonKey(name: "m_cust_d_addr_address")
  String? get mCustDAddrAddress;
  @override
  @JsonKey(name: "jumlah_piutang")
  double? get jumlahPiutang;
  @override
  @JsonKey(ignore: true)
  _$$DataCustomerVisitingImplCopyWith<_$DataCustomerVisitingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
