// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_detail_so.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDetailSo _$ResponseDetailSoFromJson(Map<String, dynamic> json) {
  return _ResponseDetailSo.fromJson(json);
}

/// @nodoc
mixin _$ResponseDetailSo {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataDetailSO? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDetailSoCopyWith<ResponseDetailSo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDetailSoCopyWith<$Res> {
  factory $ResponseDetailSoCopyWith(
          ResponseDetailSo value, $Res Function(ResponseDetailSo) then) =
      _$ResponseDetailSoCopyWithImpl<$Res, ResponseDetailSo>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") DataDetailSO? data});

  $DataDetailSOCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseDetailSoCopyWithImpl<$Res, $Val extends ResponseDetailSo>
    implements $ResponseDetailSoCopyWith<$Res> {
  _$ResponseDetailSoCopyWithImpl(this._value, this._then);

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
              as DataDetailSO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataDetailSOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataDetailSOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseDetailSoImplCopyWith<$Res>
    implements $ResponseDetailSoCopyWith<$Res> {
  factory _$$ResponseDetailSoImplCopyWith(_$ResponseDetailSoImpl value,
          $Res Function(_$ResponseDetailSoImpl) then) =
      __$$ResponseDetailSoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") DataDetailSO? data});

  @override
  $DataDetailSOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseDetailSoImplCopyWithImpl<$Res>
    extends _$ResponseDetailSoCopyWithImpl<$Res, _$ResponseDetailSoImpl>
    implements _$$ResponseDetailSoImplCopyWith<$Res> {
  __$$ResponseDetailSoImplCopyWithImpl(_$ResponseDetailSoImpl _value,
      $Res Function(_$ResponseDetailSoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDetailSoImpl(
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
              as DataDetailSO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDetailSoImpl implements _ResponseDetailSo {
  const _$ResponseDetailSoImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") this.data});

  factory _$ResponseDetailSoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDetailSoImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  @override
  @JsonKey(name: "data")
  final DataDetailSO? data;

  @override
  String toString() {
    return 'ResponseDetailSo(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDetailSoImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDetailSoImplCopyWith<_$ResponseDetailSoImpl> get copyWith =>
      __$$ResponseDetailSoImplCopyWithImpl<_$ResponseDetailSoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDetailSoImplToJson(
      this,
    );
  }
}

abstract class _ResponseDetailSo implements ResponseDetailSo {
  const factory _ResponseDetailSo(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final DataDetailSO? data}) =
      _$ResponseDetailSoImpl;

  factory _ResponseDetailSo.fromJson(Map<String, dynamic> json) =
      _$ResponseDetailSoImpl.fromJson;

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
  DataDetailSO? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDetailSoImplCopyWith<_$ResponseDetailSoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataDetailSO _$DataDetailSOFromJson(Map<String, dynamic> json) {
  return _DataDetailSO.fromJson(json);
}

/// @nodoc
mixin _$DataDetailSO {
  @JsonKey(name: "t_so_h_id")
  int? get tSoHId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_grup_wilayah_id")
  int? get tSoHGrupWilayahId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_id")
  int? get mCustId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_cust_namacetak")
  String? get tSoHCustNamacetak => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_cust_po_no")
  String? get tSoHCustPoNo => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_cust_po_date")
  String? get tSoHCustPoDate => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_totalamt")
  double? get tSoHTotalamt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_tipe_bykirim")
  String? get tSoHTipeBykirim => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_total_bykirim")
  double? get tSoHTotalBykirim => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_disctype")
  String? get tSoHDisctype => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_discpct")
  double? get tSoHDiscpct => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_discamt")
  double? get tSoHDiscamt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_totaldpp")
  double? get tSoHTotaldpp => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_taxtype")
  String? get tSoHTaxtype => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_taxpct")
  double? get tSoHTaxpct => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_taxamt")
  double? get tSoHTaxamt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_pph1_id")
  int? get tSoHPph1Id => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_pph1_pct")
  double? get tSoHPph1Pct => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_pph1_amt")
  double? get tSoHPph1Amt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_pph2_id")
  int? get tSoHPph2Id => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_pph2_pct")
  double? get tSoHPph2Pct => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_pph2_amt")
  double? get tSoHPph2Amt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_totalnetto")
  double? get tSoHTotalnetto => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_note")
  String? get tSoHNote => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_h_status")
  String? get tSoHStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d")
  List<BarangDetailSO>? get tSoD => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDetailSOCopyWith<DataDetailSO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDetailSOCopyWith<$Res> {
  factory $DataDetailSOCopyWith(
          DataDetailSO value, $Res Function(DataDetailSO) then) =
      _$DataDetailSOCopyWithImpl<$Res, DataDetailSO>;
  @useResult
  $Res call(
      {@JsonKey(name: "t_so_h_id") int? tSoHId,
      @JsonKey(name: "t_so_h_grup_wilayah_id") int? tSoHGrupWilayahId,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "t_so_h_cust_namacetak") String? tSoHCustNamacetak,
      @JsonKey(name: "t_so_h_cust_po_no") String? tSoHCustPoNo,
      @JsonKey(name: "t_so_h_cust_po_date") String? tSoHCustPoDate,
      @JsonKey(name: "t_so_h_totalamt") double? tSoHTotalamt,
      @JsonKey(name: "t_so_h_tipe_bykirim") String? tSoHTipeBykirim,
      @JsonKey(name: "t_so_h_total_bykirim") double? tSoHTotalBykirim,
      @JsonKey(name: "t_so_h_disctype") String? tSoHDisctype,
      @JsonKey(name: "t_so_h_discpct") double? tSoHDiscpct,
      @JsonKey(name: "t_so_h_discamt") double? tSoHDiscamt,
      @JsonKey(name: "t_so_h_totaldpp") double? tSoHTotaldpp,
      @JsonKey(name: "t_so_h_taxtype") String? tSoHTaxtype,
      @JsonKey(name: "t_so_h_taxpct") double? tSoHTaxpct,
      @JsonKey(name: "t_so_h_taxamt") double? tSoHTaxamt,
      @JsonKey(name: "t_so_h_pph1_id") int? tSoHPph1Id,
      @JsonKey(name: "t_so_h_pph1_pct") double? tSoHPph1Pct,
      @JsonKey(name: "t_so_h_pph1_amt") double? tSoHPph1Amt,
      @JsonKey(name: "t_so_h_pph2_id") int? tSoHPph2Id,
      @JsonKey(name: "t_so_h_pph2_pct") double? tSoHPph2Pct,
      @JsonKey(name: "t_so_h_pph2_amt") double? tSoHPph2Amt,
      @JsonKey(name: "t_so_h_totalnetto") double? tSoHTotalnetto,
      @JsonKey(name: "t_so_h_note") String? tSoHNote,
      @JsonKey(name: "t_so_h_status") String? tSoHStatus,
      @JsonKey(name: "t_so_d") List<BarangDetailSO>? tSoD});
}

/// @nodoc
class _$DataDetailSOCopyWithImpl<$Res, $Val extends DataDetailSO>
    implements $DataDetailSOCopyWith<$Res> {
  _$DataDetailSOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSoHId = freezed,
    Object? tSoHGrupWilayahId = freezed,
    Object? mCustId = freezed,
    Object? tSoHCustNamacetak = freezed,
    Object? tSoHCustPoNo = freezed,
    Object? tSoHCustPoDate = freezed,
    Object? tSoHTotalamt = freezed,
    Object? tSoHTipeBykirim = freezed,
    Object? tSoHTotalBykirim = freezed,
    Object? tSoHDisctype = freezed,
    Object? tSoHDiscpct = freezed,
    Object? tSoHDiscamt = freezed,
    Object? tSoHTotaldpp = freezed,
    Object? tSoHTaxtype = freezed,
    Object? tSoHTaxpct = freezed,
    Object? tSoHTaxamt = freezed,
    Object? tSoHPph1Id = freezed,
    Object? tSoHPph1Pct = freezed,
    Object? tSoHPph1Amt = freezed,
    Object? tSoHPph2Id = freezed,
    Object? tSoHPph2Pct = freezed,
    Object? tSoHPph2Amt = freezed,
    Object? tSoHTotalnetto = freezed,
    Object? tSoHNote = freezed,
    Object? tSoHStatus = freezed,
    Object? tSoD = freezed,
  }) {
    return _then(_value.copyWith(
      tSoHId: freezed == tSoHId
          ? _value.tSoHId
          : tSoHId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoHGrupWilayahId: freezed == tSoHGrupWilayahId
          ? _value.tSoHGrupWilayahId
          : tSoHGrupWilayahId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoHCustNamacetak: freezed == tSoHCustNamacetak
          ? _value.tSoHCustNamacetak
          : tSoHCustNamacetak // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHCustPoNo: freezed == tSoHCustPoNo
          ? _value.tSoHCustPoNo
          : tSoHCustPoNo // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHCustPoDate: freezed == tSoHCustPoDate
          ? _value.tSoHCustPoDate
          : tSoHCustPoDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHTotalamt: freezed == tSoHTotalamt
          ? _value.tSoHTotalamt
          : tSoHTotalamt // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHTipeBykirim: freezed == tSoHTipeBykirim
          ? _value.tSoHTipeBykirim
          : tSoHTipeBykirim // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHTotalBykirim: freezed == tSoHTotalBykirim
          ? _value.tSoHTotalBykirim
          : tSoHTotalBykirim // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHDisctype: freezed == tSoHDisctype
          ? _value.tSoHDisctype
          : tSoHDisctype // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHDiscpct: freezed == tSoHDiscpct
          ? _value.tSoHDiscpct
          : tSoHDiscpct // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHDiscamt: freezed == tSoHDiscamt
          ? _value.tSoHDiscamt
          : tSoHDiscamt // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHTotaldpp: freezed == tSoHTotaldpp
          ? _value.tSoHTotaldpp
          : tSoHTotaldpp // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHTaxtype: freezed == tSoHTaxtype
          ? _value.tSoHTaxtype
          : tSoHTaxtype // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHTaxpct: freezed == tSoHTaxpct
          ? _value.tSoHTaxpct
          : tSoHTaxpct // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHTaxamt: freezed == tSoHTaxamt
          ? _value.tSoHTaxamt
          : tSoHTaxamt // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHPph1Id: freezed == tSoHPph1Id
          ? _value.tSoHPph1Id
          : tSoHPph1Id // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoHPph1Pct: freezed == tSoHPph1Pct
          ? _value.tSoHPph1Pct
          : tSoHPph1Pct // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHPph1Amt: freezed == tSoHPph1Amt
          ? _value.tSoHPph1Amt
          : tSoHPph1Amt // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHPph2Id: freezed == tSoHPph2Id
          ? _value.tSoHPph2Id
          : tSoHPph2Id // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoHPph2Pct: freezed == tSoHPph2Pct
          ? _value.tSoHPph2Pct
          : tSoHPph2Pct // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHPph2Amt: freezed == tSoHPph2Amt
          ? _value.tSoHPph2Amt
          : tSoHPph2Amt // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHTotalnetto: freezed == tSoHTotalnetto
          ? _value.tSoHTotalnetto
          : tSoHTotalnetto // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHNote: freezed == tSoHNote
          ? _value.tSoHNote
          : tSoHNote // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHStatus: freezed == tSoHStatus
          ? _value.tSoHStatus
          : tSoHStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoD: freezed == tSoD
          ? _value.tSoD
          : tSoD // ignore: cast_nullable_to_non_nullable
              as List<BarangDetailSO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDetailSOImplCopyWith<$Res>
    implements $DataDetailSOCopyWith<$Res> {
  factory _$$DataDetailSOImplCopyWith(
          _$DataDetailSOImpl value, $Res Function(_$DataDetailSOImpl) then) =
      __$$DataDetailSOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "t_so_h_id") int? tSoHId,
      @JsonKey(name: "t_so_h_grup_wilayah_id") int? tSoHGrupWilayahId,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "t_so_h_cust_namacetak") String? tSoHCustNamacetak,
      @JsonKey(name: "t_so_h_cust_po_no") String? tSoHCustPoNo,
      @JsonKey(name: "t_so_h_cust_po_date") String? tSoHCustPoDate,
      @JsonKey(name: "t_so_h_totalamt") double? tSoHTotalamt,
      @JsonKey(name: "t_so_h_tipe_bykirim") String? tSoHTipeBykirim,
      @JsonKey(name: "t_so_h_total_bykirim") double? tSoHTotalBykirim,
      @JsonKey(name: "t_so_h_disctype") String? tSoHDisctype,
      @JsonKey(name: "t_so_h_discpct") double? tSoHDiscpct,
      @JsonKey(name: "t_so_h_discamt") double? tSoHDiscamt,
      @JsonKey(name: "t_so_h_totaldpp") double? tSoHTotaldpp,
      @JsonKey(name: "t_so_h_taxtype") String? tSoHTaxtype,
      @JsonKey(name: "t_so_h_taxpct") double? tSoHTaxpct,
      @JsonKey(name: "t_so_h_taxamt") double? tSoHTaxamt,
      @JsonKey(name: "t_so_h_pph1_id") int? tSoHPph1Id,
      @JsonKey(name: "t_so_h_pph1_pct") double? tSoHPph1Pct,
      @JsonKey(name: "t_so_h_pph1_amt") double? tSoHPph1Amt,
      @JsonKey(name: "t_so_h_pph2_id") int? tSoHPph2Id,
      @JsonKey(name: "t_so_h_pph2_pct") double? tSoHPph2Pct,
      @JsonKey(name: "t_so_h_pph2_amt") double? tSoHPph2Amt,
      @JsonKey(name: "t_so_h_totalnetto") double? tSoHTotalnetto,
      @JsonKey(name: "t_so_h_note") String? tSoHNote,
      @JsonKey(name: "t_so_h_status") String? tSoHStatus,
      @JsonKey(name: "t_so_d") List<BarangDetailSO>? tSoD});
}

/// @nodoc
class __$$DataDetailSOImplCopyWithImpl<$Res>
    extends _$DataDetailSOCopyWithImpl<$Res, _$DataDetailSOImpl>
    implements _$$DataDetailSOImplCopyWith<$Res> {
  __$$DataDetailSOImplCopyWithImpl(
      _$DataDetailSOImpl _value, $Res Function(_$DataDetailSOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSoHId = freezed,
    Object? tSoHGrupWilayahId = freezed,
    Object? mCustId = freezed,
    Object? tSoHCustNamacetak = freezed,
    Object? tSoHCustPoNo = freezed,
    Object? tSoHCustPoDate = freezed,
    Object? tSoHTotalamt = freezed,
    Object? tSoHTipeBykirim = freezed,
    Object? tSoHTotalBykirim = freezed,
    Object? tSoHDisctype = freezed,
    Object? tSoHDiscpct = freezed,
    Object? tSoHDiscamt = freezed,
    Object? tSoHTotaldpp = freezed,
    Object? tSoHTaxtype = freezed,
    Object? tSoHTaxpct = freezed,
    Object? tSoHTaxamt = freezed,
    Object? tSoHPph1Id = freezed,
    Object? tSoHPph1Pct = freezed,
    Object? tSoHPph1Amt = freezed,
    Object? tSoHPph2Id = freezed,
    Object? tSoHPph2Pct = freezed,
    Object? tSoHPph2Amt = freezed,
    Object? tSoHTotalnetto = freezed,
    Object? tSoHNote = freezed,
    Object? tSoHStatus = freezed,
    Object? tSoD = freezed,
  }) {
    return _then(_$DataDetailSOImpl(
      tSoHId: freezed == tSoHId
          ? _value.tSoHId
          : tSoHId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoHGrupWilayahId: freezed == tSoHGrupWilayahId
          ? _value.tSoHGrupWilayahId
          : tSoHGrupWilayahId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoHCustNamacetak: freezed == tSoHCustNamacetak
          ? _value.tSoHCustNamacetak
          : tSoHCustNamacetak // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHCustPoNo: freezed == tSoHCustPoNo
          ? _value.tSoHCustPoNo
          : tSoHCustPoNo // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHCustPoDate: freezed == tSoHCustPoDate
          ? _value.tSoHCustPoDate
          : tSoHCustPoDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHTotalamt: freezed == tSoHTotalamt
          ? _value.tSoHTotalamt
          : tSoHTotalamt // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHTipeBykirim: freezed == tSoHTipeBykirim
          ? _value.tSoHTipeBykirim
          : tSoHTipeBykirim // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHTotalBykirim: freezed == tSoHTotalBykirim
          ? _value.tSoHTotalBykirim
          : tSoHTotalBykirim // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHDisctype: freezed == tSoHDisctype
          ? _value.tSoHDisctype
          : tSoHDisctype // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHDiscpct: freezed == tSoHDiscpct
          ? _value.tSoHDiscpct
          : tSoHDiscpct // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHDiscamt: freezed == tSoHDiscamt
          ? _value.tSoHDiscamt
          : tSoHDiscamt // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHTotaldpp: freezed == tSoHTotaldpp
          ? _value.tSoHTotaldpp
          : tSoHTotaldpp // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHTaxtype: freezed == tSoHTaxtype
          ? _value.tSoHTaxtype
          : tSoHTaxtype // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHTaxpct: freezed == tSoHTaxpct
          ? _value.tSoHTaxpct
          : tSoHTaxpct // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHTaxamt: freezed == tSoHTaxamt
          ? _value.tSoHTaxamt
          : tSoHTaxamt // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHPph1Id: freezed == tSoHPph1Id
          ? _value.tSoHPph1Id
          : tSoHPph1Id // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoHPph1Pct: freezed == tSoHPph1Pct
          ? _value.tSoHPph1Pct
          : tSoHPph1Pct // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHPph1Amt: freezed == tSoHPph1Amt
          ? _value.tSoHPph1Amt
          : tSoHPph1Amt // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHPph2Id: freezed == tSoHPph2Id
          ? _value.tSoHPph2Id
          : tSoHPph2Id // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoHPph2Pct: freezed == tSoHPph2Pct
          ? _value.tSoHPph2Pct
          : tSoHPph2Pct // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHPph2Amt: freezed == tSoHPph2Amt
          ? _value.tSoHPph2Amt
          : tSoHPph2Amt // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHTotalnetto: freezed == tSoHTotalnetto
          ? _value.tSoHTotalnetto
          : tSoHTotalnetto // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoHNote: freezed == tSoHNote
          ? _value.tSoHNote
          : tSoHNote // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoHStatus: freezed == tSoHStatus
          ? _value.tSoHStatus
          : tSoHStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoD: freezed == tSoD
          ? _value._tSoD
          : tSoD // ignore: cast_nullable_to_non_nullable
              as List<BarangDetailSO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDetailSOImpl implements _DataDetailSO {
  const _$DataDetailSOImpl(
      {@JsonKey(name: "t_so_h_id") this.tSoHId,
      @JsonKey(name: "t_so_h_grup_wilayah_id") this.tSoHGrupWilayahId,
      @JsonKey(name: "m_cust_id") this.mCustId,
      @JsonKey(name: "t_so_h_cust_namacetak") this.tSoHCustNamacetak,
      @JsonKey(name: "t_so_h_cust_po_no") this.tSoHCustPoNo,
      @JsonKey(name: "t_so_h_cust_po_date") this.tSoHCustPoDate,
      @JsonKey(name: "t_so_h_totalamt") this.tSoHTotalamt,
      @JsonKey(name: "t_so_h_tipe_bykirim") this.tSoHTipeBykirim,
      @JsonKey(name: "t_so_h_total_bykirim") this.tSoHTotalBykirim,
      @JsonKey(name: "t_so_h_disctype") this.tSoHDisctype,
      @JsonKey(name: "t_so_h_discpct") this.tSoHDiscpct,
      @JsonKey(name: "t_so_h_discamt") this.tSoHDiscamt,
      @JsonKey(name: "t_so_h_totaldpp") this.tSoHTotaldpp,
      @JsonKey(name: "t_so_h_taxtype") this.tSoHTaxtype,
      @JsonKey(name: "t_so_h_taxpct") this.tSoHTaxpct,
      @JsonKey(name: "t_so_h_taxamt") this.tSoHTaxamt,
      @JsonKey(name: "t_so_h_pph1_id") this.tSoHPph1Id,
      @JsonKey(name: "t_so_h_pph1_pct") this.tSoHPph1Pct,
      @JsonKey(name: "t_so_h_pph1_amt") this.tSoHPph1Amt,
      @JsonKey(name: "t_so_h_pph2_id") this.tSoHPph2Id,
      @JsonKey(name: "t_so_h_pph2_pct") this.tSoHPph2Pct,
      @JsonKey(name: "t_so_h_pph2_amt") this.tSoHPph2Amt,
      @JsonKey(name: "t_so_h_totalnetto") this.tSoHTotalnetto,
      @JsonKey(name: "t_so_h_note") this.tSoHNote,
      @JsonKey(name: "t_so_h_status") this.tSoHStatus,
      @JsonKey(name: "t_so_d") final List<BarangDetailSO>? tSoD})
      : _tSoD = tSoD;

  factory _$DataDetailSOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDetailSOImplFromJson(json);

  @override
  @JsonKey(name: "t_so_h_id")
  final int? tSoHId;
  @override
  @JsonKey(name: "t_so_h_grup_wilayah_id")
  final int? tSoHGrupWilayahId;
  @override
  @JsonKey(name: "m_cust_id")
  final int? mCustId;
  @override
  @JsonKey(name: "t_so_h_cust_namacetak")
  final String? tSoHCustNamacetak;
  @override
  @JsonKey(name: "t_so_h_cust_po_no")
  final String? tSoHCustPoNo;
  @override
  @JsonKey(name: "t_so_h_cust_po_date")
  final String? tSoHCustPoDate;
  @override
  @JsonKey(name: "t_so_h_totalamt")
  final double? tSoHTotalamt;
  @override
  @JsonKey(name: "t_so_h_tipe_bykirim")
  final String? tSoHTipeBykirim;
  @override
  @JsonKey(name: "t_so_h_total_bykirim")
  final double? tSoHTotalBykirim;
  @override
  @JsonKey(name: "t_so_h_disctype")
  final String? tSoHDisctype;
  @override
  @JsonKey(name: "t_so_h_discpct")
  final double? tSoHDiscpct;
  @override
  @JsonKey(name: "t_so_h_discamt")
  final double? tSoHDiscamt;
  @override
  @JsonKey(name: "t_so_h_totaldpp")
  final double? tSoHTotaldpp;
  @override
  @JsonKey(name: "t_so_h_taxtype")
  final String? tSoHTaxtype;
  @override
  @JsonKey(name: "t_so_h_taxpct")
  final double? tSoHTaxpct;
  @override
  @JsonKey(name: "t_so_h_taxamt")
  final double? tSoHTaxamt;
  @override
  @JsonKey(name: "t_so_h_pph1_id")
  final int? tSoHPph1Id;
  @override
  @JsonKey(name: "t_so_h_pph1_pct")
  final double? tSoHPph1Pct;
  @override
  @JsonKey(name: "t_so_h_pph1_amt")
  final double? tSoHPph1Amt;
  @override
  @JsonKey(name: "t_so_h_pph2_id")
  final int? tSoHPph2Id;
  @override
  @JsonKey(name: "t_so_h_pph2_pct")
  final double? tSoHPph2Pct;
  @override
  @JsonKey(name: "t_so_h_pph2_amt")
  final double? tSoHPph2Amt;
  @override
  @JsonKey(name: "t_so_h_totalnetto")
  final double? tSoHTotalnetto;
  @override
  @JsonKey(name: "t_so_h_note")
  final String? tSoHNote;
  @override
  @JsonKey(name: "t_so_h_status")
  final String? tSoHStatus;
  final List<BarangDetailSO>? _tSoD;
  @override
  @JsonKey(name: "t_so_d")
  List<BarangDetailSO>? get tSoD {
    final value = _tSoD;
    if (value == null) return null;
    if (_tSoD is EqualUnmodifiableListView) return _tSoD;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataDetailSO(tSoHId: $tSoHId, tSoHGrupWilayahId: $tSoHGrupWilayahId, mCustId: $mCustId, tSoHCustNamacetak: $tSoHCustNamacetak, tSoHCustPoNo: $tSoHCustPoNo, tSoHCustPoDate: $tSoHCustPoDate, tSoHTotalamt: $tSoHTotalamt, tSoHTipeBykirim: $tSoHTipeBykirim, tSoHTotalBykirim: $tSoHTotalBykirim, tSoHDisctype: $tSoHDisctype, tSoHDiscpct: $tSoHDiscpct, tSoHDiscamt: $tSoHDiscamt, tSoHTotaldpp: $tSoHTotaldpp, tSoHTaxtype: $tSoHTaxtype, tSoHTaxpct: $tSoHTaxpct, tSoHTaxamt: $tSoHTaxamt, tSoHPph1Id: $tSoHPph1Id, tSoHPph1Pct: $tSoHPph1Pct, tSoHPph1Amt: $tSoHPph1Amt, tSoHPph2Id: $tSoHPph2Id, tSoHPph2Pct: $tSoHPph2Pct, tSoHPph2Amt: $tSoHPph2Amt, tSoHTotalnetto: $tSoHTotalnetto, tSoHNote: $tSoHNote, tSoHStatus: $tSoHStatus, tSoD: $tSoD)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDetailSOImpl &&
            (identical(other.tSoHId, tSoHId) || other.tSoHId == tSoHId) &&
            (identical(other.tSoHGrupWilayahId, tSoHGrupWilayahId) ||
                other.tSoHGrupWilayahId == tSoHGrupWilayahId) &&
            (identical(other.mCustId, mCustId) || other.mCustId == mCustId) &&
            (identical(other.tSoHCustNamacetak, tSoHCustNamacetak) ||
                other.tSoHCustNamacetak == tSoHCustNamacetak) &&
            (identical(other.tSoHCustPoNo, tSoHCustPoNo) ||
                other.tSoHCustPoNo == tSoHCustPoNo) &&
            (identical(other.tSoHCustPoDate, tSoHCustPoDate) ||
                other.tSoHCustPoDate == tSoHCustPoDate) &&
            (identical(other.tSoHTotalamt, tSoHTotalamt) ||
                other.tSoHTotalamt == tSoHTotalamt) &&
            (identical(other.tSoHTipeBykirim, tSoHTipeBykirim) ||
                other.tSoHTipeBykirim == tSoHTipeBykirim) &&
            (identical(other.tSoHTotalBykirim, tSoHTotalBykirim) ||
                other.tSoHTotalBykirim == tSoHTotalBykirim) &&
            (identical(other.tSoHDisctype, tSoHDisctype) ||
                other.tSoHDisctype == tSoHDisctype) &&
            (identical(other.tSoHDiscpct, tSoHDiscpct) ||
                other.tSoHDiscpct == tSoHDiscpct) &&
            (identical(other.tSoHDiscamt, tSoHDiscamt) ||
                other.tSoHDiscamt == tSoHDiscamt) &&
            (identical(other.tSoHTotaldpp, tSoHTotaldpp) ||
                other.tSoHTotaldpp == tSoHTotaldpp) &&
            (identical(other.tSoHTaxtype, tSoHTaxtype) ||
                other.tSoHTaxtype == tSoHTaxtype) &&
            (identical(other.tSoHTaxpct, tSoHTaxpct) ||
                other.tSoHTaxpct == tSoHTaxpct) &&
            (identical(other.tSoHTaxamt, tSoHTaxamt) ||
                other.tSoHTaxamt == tSoHTaxamt) &&
            (identical(other.tSoHPph1Id, tSoHPph1Id) ||
                other.tSoHPph1Id == tSoHPph1Id) &&
            (identical(other.tSoHPph1Pct, tSoHPph1Pct) ||
                other.tSoHPph1Pct == tSoHPph1Pct) &&
            (identical(other.tSoHPph1Amt, tSoHPph1Amt) ||
                other.tSoHPph1Amt == tSoHPph1Amt) &&
            (identical(other.tSoHPph2Id, tSoHPph2Id) ||
                other.tSoHPph2Id == tSoHPph2Id) &&
            (identical(other.tSoHPph2Pct, tSoHPph2Pct) ||
                other.tSoHPph2Pct == tSoHPph2Pct) &&
            (identical(other.tSoHPph2Amt, tSoHPph2Amt) ||
                other.tSoHPph2Amt == tSoHPph2Amt) &&
            (identical(other.tSoHTotalnetto, tSoHTotalnetto) ||
                other.tSoHTotalnetto == tSoHTotalnetto) &&
            (identical(other.tSoHNote, tSoHNote) ||
                other.tSoHNote == tSoHNote) &&
            (identical(other.tSoHStatus, tSoHStatus) ||
                other.tSoHStatus == tSoHStatus) &&
            const DeepCollectionEquality().equals(other._tSoD, _tSoD));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        tSoHId,
        tSoHGrupWilayahId,
        mCustId,
        tSoHCustNamacetak,
        tSoHCustPoNo,
        tSoHCustPoDate,
        tSoHTotalamt,
        tSoHTipeBykirim,
        tSoHTotalBykirim,
        tSoHDisctype,
        tSoHDiscpct,
        tSoHDiscamt,
        tSoHTotaldpp,
        tSoHTaxtype,
        tSoHTaxpct,
        tSoHTaxamt,
        tSoHPph1Id,
        tSoHPph1Pct,
        tSoHPph1Amt,
        tSoHPph2Id,
        tSoHPph2Pct,
        tSoHPph2Amt,
        tSoHTotalnetto,
        tSoHNote,
        tSoHStatus,
        const DeepCollectionEquality().hash(_tSoD)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDetailSOImplCopyWith<_$DataDetailSOImpl> get copyWith =>
      __$$DataDetailSOImplCopyWithImpl<_$DataDetailSOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDetailSOImplToJson(
      this,
    );
  }
}

abstract class _DataDetailSO implements DataDetailSO {
  const factory _DataDetailSO(
      {@JsonKey(name: "t_so_h_id") final int? tSoHId,
      @JsonKey(name: "t_so_h_grup_wilayah_id") final int? tSoHGrupWilayahId,
      @JsonKey(name: "m_cust_id") final int? mCustId,
      @JsonKey(name: "t_so_h_cust_namacetak") final String? tSoHCustNamacetak,
      @JsonKey(name: "t_so_h_cust_po_no") final String? tSoHCustPoNo,
      @JsonKey(name: "t_so_h_cust_po_date") final String? tSoHCustPoDate,
      @JsonKey(name: "t_so_h_totalamt") final double? tSoHTotalamt,
      @JsonKey(name: "t_so_h_tipe_bykirim") final String? tSoHTipeBykirim,
      @JsonKey(name: "t_so_h_total_bykirim") final double? tSoHTotalBykirim,
      @JsonKey(name: "t_so_h_disctype") final String? tSoHDisctype,
      @JsonKey(name: "t_so_h_discpct") final double? tSoHDiscpct,
      @JsonKey(name: "t_so_h_discamt") final double? tSoHDiscamt,
      @JsonKey(name: "t_so_h_totaldpp") final double? tSoHTotaldpp,
      @JsonKey(name: "t_so_h_taxtype") final String? tSoHTaxtype,
      @JsonKey(name: "t_so_h_taxpct") final double? tSoHTaxpct,
      @JsonKey(name: "t_so_h_taxamt") final double? tSoHTaxamt,
      @JsonKey(name: "t_so_h_pph1_id") final int? tSoHPph1Id,
      @JsonKey(name: "t_so_h_pph1_pct") final double? tSoHPph1Pct,
      @JsonKey(name: "t_so_h_pph1_amt") final double? tSoHPph1Amt,
      @JsonKey(name: "t_so_h_pph2_id") final int? tSoHPph2Id,
      @JsonKey(name: "t_so_h_pph2_pct") final double? tSoHPph2Pct,
      @JsonKey(name: "t_so_h_pph2_amt") final double? tSoHPph2Amt,
      @JsonKey(name: "t_so_h_totalnetto") final double? tSoHTotalnetto,
      @JsonKey(name: "t_so_h_note") final String? tSoHNote,
      @JsonKey(name: "t_so_h_status") final String? tSoHStatus,
      @JsonKey(name: "t_so_d")
      final List<BarangDetailSO>? tSoD}) = _$DataDetailSOImpl;

  factory _DataDetailSO.fromJson(Map<String, dynamic> json) =
      _$DataDetailSOImpl.fromJson;

  @override
  @JsonKey(name: "t_so_h_id")
  int? get tSoHId;
  @override
  @JsonKey(name: "t_so_h_grup_wilayah_id")
  int? get tSoHGrupWilayahId;
  @override
  @JsonKey(name: "m_cust_id")
  int? get mCustId;
  @override
  @JsonKey(name: "t_so_h_cust_namacetak")
  String? get tSoHCustNamacetak;
  @override
  @JsonKey(name: "t_so_h_cust_po_no")
  String? get tSoHCustPoNo;
  @override
  @JsonKey(name: "t_so_h_cust_po_date")
  String? get tSoHCustPoDate;
  @override
  @JsonKey(name: "t_so_h_totalamt")
  double? get tSoHTotalamt;
  @override
  @JsonKey(name: "t_so_h_tipe_bykirim")
  String? get tSoHTipeBykirim;
  @override
  @JsonKey(name: "t_so_h_total_bykirim")
  double? get tSoHTotalBykirim;
  @override
  @JsonKey(name: "t_so_h_disctype")
  String? get tSoHDisctype;
  @override
  @JsonKey(name: "t_so_h_discpct")
  double? get tSoHDiscpct;
  @override
  @JsonKey(name: "t_so_h_discamt")
  double? get tSoHDiscamt;
  @override
  @JsonKey(name: "t_so_h_totaldpp")
  double? get tSoHTotaldpp;
  @override
  @JsonKey(name: "t_so_h_taxtype")
  String? get tSoHTaxtype;
  @override
  @JsonKey(name: "t_so_h_taxpct")
  double? get tSoHTaxpct;
  @override
  @JsonKey(name: "t_so_h_taxamt")
  double? get tSoHTaxamt;
  @override
  @JsonKey(name: "t_so_h_pph1_id")
  int? get tSoHPph1Id;
  @override
  @JsonKey(name: "t_so_h_pph1_pct")
  double? get tSoHPph1Pct;
  @override
  @JsonKey(name: "t_so_h_pph1_amt")
  double? get tSoHPph1Amt;
  @override
  @JsonKey(name: "t_so_h_pph2_id")
  int? get tSoHPph2Id;
  @override
  @JsonKey(name: "t_so_h_pph2_pct")
  double? get tSoHPph2Pct;
  @override
  @JsonKey(name: "t_so_h_pph2_amt")
  double? get tSoHPph2Amt;
  @override
  @JsonKey(name: "t_so_h_totalnetto")
  double? get tSoHTotalnetto;
  @override
  @JsonKey(name: "t_so_h_note")
  String? get tSoHNote;
  @override
  @JsonKey(name: "t_so_h_status")
  String? get tSoHStatus;
  @override
  @JsonKey(name: "t_so_d")
  List<BarangDetailSO>? get tSoD;
  @override
  @JsonKey(ignore: true)
  _$$DataDetailSOImplCopyWith<_$DataDetailSOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BarangDetailSO _$BarangDetailSOFromJson(Map<String, dynamic> json) {
  return _BarangDetailSO.fromJson(json);
}

/// @nodoc
mixin _$BarangDetailSO {
  @JsonKey(name: "t_so_d_id")
  int? get tSoDId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_id")
  int? get mItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_jenis")
  String? get mItemJenis => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_longdesc")
  String? get mItemLongdesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_code")
  String? get mItemCode => throw _privateConstructorUsedError;
  @JsonKey(name: "qty_stock")
  int? get qtyStock => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_qty")
  int? get tSoDQty => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_unit_id")
  int? get tSoDUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_unit")
  String? get tSoDUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_price")
  double? get tSoDPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_amt")
  double? get tSoDAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_bykirim")
  int? get tSoDBykirim => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_note")
  String? get tSoDNote => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_konversi")
  double? get mItemKonversi => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_sket")
  dynamic get mItemSket => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_warna")
  dynamic get mItemWarna => throw _privateConstructorUsedError;
  @JsonKey(name: "jt_flag")
  String? get jtFlag => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_jto_khusus_id")
  int? get mItemJtoKhususId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarangDetailSOCopyWith<BarangDetailSO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarangDetailSOCopyWith<$Res> {
  factory $BarangDetailSOCopyWith(
          BarangDetailSO value, $Res Function(BarangDetailSO) then) =
      _$BarangDetailSOCopyWithImpl<$Res, BarangDetailSO>;
  @useResult
  $Res call(
      {@JsonKey(name: "t_so_d_id") int? tSoDId,
      @JsonKey(name: "m_item_id") int? mItemId,
      @JsonKey(name: "m_item_jenis") String? mItemJenis,
      @JsonKey(name: "m_item_longdesc") String? mItemLongdesc,
      @JsonKey(name: "m_item_code") String? mItemCode,
      @JsonKey(name: "qty_stock") int? qtyStock,
      @JsonKey(name: "t_so_d_qty") int? tSoDQty,
      @JsonKey(name: "t_so_d_unit_id") int? tSoDUnitId,
      @JsonKey(name: "t_so_d_unit") String? tSoDUnit,
      @JsonKey(name: "t_so_d_price") double? tSoDPrice,
      @JsonKey(name: "t_so_d_amt") double? tSoDAmt,
      @JsonKey(name: "t_so_d_bykirim") int? tSoDBykirim,
      @JsonKey(name: "t_so_d_note") String? tSoDNote,
      @JsonKey(name: "m_item_konversi") double? mItemKonversi,
      @JsonKey(name: "m_item_sket") dynamic mItemSket,
      @JsonKey(name: "m_item_warna") dynamic mItemWarna,
      @JsonKey(name: "jt_flag") String? jtFlag,
      @JsonKey(name: "m_item_jto_khusus_id") int? mItemJtoKhususId});
}

/// @nodoc
class _$BarangDetailSOCopyWithImpl<$Res, $Val extends BarangDetailSO>
    implements $BarangDetailSOCopyWith<$Res> {
  _$BarangDetailSOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSoDId = freezed,
    Object? mItemId = freezed,
    Object? mItemJenis = freezed,
    Object? mItemLongdesc = freezed,
    Object? mItemCode = freezed,
    Object? qtyStock = freezed,
    Object? tSoDQty = freezed,
    Object? tSoDUnitId = freezed,
    Object? tSoDUnit = freezed,
    Object? tSoDPrice = freezed,
    Object? tSoDAmt = freezed,
    Object? tSoDBykirim = freezed,
    Object? tSoDNote = freezed,
    Object? mItemKonversi = freezed,
    Object? mItemSket = freezed,
    Object? mItemWarna = freezed,
    Object? jtFlag = freezed,
    Object? mItemJtoKhususId = freezed,
  }) {
    return _then(_value.copyWith(
      tSoDId: freezed == tSoDId
          ? _value.tSoDId
          : tSoDId // ignore: cast_nullable_to_non_nullable
              as int?,
      mItemId: freezed == mItemId
          ? _value.mItemId
          : mItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      mItemJenis: freezed == mItemJenis
          ? _value.mItemJenis
          : mItemJenis // ignore: cast_nullable_to_non_nullable
              as String?,
      mItemLongdesc: freezed == mItemLongdesc
          ? _value.mItemLongdesc
          : mItemLongdesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mItemCode: freezed == mItemCode
          ? _value.mItemCode
          : mItemCode // ignore: cast_nullable_to_non_nullable
              as String?,
      qtyStock: freezed == qtyStock
          ? _value.qtyStock
          : qtyStock // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoDQty: freezed == tSoDQty
          ? _value.tSoDQty
          : tSoDQty // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoDUnitId: freezed == tSoDUnitId
          ? _value.tSoDUnitId
          : tSoDUnitId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoDUnit: freezed == tSoDUnit
          ? _value.tSoDUnit
          : tSoDUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoDPrice: freezed == tSoDPrice
          ? _value.tSoDPrice
          : tSoDPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoDAmt: freezed == tSoDAmt
          ? _value.tSoDAmt
          : tSoDAmt // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoDBykirim: freezed == tSoDBykirim
          ? _value.tSoDBykirim
          : tSoDBykirim // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoDNote: freezed == tSoDNote
          ? _value.tSoDNote
          : tSoDNote // ignore: cast_nullable_to_non_nullable
              as String?,
      mItemKonversi: freezed == mItemKonversi
          ? _value.mItemKonversi
          : mItemKonversi // ignore: cast_nullable_to_non_nullable
              as double?,
      mItemSket: freezed == mItemSket
          ? _value.mItemSket
          : mItemSket // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mItemWarna: freezed == mItemWarna
          ? _value.mItemWarna
          : mItemWarna // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jtFlag: freezed == jtFlag
          ? _value.jtFlag
          : jtFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      mItemJtoKhususId: freezed == mItemJtoKhususId
          ? _value.mItemJtoKhususId
          : mItemJtoKhususId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarangDetailSOImplCopyWith<$Res>
    implements $BarangDetailSOCopyWith<$Res> {
  factory _$$BarangDetailSOImplCopyWith(_$BarangDetailSOImpl value,
          $Res Function(_$BarangDetailSOImpl) then) =
      __$$BarangDetailSOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "t_so_d_id") int? tSoDId,
      @JsonKey(name: "m_item_id") int? mItemId,
      @JsonKey(name: "m_item_jenis") String? mItemJenis,
      @JsonKey(name: "m_item_longdesc") String? mItemLongdesc,
      @JsonKey(name: "m_item_code") String? mItemCode,
      @JsonKey(name: "qty_stock") int? qtyStock,
      @JsonKey(name: "t_so_d_qty") int? tSoDQty,
      @JsonKey(name: "t_so_d_unit_id") int? tSoDUnitId,
      @JsonKey(name: "t_so_d_unit") String? tSoDUnit,
      @JsonKey(name: "t_so_d_price") double? tSoDPrice,
      @JsonKey(name: "t_so_d_amt") double? tSoDAmt,
      @JsonKey(name: "t_so_d_bykirim") int? tSoDBykirim,
      @JsonKey(name: "t_so_d_note") String? tSoDNote,
      @JsonKey(name: "m_item_konversi") double? mItemKonversi,
      @JsonKey(name: "m_item_sket") dynamic mItemSket,
      @JsonKey(name: "m_item_warna") dynamic mItemWarna,
      @JsonKey(name: "jt_flag") String? jtFlag,
      @JsonKey(name: "m_item_jto_khusus_id") int? mItemJtoKhususId});
}

/// @nodoc
class __$$BarangDetailSOImplCopyWithImpl<$Res>
    extends _$BarangDetailSOCopyWithImpl<$Res, _$BarangDetailSOImpl>
    implements _$$BarangDetailSOImplCopyWith<$Res> {
  __$$BarangDetailSOImplCopyWithImpl(
      _$BarangDetailSOImpl _value, $Res Function(_$BarangDetailSOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSoDId = freezed,
    Object? mItemId = freezed,
    Object? mItemJenis = freezed,
    Object? mItemLongdesc = freezed,
    Object? mItemCode = freezed,
    Object? qtyStock = freezed,
    Object? tSoDQty = freezed,
    Object? tSoDUnitId = freezed,
    Object? tSoDUnit = freezed,
    Object? tSoDPrice = freezed,
    Object? tSoDAmt = freezed,
    Object? tSoDBykirim = freezed,
    Object? tSoDNote = freezed,
    Object? mItemKonversi = freezed,
    Object? mItemSket = freezed,
    Object? mItemWarna = freezed,
    Object? jtFlag = freezed,
    Object? mItemJtoKhususId = freezed,
  }) {
    return _then(_$BarangDetailSOImpl(
      tSoDId: freezed == tSoDId
          ? _value.tSoDId
          : tSoDId // ignore: cast_nullable_to_non_nullable
              as int?,
      mItemId: freezed == mItemId
          ? _value.mItemId
          : mItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      mItemJenis: freezed == mItemJenis
          ? _value.mItemJenis
          : mItemJenis // ignore: cast_nullable_to_non_nullable
              as String?,
      mItemLongdesc: freezed == mItemLongdesc
          ? _value.mItemLongdesc
          : mItemLongdesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mItemCode: freezed == mItemCode
          ? _value.mItemCode
          : mItemCode // ignore: cast_nullable_to_non_nullable
              as String?,
      qtyStock: freezed == qtyStock
          ? _value.qtyStock
          : qtyStock // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoDQty: freezed == tSoDQty
          ? _value.tSoDQty
          : tSoDQty // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoDUnitId: freezed == tSoDUnitId
          ? _value.tSoDUnitId
          : tSoDUnitId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoDUnit: freezed == tSoDUnit
          ? _value.tSoDUnit
          : tSoDUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      tSoDPrice: freezed == tSoDPrice
          ? _value.tSoDPrice
          : tSoDPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoDAmt: freezed == tSoDAmt
          ? _value.tSoDAmt
          : tSoDAmt // ignore: cast_nullable_to_non_nullable
              as double?,
      tSoDBykirim: freezed == tSoDBykirim
          ? _value.tSoDBykirim
          : tSoDBykirim // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoDNote: freezed == tSoDNote
          ? _value.tSoDNote
          : tSoDNote // ignore: cast_nullable_to_non_nullable
              as String?,
      mItemKonversi: freezed == mItemKonversi
          ? _value.mItemKonversi
          : mItemKonversi // ignore: cast_nullable_to_non_nullable
              as double?,
      mItemSket: freezed == mItemSket
          ? _value.mItemSket
          : mItemSket // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mItemWarna: freezed == mItemWarna
          ? _value.mItemWarna
          : mItemWarna // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jtFlag: freezed == jtFlag
          ? _value.jtFlag
          : jtFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      mItemJtoKhususId: freezed == mItemJtoKhususId
          ? _value.mItemJtoKhususId
          : mItemJtoKhususId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarangDetailSOImpl implements _BarangDetailSO {
  const _$BarangDetailSOImpl(
      {@JsonKey(name: "t_so_d_id") this.tSoDId,
      @JsonKey(name: "m_item_id") this.mItemId,
      @JsonKey(name: "m_item_jenis") this.mItemJenis,
      @JsonKey(name: "m_item_longdesc") this.mItemLongdesc,
      @JsonKey(name: "m_item_code") this.mItemCode,
      @JsonKey(name: "qty_stock") this.qtyStock,
      @JsonKey(name: "t_so_d_qty") this.tSoDQty,
      @JsonKey(name: "t_so_d_unit_id") this.tSoDUnitId,
      @JsonKey(name: "t_so_d_unit") this.tSoDUnit,
      @JsonKey(name: "t_so_d_price") this.tSoDPrice,
      @JsonKey(name: "t_so_d_amt") this.tSoDAmt,
      @JsonKey(name: "t_so_d_bykirim") this.tSoDBykirim,
      @JsonKey(name: "t_so_d_note") this.tSoDNote,
      @JsonKey(name: "m_item_konversi") this.mItemKonversi,
      @JsonKey(name: "m_item_sket") this.mItemSket,
      @JsonKey(name: "m_item_warna") this.mItemWarna,
      @JsonKey(name: "jt_flag") this.jtFlag,
      @JsonKey(name: "m_item_jto_khusus_id") this.mItemJtoKhususId});

  factory _$BarangDetailSOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangDetailSOImplFromJson(json);

  @override
  @JsonKey(name: "t_so_d_id")
  final int? tSoDId;
  @override
  @JsonKey(name: "m_item_id")
  final int? mItemId;
  @override
  @JsonKey(name: "m_item_jenis")
  final String? mItemJenis;
  @override
  @JsonKey(name: "m_item_longdesc")
  final String? mItemLongdesc;
  @override
  @JsonKey(name: "m_item_code")
  final String? mItemCode;
  @override
  @JsonKey(name: "qty_stock")
  final int? qtyStock;
  @override
  @JsonKey(name: "t_so_d_qty")
  final int? tSoDQty;
  @override
  @JsonKey(name: "t_so_d_unit_id")
  final int? tSoDUnitId;
  @override
  @JsonKey(name: "t_so_d_unit")
  final String? tSoDUnit;
  @override
  @JsonKey(name: "t_so_d_price")
  final double? tSoDPrice;
  @override
  @JsonKey(name: "t_so_d_amt")
  final double? tSoDAmt;
  @override
  @JsonKey(name: "t_so_d_bykirim")
  final int? tSoDBykirim;
  @override
  @JsonKey(name: "t_so_d_note")
  final String? tSoDNote;
  @override
  @JsonKey(name: "m_item_konversi")
  final double? mItemKonversi;
  @override
  @JsonKey(name: "m_item_sket")
  final dynamic mItemSket;
  @override
  @JsonKey(name: "m_item_warna")
  final dynamic mItemWarna;
  @override
  @JsonKey(name: "jt_flag")
  final String? jtFlag;
  @override
  @JsonKey(name: "m_item_jto_khusus_id")
  final int? mItemJtoKhususId;

  @override
  String toString() {
    return 'BarangDetailSO(tSoDId: $tSoDId, mItemId: $mItemId, mItemJenis: $mItemJenis, mItemLongdesc: $mItemLongdesc, mItemCode: $mItemCode, qtyStock: $qtyStock, tSoDQty: $tSoDQty, tSoDUnitId: $tSoDUnitId, tSoDUnit: $tSoDUnit, tSoDPrice: $tSoDPrice, tSoDAmt: $tSoDAmt, tSoDBykirim: $tSoDBykirim, tSoDNote: $tSoDNote, mItemKonversi: $mItemKonversi, mItemSket: $mItemSket, mItemWarna: $mItemWarna, jtFlag: $jtFlag, mItemJtoKhususId: $mItemJtoKhususId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangDetailSOImpl &&
            (identical(other.tSoDId, tSoDId) || other.tSoDId == tSoDId) &&
            (identical(other.mItemId, mItemId) || other.mItemId == mItemId) &&
            (identical(other.mItemJenis, mItemJenis) ||
                other.mItemJenis == mItemJenis) &&
            (identical(other.mItemLongdesc, mItemLongdesc) ||
                other.mItemLongdesc == mItemLongdesc) &&
            (identical(other.mItemCode, mItemCode) ||
                other.mItemCode == mItemCode) &&
            (identical(other.qtyStock, qtyStock) ||
                other.qtyStock == qtyStock) &&
            (identical(other.tSoDQty, tSoDQty) || other.tSoDQty == tSoDQty) &&
            (identical(other.tSoDUnitId, tSoDUnitId) ||
                other.tSoDUnitId == tSoDUnitId) &&
            (identical(other.tSoDUnit, tSoDUnit) ||
                other.tSoDUnit == tSoDUnit) &&
            (identical(other.tSoDPrice, tSoDPrice) ||
                other.tSoDPrice == tSoDPrice) &&
            (identical(other.tSoDAmt, tSoDAmt) || other.tSoDAmt == tSoDAmt) &&
            (identical(other.tSoDBykirim, tSoDBykirim) ||
                other.tSoDBykirim == tSoDBykirim) &&
            (identical(other.tSoDNote, tSoDNote) ||
                other.tSoDNote == tSoDNote) &&
            (identical(other.mItemKonversi, mItemKonversi) ||
                other.mItemKonversi == mItemKonversi) &&
            const DeepCollectionEquality().equals(other.mItemSket, mItemSket) &&
            const DeepCollectionEquality()
                .equals(other.mItemWarna, mItemWarna) &&
            (identical(other.jtFlag, jtFlag) || other.jtFlag == jtFlag) &&
            (identical(other.mItemJtoKhususId, mItemJtoKhususId) ||
                other.mItemJtoKhususId == mItemJtoKhususId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tSoDId,
      mItemId,
      mItemJenis,
      mItemLongdesc,
      mItemCode,
      qtyStock,
      tSoDQty,
      tSoDUnitId,
      tSoDUnit,
      tSoDPrice,
      tSoDAmt,
      tSoDBykirim,
      tSoDNote,
      mItemKonversi,
      const DeepCollectionEquality().hash(mItemSket),
      const DeepCollectionEquality().hash(mItemWarna),
      jtFlag,
      mItemJtoKhususId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarangDetailSOImplCopyWith<_$BarangDetailSOImpl> get copyWith =>
      __$$BarangDetailSOImplCopyWithImpl<_$BarangDetailSOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarangDetailSOImplToJson(
      this,
    );
  }
}

abstract class _BarangDetailSO implements BarangDetailSO {
  const factory _BarangDetailSO(
          {@JsonKey(name: "t_so_d_id") final int? tSoDId,
          @JsonKey(name: "m_item_id") final int? mItemId,
          @JsonKey(name: "m_item_jenis") final String? mItemJenis,
          @JsonKey(name: "m_item_longdesc") final String? mItemLongdesc,
          @JsonKey(name: "m_item_code") final String? mItemCode,
          @JsonKey(name: "qty_stock") final int? qtyStock,
          @JsonKey(name: "t_so_d_qty") final int? tSoDQty,
          @JsonKey(name: "t_so_d_unit_id") final int? tSoDUnitId,
          @JsonKey(name: "t_so_d_unit") final String? tSoDUnit,
          @JsonKey(name: "t_so_d_price") final double? tSoDPrice,
          @JsonKey(name: "t_so_d_amt") final double? tSoDAmt,
          @JsonKey(name: "t_so_d_bykirim") final int? tSoDBykirim,
          @JsonKey(name: "t_so_d_note") final String? tSoDNote,
          @JsonKey(name: "m_item_konversi") final double? mItemKonversi,
          @JsonKey(name: "m_item_sket") final dynamic mItemSket,
          @JsonKey(name: "m_item_warna") final dynamic mItemWarna,
          @JsonKey(name: "jt_flag") final String? jtFlag,
          @JsonKey(name: "m_item_jto_khusus_id") final int? mItemJtoKhususId}) =
      _$BarangDetailSOImpl;

  factory _BarangDetailSO.fromJson(Map<String, dynamic> json) =
      _$BarangDetailSOImpl.fromJson;

  @override
  @JsonKey(name: "t_so_d_id")
  int? get tSoDId;
  @override
  @JsonKey(name: "m_item_id")
  int? get mItemId;
  @override
  @JsonKey(name: "m_item_jenis")
  String? get mItemJenis;
  @override
  @JsonKey(name: "m_item_longdesc")
  String? get mItemLongdesc;
  @override
  @JsonKey(name: "m_item_code")
  String? get mItemCode;
  @override
  @JsonKey(name: "qty_stock")
  int? get qtyStock;
  @override
  @JsonKey(name: "t_so_d_qty")
  int? get tSoDQty;
  @override
  @JsonKey(name: "t_so_d_unit_id")
  int? get tSoDUnitId;
  @override
  @JsonKey(name: "t_so_d_unit")
  String? get tSoDUnit;
  @override
  @JsonKey(name: "t_so_d_price")
  double? get tSoDPrice;
  @override
  @JsonKey(name: "t_so_d_amt")
  double? get tSoDAmt;
  @override
  @JsonKey(name: "t_so_d_bykirim")
  int? get tSoDBykirim;
  @override
  @JsonKey(name: "t_so_d_note")
  String? get tSoDNote;
  @override
  @JsonKey(name: "m_item_konversi")
  double? get mItemKonversi;
  @override
  @JsonKey(name: "m_item_sket")
  dynamic get mItemSket;
  @override
  @JsonKey(name: "m_item_warna")
  dynamic get mItemWarna;
  @override
  @JsonKey(name: "jt_flag")
  String? get jtFlag;
  @override
  @JsonKey(name: "m_item_jto_khusus_id")
  int? get mItemJtoKhususId;
  @override
  @JsonKey(ignore: true)
  _$$BarangDetailSOImplCopyWith<_$BarangDetailSOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
