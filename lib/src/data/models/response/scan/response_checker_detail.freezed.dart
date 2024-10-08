// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_checker_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCheckerDetail _$ResponseCheckerDetailFromJson(
    Map<String, dynamic> json) {
  return _ResponseCheckerDetail.fromJson(json);
}

/// @nodoc
mixin _$ResponseCheckerDetail {
  @JsonKey(name: "msgServer")
  List<DataDetailChecker>? get msgServer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCheckerDetailCopyWith<ResponseCheckerDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCheckerDetailCopyWith<$Res> {
  factory $ResponseCheckerDetailCopyWith(ResponseCheckerDetail value,
          $Res Function(ResponseCheckerDetail) then) =
      _$ResponseCheckerDetailCopyWithImpl<$Res, ResponseCheckerDetail>;
  @useResult
  $Res call({@JsonKey(name: "msgServer") List<DataDetailChecker>? msgServer});
}

/// @nodoc
class _$ResponseCheckerDetailCopyWithImpl<$Res,
        $Val extends ResponseCheckerDetail>
    implements $ResponseCheckerDetailCopyWith<$Res> {
  _$ResponseCheckerDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgServer = freezed,
  }) {
    return _then(_value.copyWith(
      msgServer: freezed == msgServer
          ? _value.msgServer
          : msgServer // ignore: cast_nullable_to_non_nullable
              as List<DataDetailChecker>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseCheckerDetailImplCopyWith<$Res>
    implements $ResponseCheckerDetailCopyWith<$Res> {
  factory _$$ResponseCheckerDetailImplCopyWith(
          _$ResponseCheckerDetailImpl value,
          $Res Function(_$ResponseCheckerDetailImpl) then) =
      __$$ResponseCheckerDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "msgServer") List<DataDetailChecker>? msgServer});
}

/// @nodoc
class __$$ResponseCheckerDetailImplCopyWithImpl<$Res>
    extends _$ResponseCheckerDetailCopyWithImpl<$Res,
        _$ResponseCheckerDetailImpl>
    implements _$$ResponseCheckerDetailImplCopyWith<$Res> {
  __$$ResponseCheckerDetailImplCopyWithImpl(_$ResponseCheckerDetailImpl _value,
      $Res Function(_$ResponseCheckerDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgServer = freezed,
  }) {
    return _then(_$ResponseCheckerDetailImpl(
      msgServer: freezed == msgServer
          ? _value._msgServer
          : msgServer // ignore: cast_nullable_to_non_nullable
              as List<DataDetailChecker>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCheckerDetailImpl implements _ResponseCheckerDetail {
  const _$ResponseCheckerDetailImpl(
      {@JsonKey(name: "msgServer") final List<DataDetailChecker>? msgServer})
      : _msgServer = msgServer;

  factory _$ResponseCheckerDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCheckerDetailImplFromJson(json);

  final List<DataDetailChecker>? _msgServer;
  @override
  @JsonKey(name: "msgServer")
  List<DataDetailChecker>? get msgServer {
    final value = _msgServer;
    if (value == null) return null;
    if (_msgServer is EqualUnmodifiableListView) return _msgServer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseCheckerDetail(msgServer: $msgServer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCheckerDetailImpl &&
            const DeepCollectionEquality()
                .equals(other._msgServer, _msgServer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_msgServer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCheckerDetailImplCopyWith<_$ResponseCheckerDetailImpl>
      get copyWith => __$$ResponseCheckerDetailImplCopyWithImpl<
          _$ResponseCheckerDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCheckerDetailImplToJson(
      this,
    );
  }
}

abstract class _ResponseCheckerDetail implements ResponseCheckerDetail {
  const factory _ResponseCheckerDetail(
      {@JsonKey(name: "msgServer")
      final List<DataDetailChecker>? msgServer}) = _$ResponseCheckerDetailImpl;

  factory _ResponseCheckerDetail.fromJson(Map<String, dynamic> json) =
      _$ResponseCheckerDetailImpl.fromJson;

  @override
  @JsonKey(name: "msgServer")
  List<DataDetailChecker>? get msgServer;
  @override
  @JsonKey(ignore: true)
  _$$ResponseCheckerDetailImplCopyWith<_$ResponseCheckerDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataDetailChecker _$DataDetailCheckerFromJson(Map<String, dynamic> json) {
  return _DataDetailChecker.fromJson(json);
}

/// @nodoc
mixin _$DataDetailChecker {
  @JsonKey(name: "checkvalue")
  String? get checkvalue => throw _privateConstructorUsedError;
  @JsonKey(name: "itemlongdesc")
  String? get itemlongdesc => throw _privateConstructorUsedError;
  @JsonKey(name: "itemgroupcode")
  String? get itemgroupcode => throw _privateConstructorUsedError;
  @JsonKey(name: "itemcode")
  String? get itemcode => throw _privateConstructorUsedError;
  @JsonKey(name: "merk")
  String? get merk => throw _privateConstructorUsedError;
  @JsonKey(name: "keterangan")
  String? get keterangan => throw _privateConstructorUsedError;
  @JsonKey(name: "maxqty")
  int? get maxqty => throw _privateConstructorUsedError;
  @JsonKey(name: "salesdeliveryqty")
  int? get salesdeliveryqty => throw _privateConstructorUsedError;
  @JsonKey(name: "itemoid")
  int? get itemoid => throw _privateConstructorUsedError;
  @JsonKey(name: "trnorderdtloid")
  int? get trnorderdtloid => throw _privateConstructorUsedError;
  @JsonKey(name: "trnorderdtlunitoid")
  int? get trnorderdtlunitoid => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "trnordermstoid")
  int? get trnordermstoid => throw _privateConstructorUsedError;
  @JsonKey(name: "whlocoid")
  int? get whlocoid => throw _privateConstructorUsedError;
  @JsonKey(name: "lokasi")
  String? get lokasi => throw _privateConstructorUsedError;
  @JsonKey(name: "itembarcode3")
  String? get itembarcode3 => throw _privateConstructorUsedError;
  @JsonKey(name: "konvbarcode3")
  int? get konvbarcode3 => throw _privateConstructorUsedError;
  @JsonKey(name: "itembarcode2")
  String? get itembarcode2 => throw _privateConstructorUsedError;
  @JsonKey(name: "konvbarcode2")
  int? get konvbarcode2 => throw _privateConstructorUsedError;
  @JsonKey(name: "itembarcode1")
  String? get itembarcode1 => throw _privateConstructorUsedError;
  @JsonKey(name: "konvbarcode1")
  int? get konvbarcode1 => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDetailCheckerCopyWith<DataDetailChecker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDetailCheckerCopyWith<$Res> {
  factory $DataDetailCheckerCopyWith(
          DataDetailChecker value, $Res Function(DataDetailChecker) then) =
      _$DataDetailCheckerCopyWithImpl<$Res, DataDetailChecker>;
  @useResult
  $Res call(
      {@JsonKey(name: "checkvalue") String? checkvalue,
      @JsonKey(name: "itemlongdesc") String? itemlongdesc,
      @JsonKey(name: "itemgroupcode") String? itemgroupcode,
      @JsonKey(name: "itemcode") String? itemcode,
      @JsonKey(name: "merk") String? merk,
      @JsonKey(name: "keterangan") String? keterangan,
      @JsonKey(name: "maxqty") int? maxqty,
      @JsonKey(name: "salesdeliveryqty") int? salesdeliveryqty,
      @JsonKey(name: "itemoid") int? itemoid,
      @JsonKey(name: "trnorderdtloid") int? trnorderdtloid,
      @JsonKey(name: "trnorderdtlunitoid") int? trnorderdtlunitoid,
      @JsonKey(name: "unit") String? unit,
      @JsonKey(name: "trnordermstoid") int? trnordermstoid,
      @JsonKey(name: "whlocoid") int? whlocoid,
      @JsonKey(name: "lokasi") String? lokasi,
      @JsonKey(name: "itembarcode3") String? itembarcode3,
      @JsonKey(name: "konvbarcode3") int? konvbarcode3,
      @JsonKey(name: "itembarcode2") String? itembarcode2,
      @JsonKey(name: "konvbarcode2") int? konvbarcode2,
      @JsonKey(name: "itembarcode1") String? itembarcode1,
      @JsonKey(name: "konvbarcode1") int? konvbarcode1,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class _$DataDetailCheckerCopyWithImpl<$Res, $Val extends DataDetailChecker>
    implements $DataDetailCheckerCopyWith<$Res> {
  _$DataDetailCheckerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkvalue = freezed,
    Object? itemlongdesc = freezed,
    Object? itemgroupcode = freezed,
    Object? itemcode = freezed,
    Object? merk = freezed,
    Object? keterangan = freezed,
    Object? maxqty = freezed,
    Object? salesdeliveryqty = freezed,
    Object? itemoid = freezed,
    Object? trnorderdtloid = freezed,
    Object? trnorderdtlunitoid = freezed,
    Object? unit = freezed,
    Object? trnordermstoid = freezed,
    Object? whlocoid = freezed,
    Object? lokasi = freezed,
    Object? itembarcode3 = freezed,
    Object? konvbarcode3 = freezed,
    Object? itembarcode2 = freezed,
    Object? konvbarcode2 = freezed,
    Object? itembarcode1 = freezed,
    Object? konvbarcode1 = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      checkvalue: freezed == checkvalue
          ? _value.checkvalue
          : checkvalue // ignore: cast_nullable_to_non_nullable
              as String?,
      itemlongdesc: freezed == itemlongdesc
          ? _value.itemlongdesc
          : itemlongdesc // ignore: cast_nullable_to_non_nullable
              as String?,
      itemgroupcode: freezed == itemgroupcode
          ? _value.itemgroupcode
          : itemgroupcode // ignore: cast_nullable_to_non_nullable
              as String?,
      itemcode: freezed == itemcode
          ? _value.itemcode
          : itemcode // ignore: cast_nullable_to_non_nullable
              as String?,
      merk: freezed == merk
          ? _value.merk
          : merk // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      maxqty: freezed == maxqty
          ? _value.maxqty
          : maxqty // ignore: cast_nullable_to_non_nullable
              as int?,
      salesdeliveryqty: freezed == salesdeliveryqty
          ? _value.salesdeliveryqty
          : salesdeliveryqty // ignore: cast_nullable_to_non_nullable
              as int?,
      itemoid: freezed == itemoid
          ? _value.itemoid
          : itemoid // ignore: cast_nullable_to_non_nullable
              as int?,
      trnorderdtloid: freezed == trnorderdtloid
          ? _value.trnorderdtloid
          : trnorderdtloid // ignore: cast_nullable_to_non_nullable
              as int?,
      trnorderdtlunitoid: freezed == trnorderdtlunitoid
          ? _value.trnorderdtlunitoid
          : trnorderdtlunitoid // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      trnordermstoid: freezed == trnordermstoid
          ? _value.trnordermstoid
          : trnordermstoid // ignore: cast_nullable_to_non_nullable
              as int?,
      whlocoid: freezed == whlocoid
          ? _value.whlocoid
          : whlocoid // ignore: cast_nullable_to_non_nullable
              as int?,
      lokasi: freezed == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String?,
      itembarcode3: freezed == itembarcode3
          ? _value.itembarcode3
          : itembarcode3 // ignore: cast_nullable_to_non_nullable
              as String?,
      konvbarcode3: freezed == konvbarcode3
          ? _value.konvbarcode3
          : konvbarcode3 // ignore: cast_nullable_to_non_nullable
              as int?,
      itembarcode2: freezed == itembarcode2
          ? _value.itembarcode2
          : itembarcode2 // ignore: cast_nullable_to_non_nullable
              as String?,
      konvbarcode2: freezed == konvbarcode2
          ? _value.konvbarcode2
          : konvbarcode2 // ignore: cast_nullable_to_non_nullable
              as int?,
      itembarcode1: freezed == itembarcode1
          ? _value.itembarcode1
          : itembarcode1 // ignore: cast_nullable_to_non_nullable
              as String?,
      konvbarcode1: freezed == konvbarcode1
          ? _value.konvbarcode1
          : konvbarcode1 // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDetailCheckerImplCopyWith<$Res>
    implements $DataDetailCheckerCopyWith<$Res> {
  factory _$$DataDetailCheckerImplCopyWith(_$DataDetailCheckerImpl value,
          $Res Function(_$DataDetailCheckerImpl) then) =
      __$$DataDetailCheckerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "checkvalue") String? checkvalue,
      @JsonKey(name: "itemlongdesc") String? itemlongdesc,
      @JsonKey(name: "itemgroupcode") String? itemgroupcode,
      @JsonKey(name: "itemcode") String? itemcode,
      @JsonKey(name: "merk") String? merk,
      @JsonKey(name: "keterangan") String? keterangan,
      @JsonKey(name: "maxqty") int? maxqty,
      @JsonKey(name: "salesdeliveryqty") int? salesdeliveryqty,
      @JsonKey(name: "itemoid") int? itemoid,
      @JsonKey(name: "trnorderdtloid") int? trnorderdtloid,
      @JsonKey(name: "trnorderdtlunitoid") int? trnorderdtlunitoid,
      @JsonKey(name: "unit") String? unit,
      @JsonKey(name: "trnordermstoid") int? trnordermstoid,
      @JsonKey(name: "whlocoid") int? whlocoid,
      @JsonKey(name: "lokasi") String? lokasi,
      @JsonKey(name: "itembarcode3") String? itembarcode3,
      @JsonKey(name: "konvbarcode3") int? konvbarcode3,
      @JsonKey(name: "itembarcode2") String? itembarcode2,
      @JsonKey(name: "konvbarcode2") int? konvbarcode2,
      @JsonKey(name: "itembarcode1") String? itembarcode1,
      @JsonKey(name: "konvbarcode1") int? konvbarcode1,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class __$$DataDetailCheckerImplCopyWithImpl<$Res>
    extends _$DataDetailCheckerCopyWithImpl<$Res, _$DataDetailCheckerImpl>
    implements _$$DataDetailCheckerImplCopyWith<$Res> {
  __$$DataDetailCheckerImplCopyWithImpl(_$DataDetailCheckerImpl _value,
      $Res Function(_$DataDetailCheckerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkvalue = freezed,
    Object? itemlongdesc = freezed,
    Object? itemgroupcode = freezed,
    Object? itemcode = freezed,
    Object? merk = freezed,
    Object? keterangan = freezed,
    Object? maxqty = freezed,
    Object? salesdeliveryqty = freezed,
    Object? itemoid = freezed,
    Object? trnorderdtloid = freezed,
    Object? trnorderdtlunitoid = freezed,
    Object? unit = freezed,
    Object? trnordermstoid = freezed,
    Object? whlocoid = freezed,
    Object? lokasi = freezed,
    Object? itembarcode3 = freezed,
    Object? konvbarcode3 = freezed,
    Object? itembarcode2 = freezed,
    Object? konvbarcode2 = freezed,
    Object? itembarcode1 = freezed,
    Object? konvbarcode1 = freezed,
    Object? image = freezed,
  }) {
    return _then(_$DataDetailCheckerImpl(
      checkvalue: freezed == checkvalue
          ? _value.checkvalue
          : checkvalue // ignore: cast_nullable_to_non_nullable
              as String?,
      itemlongdesc: freezed == itemlongdesc
          ? _value.itemlongdesc
          : itemlongdesc // ignore: cast_nullable_to_non_nullable
              as String?,
      itemgroupcode: freezed == itemgroupcode
          ? _value.itemgroupcode
          : itemgroupcode // ignore: cast_nullable_to_non_nullable
              as String?,
      itemcode: freezed == itemcode
          ? _value.itemcode
          : itemcode // ignore: cast_nullable_to_non_nullable
              as String?,
      merk: freezed == merk
          ? _value.merk
          : merk // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      maxqty: freezed == maxqty
          ? _value.maxqty
          : maxqty // ignore: cast_nullable_to_non_nullable
              as int?,
      salesdeliveryqty: freezed == salesdeliveryqty
          ? _value.salesdeliveryqty
          : salesdeliveryqty // ignore: cast_nullable_to_non_nullable
              as int?,
      itemoid: freezed == itemoid
          ? _value.itemoid
          : itemoid // ignore: cast_nullable_to_non_nullable
              as int?,
      trnorderdtloid: freezed == trnorderdtloid
          ? _value.trnorderdtloid
          : trnorderdtloid // ignore: cast_nullable_to_non_nullable
              as int?,
      trnorderdtlunitoid: freezed == trnorderdtlunitoid
          ? _value.trnorderdtlunitoid
          : trnorderdtlunitoid // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      trnordermstoid: freezed == trnordermstoid
          ? _value.trnordermstoid
          : trnordermstoid // ignore: cast_nullable_to_non_nullable
              as int?,
      whlocoid: freezed == whlocoid
          ? _value.whlocoid
          : whlocoid // ignore: cast_nullable_to_non_nullable
              as int?,
      lokasi: freezed == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String?,
      itembarcode3: freezed == itembarcode3
          ? _value.itembarcode3
          : itembarcode3 // ignore: cast_nullable_to_non_nullable
              as String?,
      konvbarcode3: freezed == konvbarcode3
          ? _value.konvbarcode3
          : konvbarcode3 // ignore: cast_nullable_to_non_nullable
              as int?,
      itembarcode2: freezed == itembarcode2
          ? _value.itembarcode2
          : itembarcode2 // ignore: cast_nullable_to_non_nullable
              as String?,
      konvbarcode2: freezed == konvbarcode2
          ? _value.konvbarcode2
          : konvbarcode2 // ignore: cast_nullable_to_non_nullable
              as int?,
      itembarcode1: freezed == itembarcode1
          ? _value.itembarcode1
          : itembarcode1 // ignore: cast_nullable_to_non_nullable
              as String?,
      konvbarcode1: freezed == konvbarcode1
          ? _value.konvbarcode1
          : konvbarcode1 // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDetailCheckerImpl implements _DataDetailChecker {
  const _$DataDetailCheckerImpl(
      {@JsonKey(name: "checkvalue") this.checkvalue,
      @JsonKey(name: "itemlongdesc") this.itemlongdesc,
      @JsonKey(name: "itemgroupcode") this.itemgroupcode,
      @JsonKey(name: "itemcode") this.itemcode,
      @JsonKey(name: "merk") this.merk,
      @JsonKey(name: "keterangan") this.keterangan,
      @JsonKey(name: "maxqty") this.maxqty,
      @JsonKey(name: "salesdeliveryqty") this.salesdeliveryqty,
      @JsonKey(name: "itemoid") this.itemoid,
      @JsonKey(name: "trnorderdtloid") this.trnorderdtloid,
      @JsonKey(name: "trnorderdtlunitoid") this.trnorderdtlunitoid,
      @JsonKey(name: "unit") this.unit,
      @JsonKey(name: "trnordermstoid") this.trnordermstoid,
      @JsonKey(name: "whlocoid") this.whlocoid,
      @JsonKey(name: "lokasi") this.lokasi,
      @JsonKey(name: "itembarcode3") this.itembarcode3,
      @JsonKey(name: "konvbarcode3") this.konvbarcode3,
      @JsonKey(name: "itembarcode2") this.itembarcode2,
      @JsonKey(name: "konvbarcode2") this.konvbarcode2,
      @JsonKey(name: "itembarcode1") this.itembarcode1,
      @JsonKey(name: "konvbarcode1") this.konvbarcode1,
      @JsonKey(name: "image") this.image});

  factory _$DataDetailCheckerImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDetailCheckerImplFromJson(json);

  @override
  @JsonKey(name: "checkvalue")
  final String? checkvalue;
  @override
  @JsonKey(name: "itemlongdesc")
  final String? itemlongdesc;
  @override
  @JsonKey(name: "itemgroupcode")
  final String? itemgroupcode;
  @override
  @JsonKey(name: "itemcode")
  final String? itemcode;
  @override
  @JsonKey(name: "merk")
  final String? merk;
  @override
  @JsonKey(name: "keterangan")
  final String? keterangan;
  @override
  @JsonKey(name: "maxqty")
  final int? maxqty;
  @override
  @JsonKey(name: "salesdeliveryqty")
  final int? salesdeliveryqty;
  @override
  @JsonKey(name: "itemoid")
  final int? itemoid;
  @override
  @JsonKey(name: "trnorderdtloid")
  final int? trnorderdtloid;
  @override
  @JsonKey(name: "trnorderdtlunitoid")
  final int? trnorderdtlunitoid;
  @override
  @JsonKey(name: "unit")
  final String? unit;
  @override
  @JsonKey(name: "trnordermstoid")
  final int? trnordermstoid;
  @override
  @JsonKey(name: "whlocoid")
  final int? whlocoid;
  @override
  @JsonKey(name: "lokasi")
  final String? lokasi;
  @override
  @JsonKey(name: "itembarcode3")
  final String? itembarcode3;
  @override
  @JsonKey(name: "konvbarcode3")
  final int? konvbarcode3;
  @override
  @JsonKey(name: "itembarcode2")
  final String? itembarcode2;
  @override
  @JsonKey(name: "konvbarcode2")
  final int? konvbarcode2;
  @override
  @JsonKey(name: "itembarcode1")
  final String? itembarcode1;
  @override
  @JsonKey(name: "konvbarcode1")
  final int? konvbarcode1;
  @override
  @JsonKey(name: "image")
  final String? image;

  @override
  String toString() {
    return 'DataDetailChecker(checkvalue: $checkvalue, itemlongdesc: $itemlongdesc, itemgroupcode: $itemgroupcode, itemcode: $itemcode, merk: $merk, keterangan: $keterangan, maxqty: $maxqty, salesdeliveryqty: $salesdeliveryqty, itemoid: $itemoid, trnorderdtloid: $trnorderdtloid, trnorderdtlunitoid: $trnorderdtlunitoid, unit: $unit, trnordermstoid: $trnordermstoid, whlocoid: $whlocoid, lokasi: $lokasi, itembarcode3: $itembarcode3, konvbarcode3: $konvbarcode3, itembarcode2: $itembarcode2, konvbarcode2: $konvbarcode2, itembarcode1: $itembarcode1, konvbarcode1: $konvbarcode1, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDetailCheckerImpl &&
            (identical(other.checkvalue, checkvalue) ||
                other.checkvalue == checkvalue) &&
            (identical(other.itemlongdesc, itemlongdesc) ||
                other.itemlongdesc == itemlongdesc) &&
            (identical(other.itemgroupcode, itemgroupcode) ||
                other.itemgroupcode == itemgroupcode) &&
            (identical(other.itemcode, itemcode) ||
                other.itemcode == itemcode) &&
            (identical(other.merk, merk) || other.merk == merk) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.maxqty, maxqty) || other.maxqty == maxqty) &&
            (identical(other.salesdeliveryqty, salesdeliveryqty) ||
                other.salesdeliveryqty == salesdeliveryqty) &&
            (identical(other.itemoid, itemoid) || other.itemoid == itemoid) &&
            (identical(other.trnorderdtloid, trnorderdtloid) ||
                other.trnorderdtloid == trnorderdtloid) &&
            (identical(other.trnorderdtlunitoid, trnorderdtlunitoid) ||
                other.trnorderdtlunitoid == trnorderdtlunitoid) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.trnordermstoid, trnordermstoid) ||
                other.trnordermstoid == trnordermstoid) &&
            (identical(other.whlocoid, whlocoid) ||
                other.whlocoid == whlocoid) &&
            (identical(other.lokasi, lokasi) || other.lokasi == lokasi) &&
            (identical(other.itembarcode3, itembarcode3) ||
                other.itembarcode3 == itembarcode3) &&
            (identical(other.konvbarcode3, konvbarcode3) ||
                other.konvbarcode3 == konvbarcode3) &&
            (identical(other.itembarcode2, itembarcode2) ||
                other.itembarcode2 == itembarcode2) &&
            (identical(other.konvbarcode2, konvbarcode2) ||
                other.konvbarcode2 == konvbarcode2) &&
            (identical(other.itembarcode1, itembarcode1) ||
                other.itembarcode1 == itembarcode1) &&
            (identical(other.konvbarcode1, konvbarcode1) ||
                other.konvbarcode1 == konvbarcode1) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        checkvalue,
        itemlongdesc,
        itemgroupcode,
        itemcode,
        merk,
        keterangan,
        maxqty,
        salesdeliveryqty,
        itemoid,
        trnorderdtloid,
        trnorderdtlunitoid,
        unit,
        trnordermstoid,
        whlocoid,
        lokasi,
        itembarcode3,
        konvbarcode3,
        itembarcode2,
        konvbarcode2,
        itembarcode1,
        konvbarcode1,
        image
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDetailCheckerImplCopyWith<_$DataDetailCheckerImpl> get copyWith =>
      __$$DataDetailCheckerImplCopyWithImpl<_$DataDetailCheckerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDetailCheckerImplToJson(
      this,
    );
  }
}

abstract class _DataDetailChecker implements DataDetailChecker {
  const factory _DataDetailChecker(
      {@JsonKey(name: "checkvalue") final String? checkvalue,
      @JsonKey(name: "itemlongdesc") final String? itemlongdesc,
      @JsonKey(name: "itemgroupcode") final String? itemgroupcode,
      @JsonKey(name: "itemcode") final String? itemcode,
      @JsonKey(name: "merk") final String? merk,
      @JsonKey(name: "keterangan") final String? keterangan,
      @JsonKey(name: "maxqty") final int? maxqty,
      @JsonKey(name: "salesdeliveryqty") final int? salesdeliveryqty,
      @JsonKey(name: "itemoid") final int? itemoid,
      @JsonKey(name: "trnorderdtloid") final int? trnorderdtloid,
      @JsonKey(name: "trnorderdtlunitoid") final int? trnorderdtlunitoid,
      @JsonKey(name: "unit") final String? unit,
      @JsonKey(name: "trnordermstoid") final int? trnordermstoid,
      @JsonKey(name: "whlocoid") final int? whlocoid,
      @JsonKey(name: "lokasi") final String? lokasi,
      @JsonKey(name: "itembarcode3") final String? itembarcode3,
      @JsonKey(name: "konvbarcode3") final int? konvbarcode3,
      @JsonKey(name: "itembarcode2") final String? itembarcode2,
      @JsonKey(name: "konvbarcode2") final int? konvbarcode2,
      @JsonKey(name: "itembarcode1") final String? itembarcode1,
      @JsonKey(name: "konvbarcode1") final int? konvbarcode1,
      @JsonKey(name: "image") final String? image}) = _$DataDetailCheckerImpl;

  factory _DataDetailChecker.fromJson(Map<String, dynamic> json) =
      _$DataDetailCheckerImpl.fromJson;

  @override
  @JsonKey(name: "checkvalue")
  String? get checkvalue;
  @override
  @JsonKey(name: "itemlongdesc")
  String? get itemlongdesc;
  @override
  @JsonKey(name: "itemgroupcode")
  String? get itemgroupcode;
  @override
  @JsonKey(name: "itemcode")
  String? get itemcode;
  @override
  @JsonKey(name: "merk")
  String? get merk;
  @override
  @JsonKey(name: "keterangan")
  String? get keterangan;
  @override
  @JsonKey(name: "maxqty")
  int? get maxqty;
  @override
  @JsonKey(name: "salesdeliveryqty")
  int? get salesdeliveryqty;
  @override
  @JsonKey(name: "itemoid")
  int? get itemoid;
  @override
  @JsonKey(name: "trnorderdtloid")
  int? get trnorderdtloid;
  @override
  @JsonKey(name: "trnorderdtlunitoid")
  int? get trnorderdtlunitoid;
  @override
  @JsonKey(name: "unit")
  String? get unit;
  @override
  @JsonKey(name: "trnordermstoid")
  int? get trnordermstoid;
  @override
  @JsonKey(name: "whlocoid")
  int? get whlocoid;
  @override
  @JsonKey(name: "lokasi")
  String? get lokasi;
  @override
  @JsonKey(name: "itembarcode3")
  String? get itembarcode3;
  @override
  @JsonKey(name: "konvbarcode3")
  int? get konvbarcode3;
  @override
  @JsonKey(name: "itembarcode2")
  String? get itembarcode2;
  @override
  @JsonKey(name: "konvbarcode2")
  int? get konvbarcode2;
  @override
  @JsonKey(name: "itembarcode1")
  String? get itembarcode1;
  @override
  @JsonKey(name: "konvbarcode1")
  int? get konvbarcode1;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$DataDetailCheckerImplCopyWith<_$DataDetailCheckerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataCheckingScan _$DataCheckingScanFromJson(Map<String, dynamic> json) {
  return _DataCheckingScan.fromJson(json);
}

/// @nodoc
mixin _$DataCheckingScan {
  @JsonKey(name: "checkvalue")
  DataDetailChecker? get dataDetailChecker =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "isChecked")
  bool get isChecked => throw _privateConstructorUsedError;
  @JsonKey(name: "qtySekarang")
  int? get qtySekarang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCheckingScanCopyWith<DataCheckingScan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCheckingScanCopyWith<$Res> {
  factory $DataCheckingScanCopyWith(
          DataCheckingScan value, $Res Function(DataCheckingScan) then) =
      _$DataCheckingScanCopyWithImpl<$Res, DataCheckingScan>;
  @useResult
  $Res call(
      {@JsonKey(name: "checkvalue") DataDetailChecker? dataDetailChecker,
      @JsonKey(name: "isChecked") bool isChecked,
      @JsonKey(name: "qtySekarang") int? qtySekarang});

  $DataDetailCheckerCopyWith<$Res>? get dataDetailChecker;
}

/// @nodoc
class _$DataCheckingScanCopyWithImpl<$Res, $Val extends DataCheckingScan>
    implements $DataCheckingScanCopyWith<$Res> {
  _$DataCheckingScanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataDetailChecker = freezed,
    Object? isChecked = null,
    Object? qtySekarang = freezed,
  }) {
    return _then(_value.copyWith(
      dataDetailChecker: freezed == dataDetailChecker
          ? _value.dataDetailChecker
          : dataDetailChecker // ignore: cast_nullable_to_non_nullable
              as DataDetailChecker?,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      qtySekarang: freezed == qtySekarang
          ? _value.qtySekarang
          : qtySekarang // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataDetailCheckerCopyWith<$Res>? get dataDetailChecker {
    if (_value.dataDetailChecker == null) {
      return null;
    }

    return $DataDetailCheckerCopyWith<$Res>(_value.dataDetailChecker!, (value) {
      return _then(_value.copyWith(dataDetailChecker: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataCheckingScanImplCopyWith<$Res>
    implements $DataCheckingScanCopyWith<$Res> {
  factory _$$DataCheckingScanImplCopyWith(_$DataCheckingScanImpl value,
          $Res Function(_$DataCheckingScanImpl) then) =
      __$$DataCheckingScanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "checkvalue") DataDetailChecker? dataDetailChecker,
      @JsonKey(name: "isChecked") bool isChecked,
      @JsonKey(name: "qtySekarang") int? qtySekarang});

  @override
  $DataDetailCheckerCopyWith<$Res>? get dataDetailChecker;
}

/// @nodoc
class __$$DataCheckingScanImplCopyWithImpl<$Res>
    extends _$DataCheckingScanCopyWithImpl<$Res, _$DataCheckingScanImpl>
    implements _$$DataCheckingScanImplCopyWith<$Res> {
  __$$DataCheckingScanImplCopyWithImpl(_$DataCheckingScanImpl _value,
      $Res Function(_$DataCheckingScanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataDetailChecker = freezed,
    Object? isChecked = null,
    Object? qtySekarang = freezed,
  }) {
    return _then(_$DataCheckingScanImpl(
      dataDetailChecker: freezed == dataDetailChecker
          ? _value.dataDetailChecker
          : dataDetailChecker // ignore: cast_nullable_to_non_nullable
              as DataDetailChecker?,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      qtySekarang: freezed == qtySekarang
          ? _value.qtySekarang
          : qtySekarang // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataCheckingScanImpl implements _DataCheckingScan {
  const _$DataCheckingScanImpl(
      {@JsonKey(name: "checkvalue") this.dataDetailChecker,
      @JsonKey(name: "isChecked") this.isChecked = false,
      @JsonKey(name: "qtySekarang") this.qtySekarang});

  factory _$DataCheckingScanImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataCheckingScanImplFromJson(json);

  @override
  @JsonKey(name: "checkvalue")
  final DataDetailChecker? dataDetailChecker;
  @override
  @JsonKey(name: "isChecked")
  final bool isChecked;
  @override
  @JsonKey(name: "qtySekarang")
  final int? qtySekarang;

  @override
  String toString() {
    return 'DataCheckingScan(dataDetailChecker: $dataDetailChecker, isChecked: $isChecked, qtySekarang: $qtySekarang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataCheckingScanImpl &&
            (identical(other.dataDetailChecker, dataDetailChecker) ||
                other.dataDetailChecker == dataDetailChecker) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.qtySekarang, qtySekarang) ||
                other.qtySekarang == qtySekarang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dataDetailChecker, isChecked, qtySekarang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataCheckingScanImplCopyWith<_$DataCheckingScanImpl> get copyWith =>
      __$$DataCheckingScanImplCopyWithImpl<_$DataCheckingScanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataCheckingScanImplToJson(
      this,
    );
  }
}

abstract class _DataCheckingScan implements DataCheckingScan {
  const factory _DataCheckingScan(
      {@JsonKey(name: "checkvalue") final DataDetailChecker? dataDetailChecker,
      @JsonKey(name: "isChecked") final bool isChecked,
      @JsonKey(name: "qtySekarang")
      final int? qtySekarang}) = _$DataCheckingScanImpl;

  factory _DataCheckingScan.fromJson(Map<String, dynamic> json) =
      _$DataCheckingScanImpl.fromJson;

  @override
  @JsonKey(name: "checkvalue")
  DataDetailChecker? get dataDetailChecker;
  @override
  @JsonKey(name: "isChecked")
  bool get isChecked;
  @override
  @JsonKey(name: "qtySekarang")
  int? get qtySekarang;
  @override
  @JsonKey(ignore: true)
  _$$DataCheckingScanImplCopyWith<_$DataCheckingScanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
