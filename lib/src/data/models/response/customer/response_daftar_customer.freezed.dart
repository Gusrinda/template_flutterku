// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_daftar_customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDaftarCustomer _$ResponseDaftarCustomerFromJson(
    Map<String, dynamic> json) {
  return _ResponseDaftarCustomer.fromJson(json);
}

/// @nodoc
mixin _$ResponseDaftarCustomer {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataCustomer>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDaftarCustomerCopyWith<ResponseDaftarCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDaftarCustomerCopyWith<$Res> {
  factory $ResponseDaftarCustomerCopyWith(ResponseDaftarCustomer value,
          $Res Function(ResponseDaftarCustomer) then) =
      _$ResponseDaftarCustomerCopyWithImpl<$Res, ResponseDaftarCustomer>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataCustomer>? data});
}

/// @nodoc
class _$ResponseDaftarCustomerCopyWithImpl<$Res,
        $Val extends ResponseDaftarCustomer>
    implements $ResponseDaftarCustomerCopyWith<$Res> {
  _$ResponseDaftarCustomerCopyWithImpl(this._value, this._then);

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
              as List<DataCustomer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDaftarCustomerImplCopyWith<$Res>
    implements $ResponseDaftarCustomerCopyWith<$Res> {
  factory _$$ResponseDaftarCustomerImplCopyWith(
          _$ResponseDaftarCustomerImpl value,
          $Res Function(_$ResponseDaftarCustomerImpl) then) =
      __$$ResponseDaftarCustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataCustomer>? data});
}

/// @nodoc
class __$$ResponseDaftarCustomerImplCopyWithImpl<$Res>
    extends _$ResponseDaftarCustomerCopyWithImpl<$Res,
        _$ResponseDaftarCustomerImpl>
    implements _$$ResponseDaftarCustomerImplCopyWith<$Res> {
  __$$ResponseDaftarCustomerImplCopyWithImpl(
      _$ResponseDaftarCustomerImpl _value,
      $Res Function(_$ResponseDaftarCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDaftarCustomerImpl(
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
              as List<DataCustomer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDaftarCustomerImpl implements _ResponseDaftarCustomer {
  const _$ResponseDaftarCustomerImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") final List<DataCustomer>? data})
      : _data = data;

  factory _$ResponseDaftarCustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDaftarCustomerImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  final List<DataCustomer>? _data;
  @override
  @JsonKey(name: "data")
  List<DataCustomer>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseDaftarCustomer(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDaftarCustomerImpl &&
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
  _$$ResponseDaftarCustomerImplCopyWith<_$ResponseDaftarCustomerImpl>
      get copyWith => __$$ResponseDaftarCustomerImplCopyWithImpl<
          _$ResponseDaftarCustomerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDaftarCustomerImplToJson(
      this,
    );
  }
}

abstract class _ResponseDaftarCustomer implements ResponseDaftarCustomer {
  const factory _ResponseDaftarCustomer(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final List<DataCustomer>? data}) =
      _$ResponseDaftarCustomerImpl;

  factory _ResponseDaftarCustomer.fromJson(Map<String, dynamic> json) =
      _$ResponseDaftarCustomerImpl.fromJson;

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
  List<DataCustomer>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDaftarCustomerImplCopyWith<_$ResponseDaftarCustomerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataCustomer _$DataCustomerFromJson(Map<String, dynamic> json) {
  return _DataCustomer.fromJson(json);
}

/// @nodoc
mixin _$DataCustomer {
  @JsonKey(name: "m_cust_id")
  int? get mCustId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_code")
  String? get mCustCode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_name")
  String? get mCustName => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_type")
  dynamic get mCustType => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_grup_wilayah_id")
  int? get mCustGrupWilayahId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_grup_wilayah")
  String? get mCustGrupWilayah => throw _privateConstructorUsedError;
  @JsonKey(name: "m_custgrup_paydefault_id")
  int? get mCustgrupPaydefaultId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_custgrup_jatuhtempo_id")
  int? get mCustgrupJatuhtempoId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_active_flag")
  String? get mCustActiveFlag => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_npwp")
  String? get mCustNpwp => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_nik")
  String? get mCustNik => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_email")
  String? get mCustEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_name_alias")
  String? get mCustNameAlias => throw _privateConstructorUsedError;
  @JsonKey(name: "alamatCount")
  int? get alamatCount => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_id_img_path")
  String? get mCustIdImgPath => throw _privateConstructorUsedError;
  @JsonKey(name: "overdue_days")
  int? get overdueDays => throw _privateConstructorUsedError;
  @JsonKey(name: "overtime_days")
  int? get overtimeDays => throw _privateConstructorUsedError;
  @JsonKey(name: "overdue_ar")
  int? get overdueAr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCustomerCopyWith<DataCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCustomerCopyWith<$Res> {
  factory $DataCustomerCopyWith(
          DataCustomer value, $Res Function(DataCustomer) then) =
      _$DataCustomerCopyWithImpl<$Res, DataCustomer>;
  @useResult
  $Res call(
      {@JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "m_cust_code") String? mCustCode,
      @JsonKey(name: "m_cust_name") String? mCustName,
      @JsonKey(name: "m_cust_type") dynamic mCustType,
      @JsonKey(name: "m_cust_grup_wilayah_id") int? mCustGrupWilayahId,
      @JsonKey(name: "m_cust_grup_wilayah") String? mCustGrupWilayah,
      @JsonKey(name: "m_custgrup_paydefault_id") int? mCustgrupPaydefaultId,
      @JsonKey(name: "m_custgrup_jatuhtempo_id") int? mCustgrupJatuhtempoId,
      @JsonKey(name: "m_cust_active_flag") String? mCustActiveFlag,
      @JsonKey(name: "m_cust_npwp") String? mCustNpwp,
      @JsonKey(name: "m_cust_nik") String? mCustNik,
      @JsonKey(name: "m_cust_email") String? mCustEmail,
      @JsonKey(name: "m_cust_name_alias") String? mCustNameAlias,
      @JsonKey(name: "alamatCount") int? alamatCount,
      @JsonKey(name: "m_cust_id_img_path") String? mCustIdImgPath,
      @JsonKey(name: "overdue_days") int? overdueDays,
      @JsonKey(name: "overtime_days") int? overtimeDays,
      @JsonKey(name: "overdue_ar") int? overdueAr});
}

/// @nodoc
class _$DataCustomerCopyWithImpl<$Res, $Val extends DataCustomer>
    implements $DataCustomerCopyWith<$Res> {
  _$DataCustomerCopyWithImpl(this._value, this._then);

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
    Object? mCustType = freezed,
    Object? mCustGrupWilayahId = freezed,
    Object? mCustGrupWilayah = freezed,
    Object? mCustgrupPaydefaultId = freezed,
    Object? mCustgrupJatuhtempoId = freezed,
    Object? mCustActiveFlag = freezed,
    Object? mCustNpwp = freezed,
    Object? mCustNik = freezed,
    Object? mCustEmail = freezed,
    Object? mCustNameAlias = freezed,
    Object? alamatCount = freezed,
    Object? mCustIdImgPath = freezed,
    Object? overdueDays = freezed,
    Object? overtimeDays = freezed,
    Object? overdueAr = freezed,
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
      mCustType: freezed == mCustType
          ? _value.mCustType
          : mCustType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCustGrupWilayahId: freezed == mCustGrupWilayahId
          ? _value.mCustGrupWilayahId
          : mCustGrupWilayahId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustGrupWilayah: freezed == mCustGrupWilayah
          ? _value.mCustGrupWilayah
          : mCustGrupWilayah // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustgrupPaydefaultId: freezed == mCustgrupPaydefaultId
          ? _value.mCustgrupPaydefaultId
          : mCustgrupPaydefaultId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustgrupJatuhtempoId: freezed == mCustgrupJatuhtempoId
          ? _value.mCustgrupJatuhtempoId
          : mCustgrupJatuhtempoId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustActiveFlag: freezed == mCustActiveFlag
          ? _value.mCustActiveFlag
          : mCustActiveFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustNpwp: freezed == mCustNpwp
          ? _value.mCustNpwp
          : mCustNpwp // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustNik: freezed == mCustNik
          ? _value.mCustNik
          : mCustNik // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustEmail: freezed == mCustEmail
          ? _value.mCustEmail
          : mCustEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustNameAlias: freezed == mCustNameAlias
          ? _value.mCustNameAlias
          : mCustNameAlias // ignore: cast_nullable_to_non_nullable
              as String?,
      alamatCount: freezed == alamatCount
          ? _value.alamatCount
          : alamatCount // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustIdImgPath: freezed == mCustIdImgPath
          ? _value.mCustIdImgPath
          : mCustIdImgPath // ignore: cast_nullable_to_non_nullable
              as String?,
      overdueDays: freezed == overdueDays
          ? _value.overdueDays
          : overdueDays // ignore: cast_nullable_to_non_nullable
              as int?,
      overtimeDays: freezed == overtimeDays
          ? _value.overtimeDays
          : overtimeDays // ignore: cast_nullable_to_non_nullable
              as int?,
      overdueAr: freezed == overdueAr
          ? _value.overdueAr
          : overdueAr // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataCustomerImplCopyWith<$Res>
    implements $DataCustomerCopyWith<$Res> {
  factory _$$DataCustomerImplCopyWith(
          _$DataCustomerImpl value, $Res Function(_$DataCustomerImpl) then) =
      __$$DataCustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "m_cust_code") String? mCustCode,
      @JsonKey(name: "m_cust_name") String? mCustName,
      @JsonKey(name: "m_cust_type") dynamic mCustType,
      @JsonKey(name: "m_cust_grup_wilayah_id") int? mCustGrupWilayahId,
      @JsonKey(name: "m_cust_grup_wilayah") String? mCustGrupWilayah,
      @JsonKey(name: "m_custgrup_paydefault_id") int? mCustgrupPaydefaultId,
      @JsonKey(name: "m_custgrup_jatuhtempo_id") int? mCustgrupJatuhtempoId,
      @JsonKey(name: "m_cust_active_flag") String? mCustActiveFlag,
      @JsonKey(name: "m_cust_npwp") String? mCustNpwp,
      @JsonKey(name: "m_cust_nik") String? mCustNik,
      @JsonKey(name: "m_cust_email") String? mCustEmail,
      @JsonKey(name: "m_cust_name_alias") String? mCustNameAlias,
      @JsonKey(name: "alamatCount") int? alamatCount,
      @JsonKey(name: "m_cust_id_img_path") String? mCustIdImgPath,
      @JsonKey(name: "overdue_days") int? overdueDays,
      @JsonKey(name: "overtime_days") int? overtimeDays,
      @JsonKey(name: "overdue_ar") int? overdueAr});
}

/// @nodoc
class __$$DataCustomerImplCopyWithImpl<$Res>
    extends _$DataCustomerCopyWithImpl<$Res, _$DataCustomerImpl>
    implements _$$DataCustomerImplCopyWith<$Res> {
  __$$DataCustomerImplCopyWithImpl(
      _$DataCustomerImpl _value, $Res Function(_$DataCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mCustId = freezed,
    Object? mCustCode = freezed,
    Object? mCustName = freezed,
    Object? mCustType = freezed,
    Object? mCustGrupWilayahId = freezed,
    Object? mCustGrupWilayah = freezed,
    Object? mCustgrupPaydefaultId = freezed,
    Object? mCustgrupJatuhtempoId = freezed,
    Object? mCustActiveFlag = freezed,
    Object? mCustNpwp = freezed,
    Object? mCustNik = freezed,
    Object? mCustEmail = freezed,
    Object? mCustNameAlias = freezed,
    Object? alamatCount = freezed,
    Object? mCustIdImgPath = freezed,
    Object? overdueDays = freezed,
    Object? overtimeDays = freezed,
    Object? overdueAr = freezed,
  }) {
    return _then(_$DataCustomerImpl(
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
      mCustType: freezed == mCustType
          ? _value.mCustType
          : mCustType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCustGrupWilayahId: freezed == mCustGrupWilayahId
          ? _value.mCustGrupWilayahId
          : mCustGrupWilayahId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustGrupWilayah: freezed == mCustGrupWilayah
          ? _value.mCustGrupWilayah
          : mCustGrupWilayah // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustgrupPaydefaultId: freezed == mCustgrupPaydefaultId
          ? _value.mCustgrupPaydefaultId
          : mCustgrupPaydefaultId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustgrupJatuhtempoId: freezed == mCustgrupJatuhtempoId
          ? _value.mCustgrupJatuhtempoId
          : mCustgrupJatuhtempoId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustActiveFlag: freezed == mCustActiveFlag
          ? _value.mCustActiveFlag
          : mCustActiveFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustNpwp: freezed == mCustNpwp
          ? _value.mCustNpwp
          : mCustNpwp // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustNik: freezed == mCustNik
          ? _value.mCustNik
          : mCustNik // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustEmail: freezed == mCustEmail
          ? _value.mCustEmail
          : mCustEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustNameAlias: freezed == mCustNameAlias
          ? _value.mCustNameAlias
          : mCustNameAlias // ignore: cast_nullable_to_non_nullable
              as String?,
      alamatCount: freezed == alamatCount
          ? _value.alamatCount
          : alamatCount // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustIdImgPath: freezed == mCustIdImgPath
          ? _value.mCustIdImgPath
          : mCustIdImgPath // ignore: cast_nullable_to_non_nullable
              as String?,
      overdueDays: freezed == overdueDays
          ? _value.overdueDays
          : overdueDays // ignore: cast_nullable_to_non_nullable
              as int?,
      overtimeDays: freezed == overtimeDays
          ? _value.overtimeDays
          : overtimeDays // ignore: cast_nullable_to_non_nullable
              as int?,
      overdueAr: freezed == overdueAr
          ? _value.overdueAr
          : overdueAr // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataCustomerImpl implements _DataCustomer {
  const _$DataCustomerImpl(
      {@JsonKey(name: "m_cust_id") this.mCustId,
      @JsonKey(name: "m_cust_code") this.mCustCode,
      @JsonKey(name: "m_cust_name") this.mCustName,
      @JsonKey(name: "m_cust_type") this.mCustType,
      @JsonKey(name: "m_cust_grup_wilayah_id") this.mCustGrupWilayahId,
      @JsonKey(name: "m_cust_grup_wilayah") this.mCustGrupWilayah,
      @JsonKey(name: "m_custgrup_paydefault_id") this.mCustgrupPaydefaultId,
      @JsonKey(name: "m_custgrup_jatuhtempo_id") this.mCustgrupJatuhtempoId,
      @JsonKey(name: "m_cust_active_flag") this.mCustActiveFlag,
      @JsonKey(name: "m_cust_npwp") this.mCustNpwp,
      @JsonKey(name: "m_cust_nik") this.mCustNik,
      @JsonKey(name: "m_cust_email") this.mCustEmail,
      @JsonKey(name: "m_cust_name_alias") this.mCustNameAlias,
      @JsonKey(name: "alamatCount") this.alamatCount,
      @JsonKey(name: "m_cust_id_img_path") this.mCustIdImgPath,
      @JsonKey(name: "overdue_days") this.overdueDays,
      @JsonKey(name: "overtime_days") this.overtimeDays,
      @JsonKey(name: "overdue_ar") this.overdueAr});

  factory _$DataCustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataCustomerImplFromJson(json);

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
  @JsonKey(name: "m_cust_type")
  final dynamic mCustType;
  @override
  @JsonKey(name: "m_cust_grup_wilayah_id")
  final int? mCustGrupWilayahId;
  @override
  @JsonKey(name: "m_cust_grup_wilayah")
  final String? mCustGrupWilayah;
  @override
  @JsonKey(name: "m_custgrup_paydefault_id")
  final int? mCustgrupPaydefaultId;
  @override
  @JsonKey(name: "m_custgrup_jatuhtempo_id")
  final int? mCustgrupJatuhtempoId;
  @override
  @JsonKey(name: "m_cust_active_flag")
  final String? mCustActiveFlag;
  @override
  @JsonKey(name: "m_cust_npwp")
  final String? mCustNpwp;
  @override
  @JsonKey(name: "m_cust_nik")
  final String? mCustNik;
  @override
  @JsonKey(name: "m_cust_email")
  final String? mCustEmail;
  @override
  @JsonKey(name: "m_cust_name_alias")
  final String? mCustNameAlias;
  @override
  @JsonKey(name: "alamatCount")
  final int? alamatCount;
  @override
  @JsonKey(name: "m_cust_id_img_path")
  final String? mCustIdImgPath;
  @override
  @JsonKey(name: "overdue_days")
  final int? overdueDays;
  @override
  @JsonKey(name: "overtime_days")
  final int? overtimeDays;
  @override
  @JsonKey(name: "overdue_ar")
  final int? overdueAr;

  @override
  String toString() {
    return 'DataCustomer(mCustId: $mCustId, mCustCode: $mCustCode, mCustName: $mCustName, mCustType: $mCustType, mCustGrupWilayahId: $mCustGrupWilayahId, mCustGrupWilayah: $mCustGrupWilayah, mCustgrupPaydefaultId: $mCustgrupPaydefaultId, mCustgrupJatuhtempoId: $mCustgrupJatuhtempoId, mCustActiveFlag: $mCustActiveFlag, mCustNpwp: $mCustNpwp, mCustNik: $mCustNik, mCustEmail: $mCustEmail, mCustNameAlias: $mCustNameAlias, alamatCount: $alamatCount, mCustIdImgPath: $mCustIdImgPath, overdueDays: $overdueDays, overtimeDays: $overtimeDays, overdueAr: $overdueAr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataCustomerImpl &&
            (identical(other.mCustId, mCustId) || other.mCustId == mCustId) &&
            (identical(other.mCustCode, mCustCode) ||
                other.mCustCode == mCustCode) &&
            (identical(other.mCustName, mCustName) ||
                other.mCustName == mCustName) &&
            const DeepCollectionEquality().equals(other.mCustType, mCustType) &&
            (identical(other.mCustGrupWilayahId, mCustGrupWilayahId) ||
                other.mCustGrupWilayahId == mCustGrupWilayahId) &&
            (identical(other.mCustGrupWilayah, mCustGrupWilayah) ||
                other.mCustGrupWilayah == mCustGrupWilayah) &&
            (identical(other.mCustgrupPaydefaultId, mCustgrupPaydefaultId) ||
                other.mCustgrupPaydefaultId == mCustgrupPaydefaultId) &&
            (identical(other.mCustgrupJatuhtempoId, mCustgrupJatuhtempoId) ||
                other.mCustgrupJatuhtempoId == mCustgrupJatuhtempoId) &&
            (identical(other.mCustActiveFlag, mCustActiveFlag) ||
                other.mCustActiveFlag == mCustActiveFlag) &&
            (identical(other.mCustNpwp, mCustNpwp) ||
                other.mCustNpwp == mCustNpwp) &&
            (identical(other.mCustNik, mCustNik) ||
                other.mCustNik == mCustNik) &&
            (identical(other.mCustEmail, mCustEmail) ||
                other.mCustEmail == mCustEmail) &&
            (identical(other.mCustNameAlias, mCustNameAlias) ||
                other.mCustNameAlias == mCustNameAlias) &&
            (identical(other.alamatCount, alamatCount) ||
                other.alamatCount == alamatCount) &&
            (identical(other.mCustIdImgPath, mCustIdImgPath) ||
                other.mCustIdImgPath == mCustIdImgPath) &&
            (identical(other.overdueDays, overdueDays) ||
                other.overdueDays == overdueDays) &&
            (identical(other.overtimeDays, overtimeDays) ||
                other.overtimeDays == overtimeDays) &&
            (identical(other.overdueAr, overdueAr) ||
                other.overdueAr == overdueAr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mCustId,
      mCustCode,
      mCustName,
      const DeepCollectionEquality().hash(mCustType),
      mCustGrupWilayahId,
      mCustGrupWilayah,
      mCustgrupPaydefaultId,
      mCustgrupJatuhtempoId,
      mCustActiveFlag,
      mCustNpwp,
      mCustNik,
      mCustEmail,
      mCustNameAlias,
      alamatCount,
      mCustIdImgPath,
      overdueDays,
      overtimeDays,
      overdueAr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataCustomerImplCopyWith<_$DataCustomerImpl> get copyWith =>
      __$$DataCustomerImplCopyWithImpl<_$DataCustomerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataCustomerImplToJson(
      this,
    );
  }
}

abstract class _DataCustomer implements DataCustomer {
  const factory _DataCustomer(
      {@JsonKey(name: "m_cust_id") final int? mCustId,
      @JsonKey(name: "m_cust_code") final String? mCustCode,
      @JsonKey(name: "m_cust_name") final String? mCustName,
      @JsonKey(name: "m_cust_type") final dynamic mCustType,
      @JsonKey(name: "m_cust_grup_wilayah_id") final int? mCustGrupWilayahId,
      @JsonKey(name: "m_cust_grup_wilayah") final String? mCustGrupWilayah,
      @JsonKey(name: "m_custgrup_paydefault_id")
      final int? mCustgrupPaydefaultId,
      @JsonKey(name: "m_custgrup_jatuhtempo_id")
      final int? mCustgrupJatuhtempoId,
      @JsonKey(name: "m_cust_active_flag") final String? mCustActiveFlag,
      @JsonKey(name: "m_cust_npwp") final String? mCustNpwp,
      @JsonKey(name: "m_cust_nik") final String? mCustNik,
      @JsonKey(name: "m_cust_email") final String? mCustEmail,
      @JsonKey(name: "m_cust_name_alias") final String? mCustNameAlias,
      @JsonKey(name: "alamatCount") final int? alamatCount,
      @JsonKey(name: "m_cust_id_img_path") final String? mCustIdImgPath,
      @JsonKey(name: "overdue_days") final int? overdueDays,
      @JsonKey(name: "overtime_days") final int? overtimeDays,
      @JsonKey(name: "overdue_ar") final int? overdueAr}) = _$DataCustomerImpl;

  factory _DataCustomer.fromJson(Map<String, dynamic> json) =
      _$DataCustomerImpl.fromJson;

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
  @JsonKey(name: "m_cust_type")
  dynamic get mCustType;
  @override
  @JsonKey(name: "m_cust_grup_wilayah_id")
  int? get mCustGrupWilayahId;
  @override
  @JsonKey(name: "m_cust_grup_wilayah")
  String? get mCustGrupWilayah;
  @override
  @JsonKey(name: "m_custgrup_paydefault_id")
  int? get mCustgrupPaydefaultId;
  @override
  @JsonKey(name: "m_custgrup_jatuhtempo_id")
  int? get mCustgrupJatuhtempoId;
  @override
  @JsonKey(name: "m_cust_active_flag")
  String? get mCustActiveFlag;
  @override
  @JsonKey(name: "m_cust_npwp")
  String? get mCustNpwp;
  @override
  @JsonKey(name: "m_cust_nik")
  String? get mCustNik;
  @override
  @JsonKey(name: "m_cust_email")
  String? get mCustEmail;
  @override
  @JsonKey(name: "m_cust_name_alias")
  String? get mCustNameAlias;
  @override
  @JsonKey(name: "alamatCount")
  int? get alamatCount;
  @override
  @JsonKey(name: "m_cust_id_img_path")
  String? get mCustIdImgPath;
  @override
  @JsonKey(name: "overdue_days")
  int? get overdueDays;
  @override
  @JsonKey(name: "overtime_days")
  int? get overtimeDays;
  @override
  @JsonKey(name: "overdue_ar")
  int? get overdueAr;
  @override
  @JsonKey(ignore: true)
  _$$DataCustomerImplCopyWith<_$DataCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
