// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_daftar_barang.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDaftarBarang _$ResponseDaftarBarangFromJson(Map<String, dynamic> json) {
  return _ResponseDaftarBarang.fromJson(json);
}

/// @nodoc
mixin _$ResponseDaftarBarang {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataBarang>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDaftarBarangCopyWith<ResponseDaftarBarang> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDaftarBarangCopyWith<$Res> {
  factory $ResponseDaftarBarangCopyWith(ResponseDaftarBarang value,
          $Res Function(ResponseDaftarBarang) then) =
      _$ResponseDaftarBarangCopyWithImpl<$Res, ResponseDaftarBarang>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataBarang>? data});
}

/// @nodoc
class _$ResponseDaftarBarangCopyWithImpl<$Res,
        $Val extends ResponseDaftarBarang>
    implements $ResponseDaftarBarangCopyWith<$Res> {
  _$ResponseDaftarBarangCopyWithImpl(this._value, this._then);

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
              as List<DataBarang>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDaftarBarangImplCopyWith<$Res>
    implements $ResponseDaftarBarangCopyWith<$Res> {
  factory _$$ResponseDaftarBarangImplCopyWith(_$ResponseDaftarBarangImpl value,
          $Res Function(_$ResponseDaftarBarangImpl) then) =
      __$$ResponseDaftarBarangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataBarang>? data});
}

/// @nodoc
class __$$ResponseDaftarBarangImplCopyWithImpl<$Res>
    extends _$ResponseDaftarBarangCopyWithImpl<$Res, _$ResponseDaftarBarangImpl>
    implements _$$ResponseDaftarBarangImplCopyWith<$Res> {
  __$$ResponseDaftarBarangImplCopyWithImpl(_$ResponseDaftarBarangImpl _value,
      $Res Function(_$ResponseDaftarBarangImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDaftarBarangImpl(
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
              as List<DataBarang>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDaftarBarangImpl implements _ResponseDaftarBarang {
  const _$ResponseDaftarBarangImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") final List<DataBarang>? data})
      : _data = data;

  factory _$ResponseDaftarBarangImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDaftarBarangImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  final List<DataBarang>? _data;
  @override
  @JsonKey(name: "data")
  List<DataBarang>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseDaftarBarang(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDaftarBarangImpl &&
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
  _$$ResponseDaftarBarangImplCopyWith<_$ResponseDaftarBarangImpl>
      get copyWith =>
          __$$ResponseDaftarBarangImplCopyWithImpl<_$ResponseDaftarBarangImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDaftarBarangImplToJson(
      this,
    );
  }
}

abstract class _ResponseDaftarBarang implements ResponseDaftarBarang {
  const factory _ResponseDaftarBarang(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final List<DataBarang>? data}) =
      _$ResponseDaftarBarangImpl;

  factory _ResponseDaftarBarang.fromJson(Map<String, dynamic> json) =
      _$ResponseDaftarBarangImpl.fromJson;

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
  List<DataBarang>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDaftarBarangImplCopyWith<_$ResponseDaftarBarangImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataBarang _$DataBarangFromJson(Map<String, dynamic> json) {
  return _DataBarang.fromJson(json);
}

/// @nodoc
mixin _$DataBarang {
  @JsonKey(name: "t_so_d_id")
  int? get tSoDId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_seq")
  int? get tSoDSeq => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_id")
  int? get mItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_jenis")
  String? get mItemJenis => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_longdesc")
  String? get mItemLongdesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_code")
  String? get mItemCode => throw _privateConstructorUsedError;
  @JsonKey(name: "qty_stock")
  double? get qtyStock => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_qty")
  int? get tSoDQty => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_unit_id")
  int? get tSoDUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_unit")
  String? get tSoDUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_price")
  double? get tSoDPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_amt")
  int? get tSoDAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_bykirim")
  int? get tSoDBykirim => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_note")
  String? get tSoDNote => throw _privateConstructorUsedError;
  @JsonKey(name: "t_so_d_berat")
  int? get tsoDBerat => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_konversi")
  double? get mItemKonversi => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_sket")
  String? get mItemSket => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_warna")
  String? get mItemWarna => throw _privateConstructorUsedError;
  @JsonKey(name: "jt_flag")
  String? get jtFlag => throw _privateConstructorUsedError;
  @JsonKey(name: "m_item_jto_khusus_id")
  int? get mItemJtoKhususId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataBarangCopyWith<DataBarang> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBarangCopyWith<$Res> {
  factory $DataBarangCopyWith(
          DataBarang value, $Res Function(DataBarang) then) =
      _$DataBarangCopyWithImpl<$Res, DataBarang>;
  @useResult
  $Res call(
      {@JsonKey(name: "t_so_d_id") int? tSoDId,
      @JsonKey(name: "t_so_d_seq") int? tSoDSeq,
      @JsonKey(name: "m_item_id") int? mItemId,
      @JsonKey(name: "m_item_jenis") String? mItemJenis,
      @JsonKey(name: "m_item_longdesc") String? mItemLongdesc,
      @JsonKey(name: "m_item_code") String? mItemCode,
      @JsonKey(name: "qty_stock") double? qtyStock,
      @JsonKey(name: "t_so_d_qty") int? tSoDQty,
      @JsonKey(name: "t_so_d_unit_id") int? tSoDUnitId,
      @JsonKey(name: "t_so_d_unit") String? tSoDUnit,
      @JsonKey(name: "t_so_d_price") double? tSoDPrice,
      @JsonKey(name: "t_so_d_amt") int? tSoDAmt,
      @JsonKey(name: "t_so_d_bykirim") int? tSoDBykirim,
      @JsonKey(name: "t_so_d_note") String? tSoDNote,
      @JsonKey(name: "t_so_d_berat") int? tsoDBerat,
      @JsonKey(name: "m_item_konversi") double? mItemKonversi,
      @JsonKey(name: "m_item_sket") String? mItemSket,
      @JsonKey(name: "m_item_warna") String? mItemWarna,
      @JsonKey(name: "jt_flag") String? jtFlag,
      @JsonKey(name: "m_item_jto_khusus_id") int? mItemJtoKhususId});
}

/// @nodoc
class _$DataBarangCopyWithImpl<$Res, $Val extends DataBarang>
    implements $DataBarangCopyWith<$Res> {
  _$DataBarangCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSoDId = freezed,
    Object? tSoDSeq = freezed,
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
    Object? tsoDBerat = freezed,
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
      tSoDSeq: freezed == tSoDSeq
          ? _value.tSoDSeq
          : tSoDSeq // ignore: cast_nullable_to_non_nullable
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
              as double?,
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
              as int?,
      tSoDBykirim: freezed == tSoDBykirim
          ? _value.tSoDBykirim
          : tSoDBykirim // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoDNote: freezed == tSoDNote
          ? _value.tSoDNote
          : tSoDNote // ignore: cast_nullable_to_non_nullable
              as String?,
      tsoDBerat: freezed == tsoDBerat
          ? _value.tsoDBerat
          : tsoDBerat // ignore: cast_nullable_to_non_nullable
              as int?,
      mItemKonversi: freezed == mItemKonversi
          ? _value.mItemKonversi
          : mItemKonversi // ignore: cast_nullable_to_non_nullable
              as double?,
      mItemSket: freezed == mItemSket
          ? _value.mItemSket
          : mItemSket // ignore: cast_nullable_to_non_nullable
              as String?,
      mItemWarna: freezed == mItemWarna
          ? _value.mItemWarna
          : mItemWarna // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$DataBarangImplCopyWith<$Res>
    implements $DataBarangCopyWith<$Res> {
  factory _$$DataBarangImplCopyWith(
          _$DataBarangImpl value, $Res Function(_$DataBarangImpl) then) =
      __$$DataBarangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "t_so_d_id") int? tSoDId,
      @JsonKey(name: "t_so_d_seq") int? tSoDSeq,
      @JsonKey(name: "m_item_id") int? mItemId,
      @JsonKey(name: "m_item_jenis") String? mItemJenis,
      @JsonKey(name: "m_item_longdesc") String? mItemLongdesc,
      @JsonKey(name: "m_item_code") String? mItemCode,
      @JsonKey(name: "qty_stock") double? qtyStock,
      @JsonKey(name: "t_so_d_qty") int? tSoDQty,
      @JsonKey(name: "t_so_d_unit_id") int? tSoDUnitId,
      @JsonKey(name: "t_so_d_unit") String? tSoDUnit,
      @JsonKey(name: "t_so_d_price") double? tSoDPrice,
      @JsonKey(name: "t_so_d_amt") int? tSoDAmt,
      @JsonKey(name: "t_so_d_bykirim") int? tSoDBykirim,
      @JsonKey(name: "t_so_d_note") String? tSoDNote,
      @JsonKey(name: "t_so_d_berat") int? tsoDBerat,
      @JsonKey(name: "m_item_konversi") double? mItemKonversi,
      @JsonKey(name: "m_item_sket") String? mItemSket,
      @JsonKey(name: "m_item_warna") String? mItemWarna,
      @JsonKey(name: "jt_flag") String? jtFlag,
      @JsonKey(name: "m_item_jto_khusus_id") int? mItemJtoKhususId});
}

/// @nodoc
class __$$DataBarangImplCopyWithImpl<$Res>
    extends _$DataBarangCopyWithImpl<$Res, _$DataBarangImpl>
    implements _$$DataBarangImplCopyWith<$Res> {
  __$$DataBarangImplCopyWithImpl(
      _$DataBarangImpl _value, $Res Function(_$DataBarangImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSoDId = freezed,
    Object? tSoDSeq = freezed,
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
    Object? tsoDBerat = freezed,
    Object? mItemKonversi = freezed,
    Object? mItemSket = freezed,
    Object? mItemWarna = freezed,
    Object? jtFlag = freezed,
    Object? mItemJtoKhususId = freezed,
  }) {
    return _then(_$DataBarangImpl(
      tSoDId: freezed == tSoDId
          ? _value.tSoDId
          : tSoDId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoDSeq: freezed == tSoDSeq
          ? _value.tSoDSeq
          : tSoDSeq // ignore: cast_nullable_to_non_nullable
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
              as double?,
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
              as int?,
      tSoDBykirim: freezed == tSoDBykirim
          ? _value.tSoDBykirim
          : tSoDBykirim // ignore: cast_nullable_to_non_nullable
              as int?,
      tSoDNote: freezed == tSoDNote
          ? _value.tSoDNote
          : tSoDNote // ignore: cast_nullable_to_non_nullable
              as String?,
      tsoDBerat: freezed == tsoDBerat
          ? _value.tsoDBerat
          : tsoDBerat // ignore: cast_nullable_to_non_nullable
              as int?,
      mItemKonversi: freezed == mItemKonversi
          ? _value.mItemKonversi
          : mItemKonversi // ignore: cast_nullable_to_non_nullable
              as double?,
      mItemSket: freezed == mItemSket
          ? _value.mItemSket
          : mItemSket // ignore: cast_nullable_to_non_nullable
              as String?,
      mItemWarna: freezed == mItemWarna
          ? _value.mItemWarna
          : mItemWarna // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$DataBarangImpl implements _DataBarang {
  const _$DataBarangImpl(
      {@JsonKey(name: "t_so_d_id") this.tSoDId,
      @JsonKey(name: "t_so_d_seq") this.tSoDSeq,
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
      @JsonKey(name: "t_so_d_berat") this.tsoDBerat,
      @JsonKey(name: "m_item_konversi") this.mItemKonversi,
      @JsonKey(name: "m_item_sket") this.mItemSket,
      @JsonKey(name: "m_item_warna") this.mItemWarna,
      @JsonKey(name: "jt_flag") this.jtFlag,
      @JsonKey(name: "m_item_jto_khusus_id") this.mItemJtoKhususId});

  factory _$DataBarangImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataBarangImplFromJson(json);

  @override
  @JsonKey(name: "t_so_d_id")
  final int? tSoDId;
  @override
  @JsonKey(name: "t_so_d_seq")
  final int? tSoDSeq;
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
  final double? qtyStock;
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
  final int? tSoDAmt;
  @override
  @JsonKey(name: "t_so_d_bykirim")
  final int? tSoDBykirim;
  @override
  @JsonKey(name: "t_so_d_note")
  final String? tSoDNote;
  @override
  @JsonKey(name: "t_so_d_berat")
  final int? tsoDBerat;
  @override
  @JsonKey(name: "m_item_konversi")
  final double? mItemKonversi;
  @override
  @JsonKey(name: "m_item_sket")
  final String? mItemSket;
  @override
  @JsonKey(name: "m_item_warna")
  final String? mItemWarna;
  @override
  @JsonKey(name: "jt_flag")
  final String? jtFlag;
  @override
  @JsonKey(name: "m_item_jto_khusus_id")
  final int? mItemJtoKhususId;

  @override
  String toString() {
    return 'DataBarang(tSoDId: $tSoDId, tSoDSeq: $tSoDSeq, mItemId: $mItemId, mItemJenis: $mItemJenis, mItemLongdesc: $mItemLongdesc, mItemCode: $mItemCode, qtyStock: $qtyStock, tSoDQty: $tSoDQty, tSoDUnitId: $tSoDUnitId, tSoDUnit: $tSoDUnit, tSoDPrice: $tSoDPrice, tSoDAmt: $tSoDAmt, tSoDBykirim: $tSoDBykirim, tSoDNote: $tSoDNote, tsoDBerat: $tsoDBerat, mItemKonversi: $mItemKonversi, mItemSket: $mItemSket, mItemWarna: $mItemWarna, jtFlag: $jtFlag, mItemJtoKhususId: $mItemJtoKhususId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataBarangImpl &&
            (identical(other.tSoDId, tSoDId) || other.tSoDId == tSoDId) &&
            (identical(other.tSoDSeq, tSoDSeq) || other.tSoDSeq == tSoDSeq) &&
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
            (identical(other.tsoDBerat, tsoDBerat) ||
                other.tsoDBerat == tsoDBerat) &&
            (identical(other.mItemKonversi, mItemKonversi) ||
                other.mItemKonversi == mItemKonversi) &&
            (identical(other.mItemSket, mItemSket) ||
                other.mItemSket == mItemSket) &&
            (identical(other.mItemWarna, mItemWarna) ||
                other.mItemWarna == mItemWarna) &&
            (identical(other.jtFlag, jtFlag) || other.jtFlag == jtFlag) &&
            (identical(other.mItemJtoKhususId, mItemJtoKhususId) ||
                other.mItemJtoKhususId == mItemJtoKhususId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        tSoDId,
        tSoDSeq,
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
        tsoDBerat,
        mItemKonversi,
        mItemSket,
        mItemWarna,
        jtFlag,
        mItemJtoKhususId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataBarangImplCopyWith<_$DataBarangImpl> get copyWith =>
      __$$DataBarangImplCopyWithImpl<_$DataBarangImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataBarangImplToJson(
      this,
    );
  }
}

abstract class _DataBarang implements DataBarang {
  const factory _DataBarang(
          {@JsonKey(name: "t_so_d_id") final int? tSoDId,
          @JsonKey(name: "t_so_d_seq") final int? tSoDSeq,
          @JsonKey(name: "m_item_id") final int? mItemId,
          @JsonKey(name: "m_item_jenis") final String? mItemJenis,
          @JsonKey(name: "m_item_longdesc") final String? mItemLongdesc,
          @JsonKey(name: "m_item_code") final String? mItemCode,
          @JsonKey(name: "qty_stock") final double? qtyStock,
          @JsonKey(name: "t_so_d_qty") final int? tSoDQty,
          @JsonKey(name: "t_so_d_unit_id") final int? tSoDUnitId,
          @JsonKey(name: "t_so_d_unit") final String? tSoDUnit,
          @JsonKey(name: "t_so_d_price") final double? tSoDPrice,
          @JsonKey(name: "t_so_d_amt") final int? tSoDAmt,
          @JsonKey(name: "t_so_d_bykirim") final int? tSoDBykirim,
          @JsonKey(name: "t_so_d_note") final String? tSoDNote,
          @JsonKey(name: "t_so_d_berat") final int? tsoDBerat,
          @JsonKey(name: "m_item_konversi") final double? mItemKonversi,
          @JsonKey(name: "m_item_sket") final String? mItemSket,
          @JsonKey(name: "m_item_warna") final String? mItemWarna,
          @JsonKey(name: "jt_flag") final String? jtFlag,
          @JsonKey(name: "m_item_jto_khusus_id") final int? mItemJtoKhususId}) =
      _$DataBarangImpl;

  factory _DataBarang.fromJson(Map<String, dynamic> json) =
      _$DataBarangImpl.fromJson;

  @override
  @JsonKey(name: "t_so_d_id")
  int? get tSoDId;
  @override
  @JsonKey(name: "t_so_d_seq")
  int? get tSoDSeq;
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
  double? get qtyStock;
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
  int? get tSoDAmt;
  @override
  @JsonKey(name: "t_so_d_bykirim")
  int? get tSoDBykirim;
  @override
  @JsonKey(name: "t_so_d_note")
  String? get tSoDNote;
  @override
  @JsonKey(name: "t_so_d_berat")
  int? get tsoDBerat;
  @override
  @JsonKey(name: "m_item_konversi")
  double? get mItemKonversi;
  @override
  @JsonKey(name: "m_item_sket")
  String? get mItemSket;
  @override
  @JsonKey(name: "m_item_warna")
  String? get mItemWarna;
  @override
  @JsonKey(name: "jt_flag")
  String? get jtFlag;
  @override
  @JsonKey(name: "m_item_jto_khusus_id")
  int? get mItemJtoKhususId;
  @override
  @JsonKey(ignore: true)
  _$$DataBarangImplCopyWith<_$DataBarangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
