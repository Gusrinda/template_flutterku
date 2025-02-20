// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_list_so.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseListSo _$ResponseListSoFromJson(Map<String, dynamic> json) {
  return _ResponseListSo.fromJson(json);
}

/// @nodoc
mixin _$ResponseListSo {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataListSO>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseListSoCopyWith<ResponseListSo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseListSoCopyWith<$Res> {
  factory $ResponseListSoCopyWith(
          ResponseListSo value, $Res Function(ResponseListSo) then) =
      _$ResponseListSoCopyWithImpl<$Res, ResponseListSo>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataListSO>? data});
}

/// @nodoc
class _$ResponseListSoCopyWithImpl<$Res, $Val extends ResponseListSo>
    implements $ResponseListSoCopyWith<$Res> {
  _$ResponseListSoCopyWithImpl(this._value, this._then);

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
              as List<DataListSO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseListSoImplCopyWith<$Res>
    implements $ResponseListSoCopyWith<$Res> {
  factory _$$ResponseListSoImplCopyWith(_$ResponseListSoImpl value,
          $Res Function(_$ResponseListSoImpl) then) =
      __$$ResponseListSoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataListSO>? data});
}

/// @nodoc
class __$$ResponseListSoImplCopyWithImpl<$Res>
    extends _$ResponseListSoCopyWithImpl<$Res, _$ResponseListSoImpl>
    implements _$$ResponseListSoImplCopyWith<$Res> {
  __$$ResponseListSoImplCopyWithImpl(
      _$ResponseListSoImpl _value, $Res Function(_$ResponseListSoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseListSoImpl(
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
              as List<DataListSO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseListSoImpl implements _ResponseListSo {
  const _$ResponseListSoImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") final List<DataListSO>? data})
      : _data = data;

  factory _$ResponseListSoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseListSoImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  final List<DataListSO>? _data;
  @override
  @JsonKey(name: "data")
  List<DataListSO>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseListSo(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseListSoImpl &&
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
  _$$ResponseListSoImplCopyWith<_$ResponseListSoImpl> get copyWith =>
      __$$ResponseListSoImplCopyWithImpl<_$ResponseListSoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseListSoImplToJson(
      this,
    );
  }
}

abstract class _ResponseListSo implements ResponseListSo {
  const factory _ResponseListSo(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final List<DataListSO>? data}) =
      _$ResponseListSoImpl;

  factory _ResponseListSo.fromJson(Map<String, dynamic> json) =
      _$ResponseListSoImpl.fromJson;

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
  List<DataListSO>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseListSoImplCopyWith<_$ResponseListSoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataListSO _$DataListSOFromJson(Map<String, dynamic> json) {
  return _DataListSO.fromJson(json);
}

/// @nodoc
mixin _$DataListSO {
  @JsonKey(name: "t_so_h_etd_date")
  String? get tSoHEtdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_id")
  int? get tSoHId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_no")
  String? get tSoHNo => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_date")
  String? get tSoHDate => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_name")
  String? get mCustName => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_cust_po_no")
  String? get tSoHCustPoNo => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_cust_po_date")
  String? get tSoHCustPoDate => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_totalnetto")
  int? get tSoHTotalnetto => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_status")
  String? get tSoHStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "approved_by")
  String? get approvedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_note")
  String? get tSoHNote => throw _privateConstructorUsedError;
  @JsonKey(name: "t_pra_so_h_no")
  String? get tPraSoHNo => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_grup_wilayah_day")
  int? get mCustGrupWilayahDay => throw _privateConstructorUsedError;
  @JsonKey(name: "started_at")
  dynamic get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "extended_at")
  dynamic get extendedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "extended_flag")
  String? get extendedFlag => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_id")
  int? get mCustId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataListSOCopyWith<DataListSO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataListSOCopyWith<$Res> {
  factory $DataListSOCopyWith(
          DataListSO value, $Res Function(DataListSO) then) =
      _$DataListSOCopyWithImpl<$Res, DataListSO>;
  @useResult
  $Res call(
      {@JsonKey(name: "t_so_h_etd_date") String? tSoHEtdDate,
      @JsonKey(name: "t_so_h_id") int? tSoHId,
      @JsonKey(name: "t_so_h_no") String? tSoHNo,
      @JsonKey(name: "t_so_h_date") String? tSoHDate,
      @JsonKey(name: "m_cust_name") String? mCustName,
      @JsonKey(name: "t_so_h_cust_po_no") String? tSoHCustPoNo,
      @JsonKey(name: "t_so_h_cust_po_date") String? tSoHCustPoDate,
      @JsonKey(name: "t_so_h_totalnetto") int? tSoHTotalnetto,
      @JsonKey(name: "t_so_h_status") String? tSoHStatus,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "approved_by") String? approvedBy,
      @JsonKey(name: "t_so_h_note") String? tSoHNote,
      @JsonKey(name: "t_pra_so_h_no") String? tPraSoHNo,
      @JsonKey(name: "m_cust_grup_wilayah_day") int? mCustGrupWilayahDay,
      @JsonKey(name: "started_at") dynamic startedAt,
      @JsonKey(name: "extended_at") dynamic extendedAt,
      @JsonKey(name: "extended_flag") String? extendedFlag,
      @JsonKey(name: "m_cust_id") int? mCustId});
}

/// @nodoc
class _$DataListSOCopyWithImpl<$Res, $Val extends DataListSO>
    implements $DataListSOCopyWith<$Res> {
  _$DataListSOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSoHEtdDate = freezed,
    Object? tSoHId = freezed,
    Object? tSoHNo = freezed,
    Object? tSoHDate = freezed,
    Object? mCustName = freezed,
    Object? tSoHCustPoNo = freezed,
    Object? tSoHCustPoDate = freezed,
    Object? tSoHTotalnetto = freezed,
    Object? tSoHStatus = freezed,
    Object? createdAt = freezed,
    Object? approvedBy = freezed,
    Object? tSoHNote = freezed,
    Object? tPraSoHNo = freezed,
    Object? mCustGrupWilayahDay = freezed,
    Object? startedAt = freezed,
    Object? extendedAt = freezed,
    Object? extendedFlag = freezed,
    Object? mCustId = freezed,
  }) {
    return _then(_value.copyWith(
      tSoHEtdDate: freezed == tSoHEtdDate
          ? _value.tSoHEtdDate
          : tSoHEtdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHId: freezed == tSoHId
          ? _value.tSoHId
          : tSoHId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoHNo: freezed == tSoHNo
          ? _value.tSoHNo
          : tSoHNo // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHDate: freezed == tSoHDate
          ? _value.tSoHDate
          : tSoHDate // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustName: freezed == mCustName
          ? _value.mCustName
          : mCustName // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHCustPoNo: freezed == tSoHCustPoNo
          ? _value.tSoHCustPoNo
          : tSoHCustPoNo // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHCustPoDate: freezed == tSoHCustPoDate
          ? _value.tSoHCustPoDate
          : tSoHCustPoDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHTotalnetto: freezed == tSoHTotalnetto
          ? _value.tSoHTotalnetto
          : tSoHTotalnetto // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoHStatus: freezed == tSoHStatus
          ? _value.tSoHStatus
          : tSoHStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHNote: freezed == tSoHNote
          ? _value.tSoHNote
          : tSoHNote // ignore: cast_nullable_to_non_nullable
              as String?,
      tPraSoHNo: freezed == tPraSoHNo
          ? _value.tPraSoHNo
          : tPraSoHNo // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustGrupWilayahDay: freezed == mCustGrupWilayahDay
          ? _value.mCustGrupWilayahDay
          : mCustGrupWilayahDay // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      extendedAt: freezed == extendedAt
          ? _value.extendedAt
          : extendedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      extendedFlag: freezed == extendedFlag
          ? _value.extendedFlag
          : extendedFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataListSOImplCopyWith<$Res>
    implements $DataListSOCopyWith<$Res> {
  factory _$$DataListSOImplCopyWith(
          _$DataListSOImpl value, $Res Function(_$DataListSOImpl) then) =
      __$$DataListSOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "t_so_h_etd_date") String? tSoHEtdDate,
      @JsonKey(name: "t_so_h_id") int? tSoHId,
      @JsonKey(name: "t_so_h_no") String? tSoHNo,
      @JsonKey(name: "t_so_h_date") String? tSoHDate,
      @JsonKey(name: "m_cust_name") String? mCustName,
      @JsonKey(name: "t_so_h_cust_po_no") String? tSoHCustPoNo,
      @JsonKey(name: "t_so_h_cust_po_date") String? tSoHCustPoDate,
      @JsonKey(name: "t_so_h_totalnetto") int? tSoHTotalnetto,
      @JsonKey(name: "t_so_h_status") String? tSoHStatus,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "approved_by") String? approvedBy,
      @JsonKey(name: "t_so_h_note") String? tSoHNote,
      @JsonKey(name: "t_pra_so_h_no") String? tPraSoHNo,
      @JsonKey(name: "m_cust_grup_wilayah_day") int? mCustGrupWilayahDay,
      @JsonKey(name: "started_at") dynamic startedAt,
      @JsonKey(name: "extended_at") dynamic extendedAt,
      @JsonKey(name: "extended_flag") String? extendedFlag,
      @JsonKey(name: "m_cust_id") int? mCustId});
}

/// @nodoc
class __$$DataListSOImplCopyWithImpl<$Res>
    extends _$DataListSOCopyWithImpl<$Res, _$DataListSOImpl>
    implements _$$DataListSOImplCopyWith<$Res> {
  __$$DataListSOImplCopyWithImpl(
      _$DataListSOImpl _value, $Res Function(_$DataListSOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSoHEtdDate = freezed,
    Object? tSoHId = freezed,
    Object? tSoHNo = freezed,
    Object? tSoHDate = freezed,
    Object? mCustName = freezed,
    Object? tSoHCustPoNo = freezed,
    Object? tSoHCustPoDate = freezed,
    Object? tSoHTotalnetto = freezed,
    Object? tSoHStatus = freezed,
    Object? createdAt = freezed,
    Object? approvedBy = freezed,
    Object? tSoHNote = freezed,
    Object? tPraSoHNo = freezed,
    Object? mCustGrupWilayahDay = freezed,
    Object? startedAt = freezed,
    Object? extendedAt = freezed,
    Object? extendedFlag = freezed,
    Object? mCustId = freezed,
  }) {
    return _then(_$DataListSOImpl(
      tSoHEtdDate: freezed == tSoHEtdDate
          ? _value.tSoHEtdDate
          : tSoHEtdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHId: freezed == tSoHId
          ? _value.tSoHId
          : tSoHId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoHNo: freezed == tSoHNo
          ? _value.tSoHNo
          : tSoHNo // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHDate: freezed == tSoHDate
          ? _value.tSoHDate
          : tSoHDate // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustName: freezed == mCustName
          ? _value.mCustName
          : mCustName // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHCustPoNo: freezed == tSoHCustPoNo
          ? _value.tSoHCustPoNo
          : tSoHCustPoNo // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHCustPoDate: freezed == tSoHCustPoDate
          ? _value.tSoHCustPoDate
          : tSoHCustPoDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHTotalnetto: freezed == tSoHTotalnetto
          ? _value.tSoHTotalnetto
          : tSoHTotalnetto // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoHStatus: freezed == tSoHStatus
          ? _value.tSoHStatus
          : tSoHStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHNote: freezed == tSoHNote
          ? _value.tSoHNote
          : tSoHNote // ignore: cast_nullable_to_non_nullable
              as String?,
      tPraSoHNo: freezed == tPraSoHNo
          ? _value.tPraSoHNo
          : tPraSoHNo // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustGrupWilayahDay: freezed == mCustGrupWilayahDay
          ? _value.mCustGrupWilayahDay
          : mCustGrupWilayahDay // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      extendedAt: freezed == extendedAt
          ? _value.extendedAt
          : extendedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      extendedFlag: freezed == extendedFlag
          ? _value.extendedFlag
          : extendedFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataListSOImpl implements _DataListSO {
  const _$DataListSOImpl(
      {@JsonKey(name: "t_so_h_etd_date") this.tSoHEtdDate,
      @JsonKey(name: "t_so_h_id") this.tSoHId,
      @JsonKey(name: "t_so_h_no") this.tSoHNo,
      @JsonKey(name: "t_so_h_date") this.tSoHDate,
      @JsonKey(name: "m_cust_name") this.mCustName,
      @JsonKey(name: "t_so_h_cust_po_no") this.tSoHCustPoNo,
      @JsonKey(name: "t_so_h_cust_po_date") this.tSoHCustPoDate,
      @JsonKey(name: "t_so_h_totalnetto") this.tSoHTotalnetto,
      @JsonKey(name: "t_so_h_status") this.tSoHStatus,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "approved_by") this.approvedBy,
      @JsonKey(name: "t_so_h_note") this.tSoHNote,
      @JsonKey(name: "t_pra_so_h_no") this.tPraSoHNo,
      @JsonKey(name: "m_cust_grup_wilayah_day") this.mCustGrupWilayahDay,
      @JsonKey(name: "started_at") this.startedAt,
      @JsonKey(name: "extended_at") this.extendedAt,
      @JsonKey(name: "extended_flag") this.extendedFlag,
      @JsonKey(name: "m_cust_id") this.mCustId});

  factory _$DataListSOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataListSOImplFromJson(json);

  @override
  @JsonKey(name: "t_so_h_etd_date")
  final String? tSoHEtdDate;
  @override
  @JsonKey(name: "t_so_h_id")
  final int? tSoHId;
  @override
  @JsonKey(name: "t_so_h_no")
  final String? tSoHNo;
  @override
  @JsonKey(name: "t_so_h_date")
  final String? tSoHDate;
  @override
  @JsonKey(name: "m_cust_name")
  final String? mCustName;
  @override
  @JsonKey(name: "t_so_h_cust_po_no")
  final String? tSoHCustPoNo;
  @override
  @JsonKey(name: "t_so_h_cust_po_date")
  final String? tSoHCustPoDate;
  @override
  @JsonKey(name: "t_so_h_totalnetto")
  final int? tSoHTotalnetto;
  @override
  @JsonKey(name: "t_so_h_status")
  final String? tSoHStatus;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "approved_by")
  final String? approvedBy;
  @override
  @JsonKey(name: "t_so_h_note")
  final String? tSoHNote;
  @override
  @JsonKey(name: "t_pra_so_h_no")
  final String? tPraSoHNo;
  @override
  @JsonKey(name: "m_cust_grup_wilayah_day")
  final int? mCustGrupWilayahDay;
  @override
  @JsonKey(name: "started_at")
  final dynamic startedAt;
  @override
  @JsonKey(name: "extended_at")
  final dynamic extendedAt;
  @override
  @JsonKey(name: "extended_flag")
  final String? extendedFlag;
  @override
  @JsonKey(name: "m_cust_id")
  final int? mCustId;

  @override
  String toString() {
    return 'DataListSO(tSoHEtdDate: $tSoHEtdDate, tSoHId: $tSoHId, tSoHNo: $tSoHNo, tSoHDate: $tSoHDate, mCustName: $mCustName, tSoHCustPoNo: $tSoHCustPoNo, tSoHCustPoDate: $tSoHCustPoDate, tSoHTotalnetto: $tSoHTotalnetto, tSoHStatus: $tSoHStatus, createdAt: $createdAt, approvedBy: $approvedBy, tSoHNote: $tSoHNote, tPraSoHNo: $tPraSoHNo, mCustGrupWilayahDay: $mCustGrupWilayahDay, startedAt: $startedAt, extendedAt: $extendedAt, extendedFlag: $extendedFlag, mCustId: $mCustId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataListSOImpl &&
            (identical(other.tSoHEtdDate, tSoHEtdDate) ||
                other.tSoHEtdDate == tSoHEtdDate) &&
            (identical(other.tSoHId, tSoHId) || other.tSoHId == tSoHId) &&
            (identical(other.tSoHNo, tSoHNo) || other.tSoHNo == tSoHNo) &&
            (identical(other.tSoHDate, tSoHDate) ||
                other.tSoHDate == tSoHDate) &&
            (identical(other.mCustName, mCustName) ||
                other.mCustName == mCustName) &&
            (identical(other.tSoHCustPoNo, tSoHCustPoNo) ||
                other.tSoHCustPoNo == tSoHCustPoNo) &&
            (identical(other.tSoHCustPoDate, tSoHCustPoDate) ||
                other.tSoHCustPoDate == tSoHCustPoDate) &&
            (identical(other.tSoHTotalnetto, tSoHTotalnetto) ||
                other.tSoHTotalnetto == tSoHTotalnetto) &&
            (identical(other.tSoHStatus, tSoHStatus) ||
                other.tSoHStatus == tSoHStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.tSoHNote, tSoHNote) ||
                other.tSoHNote == tSoHNote) &&
            (identical(other.tPraSoHNo, tPraSoHNo) ||
                other.tPraSoHNo == tPraSoHNo) &&
            (identical(other.mCustGrupWilayahDay, mCustGrupWilayahDay) ||
                other.mCustGrupWilayahDay == mCustGrupWilayahDay) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality()
                .equals(other.extendedAt, extendedAt) &&
            (identical(other.extendedFlag, extendedFlag) ||
                other.extendedFlag == extendedFlag) &&
            (identical(other.mCustId, mCustId) || other.mCustId == mCustId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tSoHEtdDate,
      tSoHId,
      tSoHNo,
      tSoHDate,
      mCustName,
      tSoHCustPoNo,
      tSoHCustPoDate,
      tSoHTotalnetto,
      tSoHStatus,
      createdAt,
      approvedBy,
      tSoHNote,
      tPraSoHNo,
      mCustGrupWilayahDay,
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(extendedAt),
      extendedFlag,
      mCustId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataListSOImplCopyWith<_$DataListSOImpl> get copyWith =>
      __$$DataListSOImplCopyWithImpl<_$DataListSOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataListSOImplToJson(
      this,
    );
  }
}

abstract class _DataListSO implements DataListSO {
  const factory _DataListSO(
      {@JsonKey(name: "t_so_h_etd_date") final String? tSoHEtdDate,
      @JsonKey(name: "t_so_h_id") final int? tSoHId,
      @JsonKey(name: "t_so_h_no") final String? tSoHNo,
      @JsonKey(name: "t_so_h_date") final String? tSoHDate,
      @JsonKey(name: "m_cust_name") final String? mCustName,
      @JsonKey(name: "t_so_h_cust_po_no") final String? tSoHCustPoNo,
      @JsonKey(name: "t_so_h_cust_po_date") final String? tSoHCustPoDate,
      @JsonKey(name: "t_so_h_totalnetto") final int? tSoHTotalnetto,
      @JsonKey(name: "t_so_h_status") final String? tSoHStatus,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "approved_by") final String? approvedBy,
      @JsonKey(name: "t_so_h_note") final String? tSoHNote,
      @JsonKey(name: "t_pra_so_h_no") final String? tPraSoHNo,
      @JsonKey(name: "m_cust_grup_wilayah_day") final int? mCustGrupWilayahDay,
      @JsonKey(name: "started_at") final dynamic startedAt,
      @JsonKey(name: "extended_at") final dynamic extendedAt,
      @JsonKey(name: "extended_flag") final String? extendedFlag,
      @JsonKey(name: "m_cust_id") final int? mCustId}) = _$DataListSOImpl;

  factory _DataListSO.fromJson(Map<String, dynamic> json) =
      _$DataListSOImpl.fromJson;

  @override
  @JsonKey(name: "t_so_h_etd_date")
  String? get tSoHEtdDate;
  @override
  @JsonKey(name: "t_so_h_id")
  int? get tSoHId;
  @override
  @JsonKey(name: "t_so_h_no")
  String? get tSoHNo;
  @override
  @JsonKey(name: "t_so_h_date")
  String? get tSoHDate;
  @override
  @JsonKey(name: "m_cust_name")
  String? get mCustName;
  @override
  @JsonKey(name: "t_so_h_cust_po_no")
  String? get tSoHCustPoNo;
  @override
  @JsonKey(name: "t_so_h_cust_po_date")
  String? get tSoHCustPoDate;
  @override
  @JsonKey(name: "t_so_h_totalnetto")
  int? get tSoHTotalnetto;
  @override
  @JsonKey(name: "t_so_h_status")
  String? get tSoHStatus;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "approved_by")
  String? get approvedBy;
  @override
  @JsonKey(name: "t_so_h_note")
  String? get tSoHNote;
  @override
  @JsonKey(name: "t_pra_so_h_no")
  String? get tPraSoHNo;
  @override
  @JsonKey(name: "m_cust_grup_wilayah_day")
  int? get mCustGrupWilayahDay;
  @override
  @JsonKey(name: "started_at")
  dynamic get startedAt;
  @override
  @JsonKey(name: "extended_at")
  dynamic get extendedAt;
  @override
  @JsonKey(name: "extended_flag")
  String? get extendedFlag;
  @override
  @JsonKey(name: "m_cust_id")
  int? get mCustId;
  @override
  @JsonKey(ignore: true)
  _$$DataListSOImplCopyWith<_$DataListSOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
