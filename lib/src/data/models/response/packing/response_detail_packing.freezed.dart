// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_detail_packing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDetailPacking _$ResponseDetailPackingFromJson(
    Map<String, dynamic> json) {
  return _ResponseDetailPacking.fromJson(json);
}

/// @nodoc
mixin _$ResponseDetailPacking {
  @JsonKey(name: "msgServer")
  List<DataDetailPacking>? get msgServer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDetailPackingCopyWith<ResponseDetailPacking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDetailPackingCopyWith<$Res> {
  factory $ResponseDetailPackingCopyWith(ResponseDetailPacking value,
          $Res Function(ResponseDetailPacking) then) =
      _$ResponseDetailPackingCopyWithImpl<$Res, ResponseDetailPacking>;
  @useResult
  $Res call({@JsonKey(name: "msgServer") List<DataDetailPacking>? msgServer});
}

/// @nodoc
class _$ResponseDetailPackingCopyWithImpl<$Res,
        $Val extends ResponseDetailPacking>
    implements $ResponseDetailPackingCopyWith<$Res> {
  _$ResponseDetailPackingCopyWithImpl(this._value, this._then);

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
              as List<DataDetailPacking>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDetailPackingImplCopyWith<$Res>
    implements $ResponseDetailPackingCopyWith<$Res> {
  factory _$$ResponseDetailPackingImplCopyWith(
          _$ResponseDetailPackingImpl value,
          $Res Function(_$ResponseDetailPackingImpl) then) =
      __$$ResponseDetailPackingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "msgServer") List<DataDetailPacking>? msgServer});
}

/// @nodoc
class __$$ResponseDetailPackingImplCopyWithImpl<$Res>
    extends _$ResponseDetailPackingCopyWithImpl<$Res,
        _$ResponseDetailPackingImpl>
    implements _$$ResponseDetailPackingImplCopyWith<$Res> {
  __$$ResponseDetailPackingImplCopyWithImpl(_$ResponseDetailPackingImpl _value,
      $Res Function(_$ResponseDetailPackingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgServer = freezed,
  }) {
    return _then(_$ResponseDetailPackingImpl(
      msgServer: freezed == msgServer
          ? _value._msgServer
          : msgServer // ignore: cast_nullable_to_non_nullable
              as List<DataDetailPacking>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDetailPackingImpl implements _ResponseDetailPacking {
  const _$ResponseDetailPackingImpl(
      {@JsonKey(name: "msgServer") final List<DataDetailPacking>? msgServer})
      : _msgServer = msgServer;

  factory _$ResponseDetailPackingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDetailPackingImplFromJson(json);

  final List<DataDetailPacking>? _msgServer;
  @override
  @JsonKey(name: "msgServer")
  List<DataDetailPacking>? get msgServer {
    final value = _msgServer;
    if (value == null) return null;
    if (_msgServer is EqualUnmodifiableListView) return _msgServer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseDetailPacking(msgServer: $msgServer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDetailPackingImpl &&
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
  _$$ResponseDetailPackingImplCopyWith<_$ResponseDetailPackingImpl>
      get copyWith => __$$ResponseDetailPackingImplCopyWithImpl<
          _$ResponseDetailPackingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDetailPackingImplToJson(
      this,
    );
  }
}

abstract class _ResponseDetailPacking implements ResponseDetailPacking {
  const factory _ResponseDetailPacking(
      {@JsonKey(name: "msgServer")
      final List<DataDetailPacking>? msgServer}) = _$ResponseDetailPackingImpl;

  factory _ResponseDetailPacking.fromJson(Map<String, dynamic> json) =
      _$ResponseDetailPackingImpl.fromJson;

  @override
  @JsonKey(name: "msgServer")
  List<DataDetailPacking>? get msgServer;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDetailPackingImplCopyWith<_$ResponseDetailPackingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataDetailPacking _$DataDetailPackingFromJson(Map<String, dynamic> json) {
  return _DataDetailPacking.fromJson(json);
}

/// @nodoc
mixin _$DataDetailPacking {
  @JsonKey(name: "checkvalue")
  String? get checkvalue => throw _privateConstructorUsedError;
  @JsonKey(name: "trnsjjualdtlseq")
  int? get trnsjjualdtlseq => throw _privateConstructorUsedError;
  @JsonKey(name: "salesdeliverydtloid")
  int? get salesdeliverydtloid => throw _privateConstructorUsedError;
  @JsonKey(name: "salesdeliverymstoid")
  int? get salesdeliverymstoid => throw _privateConstructorUsedError;
  @JsonKey(name: "orderdtloid")
  int? get orderdtloid => throw _privateConstructorUsedError;
  @JsonKey(name: "salesdeliveryqty")
  int? get salesdeliveryqty => throw _privateConstructorUsedError;
  @JsonKey(name: "itemdeliverynote")
  String? get itemdeliverynote => throw _privateConstructorUsedError;
  @JsonKey(name: "salesdeliveryoid")
  int? get salesdeliveryoid => throw _privateConstructorUsedError;
  @JsonKey(name: "itemoid")
  int? get itemoid => throw _privateConstructorUsedError;
  @JsonKey(name: "itemunitoid")
  int? get itemunitoid => throw _privateConstructorUsedError;
  @JsonKey(name: "itemlongdesc")
  String? get itemlongdesc => throw _privateConstructorUsedError;
  @JsonKey(name: "itemcode")
  String? get itemcode => throw _privateConstructorUsedError;
  @JsonKey(name: "merk")
  String? get merk => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "deliveredqty")
  int? get deliveredqty => throw _privateConstructorUsedError;
  @JsonKey(name: "referedqty")
  int? get referedqty => throw _privateConstructorUsedError;
  @JsonKey(name: "qtypak")
  int? get qtypak => throw _privateConstructorUsedError;
  @JsonKey(name: "itemloc")
  int? get itemloc => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDetailPackingCopyWith<DataDetailPacking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDetailPackingCopyWith<$Res> {
  factory $DataDetailPackingCopyWith(
          DataDetailPacking value, $Res Function(DataDetailPacking) then) =
      _$DataDetailPackingCopyWithImpl<$Res, DataDetailPacking>;
  @useResult
  $Res call(
      {@JsonKey(name: "checkvalue") String? checkvalue,
      @JsonKey(name: "trnsjjualdtlseq") int? trnsjjualdtlseq,
      @JsonKey(name: "salesdeliverydtloid") int? salesdeliverydtloid,
      @JsonKey(name: "salesdeliverymstoid") int? salesdeliverymstoid,
      @JsonKey(name: "orderdtloid") int? orderdtloid,
      @JsonKey(name: "salesdeliveryqty") int? salesdeliveryqty,
      @JsonKey(name: "itemdeliverynote") String? itemdeliverynote,
      @JsonKey(name: "salesdeliveryoid") int? salesdeliveryoid,
      @JsonKey(name: "itemoid") int? itemoid,
      @JsonKey(name: "itemunitoid") int? itemunitoid,
      @JsonKey(name: "itemlongdesc") String? itemlongdesc,
      @JsonKey(name: "itemcode") String? itemcode,
      @JsonKey(name: "merk") String? merk,
      @JsonKey(name: "unit") String? unit,
      @JsonKey(name: "deliveredqty") int? deliveredqty,
      @JsonKey(name: "referedqty") int? referedqty,
      @JsonKey(name: "qtypak") int? qtypak,
      @JsonKey(name: "itemloc") int? itemloc,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class _$DataDetailPackingCopyWithImpl<$Res, $Val extends DataDetailPacking>
    implements $DataDetailPackingCopyWith<$Res> {
  _$DataDetailPackingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkvalue = freezed,
    Object? trnsjjualdtlseq = freezed,
    Object? salesdeliverydtloid = freezed,
    Object? salesdeliverymstoid = freezed,
    Object? orderdtloid = freezed,
    Object? salesdeliveryqty = freezed,
    Object? itemdeliverynote = freezed,
    Object? salesdeliveryoid = freezed,
    Object? itemoid = freezed,
    Object? itemunitoid = freezed,
    Object? itemlongdesc = freezed,
    Object? itemcode = freezed,
    Object? merk = freezed,
    Object? unit = freezed,
    Object? deliveredqty = freezed,
    Object? referedqty = freezed,
    Object? qtypak = freezed,
    Object? itemloc = freezed,
    Object? location = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      checkvalue: freezed == checkvalue
          ? _value.checkvalue
          : checkvalue // ignore: cast_nullable_to_non_nullable
              as String?,
      trnsjjualdtlseq: freezed == trnsjjualdtlseq
          ? _value.trnsjjualdtlseq
          : trnsjjualdtlseq // ignore: cast_nullable_to_non_nullable
              as int?,
      salesdeliverydtloid: freezed == salesdeliverydtloid
          ? _value.salesdeliverydtloid
          : salesdeliverydtloid // ignore: cast_nullable_to_non_nullable
              as int?,
      salesdeliverymstoid: freezed == salesdeliverymstoid
          ? _value.salesdeliverymstoid
          : salesdeliverymstoid // ignore: cast_nullable_to_non_nullable
              as int?,
      orderdtloid: freezed == orderdtloid
          ? _value.orderdtloid
          : orderdtloid // ignore: cast_nullable_to_non_nullable
              as int?,
      salesdeliveryqty: freezed == salesdeliveryqty
          ? _value.salesdeliveryqty
          : salesdeliveryqty // ignore: cast_nullable_to_non_nullable
              as int?,
      itemdeliverynote: freezed == itemdeliverynote
          ? _value.itemdeliverynote
          : itemdeliverynote // ignore: cast_nullable_to_non_nullable
              as String?,
      salesdeliveryoid: freezed == salesdeliveryoid
          ? _value.salesdeliveryoid
          : salesdeliveryoid // ignore: cast_nullable_to_non_nullable
              as int?,
      itemoid: freezed == itemoid
          ? _value.itemoid
          : itemoid // ignore: cast_nullable_to_non_nullable
              as int?,
      itemunitoid: freezed == itemunitoid
          ? _value.itemunitoid
          : itemunitoid // ignore: cast_nullable_to_non_nullable
              as int?,
      itemlongdesc: freezed == itemlongdesc
          ? _value.itemlongdesc
          : itemlongdesc // ignore: cast_nullable_to_non_nullable
              as String?,
      itemcode: freezed == itemcode
          ? _value.itemcode
          : itemcode // ignore: cast_nullable_to_non_nullable
              as String?,
      merk: freezed == merk
          ? _value.merk
          : merk // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveredqty: freezed == deliveredqty
          ? _value.deliveredqty
          : deliveredqty // ignore: cast_nullable_to_non_nullable
              as int?,
      referedqty: freezed == referedqty
          ? _value.referedqty
          : referedqty // ignore: cast_nullable_to_non_nullable
              as int?,
      qtypak: freezed == qtypak
          ? _value.qtypak
          : qtypak // ignore: cast_nullable_to_non_nullable
              as int?,
      itemloc: freezed == itemloc
          ? _value.itemloc
          : itemloc // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDetailPackingImplCopyWith<$Res>
    implements $DataDetailPackingCopyWith<$Res> {
  factory _$$DataDetailPackingImplCopyWith(_$DataDetailPackingImpl value,
          $Res Function(_$DataDetailPackingImpl) then) =
      __$$DataDetailPackingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "checkvalue") String? checkvalue,
      @JsonKey(name: "trnsjjualdtlseq") int? trnsjjualdtlseq,
      @JsonKey(name: "salesdeliverydtloid") int? salesdeliverydtloid,
      @JsonKey(name: "salesdeliverymstoid") int? salesdeliverymstoid,
      @JsonKey(name: "orderdtloid") int? orderdtloid,
      @JsonKey(name: "salesdeliveryqty") int? salesdeliveryqty,
      @JsonKey(name: "itemdeliverynote") String? itemdeliverynote,
      @JsonKey(name: "salesdeliveryoid") int? salesdeliveryoid,
      @JsonKey(name: "itemoid") int? itemoid,
      @JsonKey(name: "itemunitoid") int? itemunitoid,
      @JsonKey(name: "itemlongdesc") String? itemlongdesc,
      @JsonKey(name: "itemcode") String? itemcode,
      @JsonKey(name: "merk") String? merk,
      @JsonKey(name: "unit") String? unit,
      @JsonKey(name: "deliveredqty") int? deliveredqty,
      @JsonKey(name: "referedqty") int? referedqty,
      @JsonKey(name: "qtypak") int? qtypak,
      @JsonKey(name: "itemloc") int? itemloc,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class __$$DataDetailPackingImplCopyWithImpl<$Res>
    extends _$DataDetailPackingCopyWithImpl<$Res, _$DataDetailPackingImpl>
    implements _$$DataDetailPackingImplCopyWith<$Res> {
  __$$DataDetailPackingImplCopyWithImpl(_$DataDetailPackingImpl _value,
      $Res Function(_$DataDetailPackingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkvalue = freezed,
    Object? trnsjjualdtlseq = freezed,
    Object? salesdeliverydtloid = freezed,
    Object? salesdeliverymstoid = freezed,
    Object? orderdtloid = freezed,
    Object? salesdeliveryqty = freezed,
    Object? itemdeliverynote = freezed,
    Object? salesdeliveryoid = freezed,
    Object? itemoid = freezed,
    Object? itemunitoid = freezed,
    Object? itemlongdesc = freezed,
    Object? itemcode = freezed,
    Object? merk = freezed,
    Object? unit = freezed,
    Object? deliveredqty = freezed,
    Object? referedqty = freezed,
    Object? qtypak = freezed,
    Object? itemloc = freezed,
    Object? location = freezed,
    Object? image = freezed,
  }) {
    return _then(_$DataDetailPackingImpl(
      checkvalue: freezed == checkvalue
          ? _value.checkvalue
          : checkvalue // ignore: cast_nullable_to_non_nullable
              as String?,
      trnsjjualdtlseq: freezed == trnsjjualdtlseq
          ? _value.trnsjjualdtlseq
          : trnsjjualdtlseq // ignore: cast_nullable_to_non_nullable
              as int?,
      salesdeliverydtloid: freezed == salesdeliverydtloid
          ? _value.salesdeliverydtloid
          : salesdeliverydtloid // ignore: cast_nullable_to_non_nullable
              as int?,
      salesdeliverymstoid: freezed == salesdeliverymstoid
          ? _value.salesdeliverymstoid
          : salesdeliverymstoid // ignore: cast_nullable_to_non_nullable
              as int?,
      orderdtloid: freezed == orderdtloid
          ? _value.orderdtloid
          : orderdtloid // ignore: cast_nullable_to_non_nullable
              as int?,
      salesdeliveryqty: freezed == salesdeliveryqty
          ? _value.salesdeliveryqty
          : salesdeliveryqty // ignore: cast_nullable_to_non_nullable
              as int?,
      itemdeliverynote: freezed == itemdeliverynote
          ? _value.itemdeliverynote
          : itemdeliverynote // ignore: cast_nullable_to_non_nullable
              as String?,
      salesdeliveryoid: freezed == salesdeliveryoid
          ? _value.salesdeliveryoid
          : salesdeliveryoid // ignore: cast_nullable_to_non_nullable
              as int?,
      itemoid: freezed == itemoid
          ? _value.itemoid
          : itemoid // ignore: cast_nullable_to_non_nullable
              as int?,
      itemunitoid: freezed == itemunitoid
          ? _value.itemunitoid
          : itemunitoid // ignore: cast_nullable_to_non_nullable
              as int?,
      itemlongdesc: freezed == itemlongdesc
          ? _value.itemlongdesc
          : itemlongdesc // ignore: cast_nullable_to_non_nullable
              as String?,
      itemcode: freezed == itemcode
          ? _value.itemcode
          : itemcode // ignore: cast_nullable_to_non_nullable
              as String?,
      merk: freezed == merk
          ? _value.merk
          : merk // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveredqty: freezed == deliveredqty
          ? _value.deliveredqty
          : deliveredqty // ignore: cast_nullable_to_non_nullable
              as int?,
      referedqty: freezed == referedqty
          ? _value.referedqty
          : referedqty // ignore: cast_nullable_to_non_nullable
              as int?,
      qtypak: freezed == qtypak
          ? _value.qtypak
          : qtypak // ignore: cast_nullable_to_non_nullable
              as int?,
      itemloc: freezed == itemloc
          ? _value.itemloc
          : itemloc // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDetailPackingImpl implements _DataDetailPacking {
  const _$DataDetailPackingImpl(
      {@JsonKey(name: "checkvalue") this.checkvalue,
      @JsonKey(name: "trnsjjualdtlseq") this.trnsjjualdtlseq,
      @JsonKey(name: "salesdeliverydtloid") this.salesdeliverydtloid,
      @JsonKey(name: "salesdeliverymstoid") this.salesdeliverymstoid,
      @JsonKey(name: "orderdtloid") this.orderdtloid,
      @JsonKey(name: "salesdeliveryqty") this.salesdeliveryqty,
      @JsonKey(name: "itemdeliverynote") this.itemdeliverynote,
      @JsonKey(name: "salesdeliveryoid") this.salesdeliveryoid,
      @JsonKey(name: "itemoid") this.itemoid,
      @JsonKey(name: "itemunitoid") this.itemunitoid,
      @JsonKey(name: "itemlongdesc") this.itemlongdesc,
      @JsonKey(name: "itemcode") this.itemcode,
      @JsonKey(name: "merk") this.merk,
      @JsonKey(name: "unit") this.unit,
      @JsonKey(name: "deliveredqty") this.deliveredqty,
      @JsonKey(name: "referedqty") this.referedqty,
      @JsonKey(name: "qtypak") this.qtypak,
      @JsonKey(name: "itemloc") this.itemloc,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "image") this.image});

  factory _$DataDetailPackingImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDetailPackingImplFromJson(json);

  @override
  @JsonKey(name: "checkvalue")
  final String? checkvalue;
  @override
  @JsonKey(name: "trnsjjualdtlseq")
  final int? trnsjjualdtlseq;
  @override
  @JsonKey(name: "salesdeliverydtloid")
  final int? salesdeliverydtloid;
  @override
  @JsonKey(name: "salesdeliverymstoid")
  final int? salesdeliverymstoid;
  @override
  @JsonKey(name: "orderdtloid")
  final int? orderdtloid;
  @override
  @JsonKey(name: "salesdeliveryqty")
  final int? salesdeliveryqty;
  @override
  @JsonKey(name: "itemdeliverynote")
  final String? itemdeliverynote;
  @override
  @JsonKey(name: "salesdeliveryoid")
  final int? salesdeliveryoid;
  @override
  @JsonKey(name: "itemoid")
  final int? itemoid;
  @override
  @JsonKey(name: "itemunitoid")
  final int? itemunitoid;
  @override
  @JsonKey(name: "itemlongdesc")
  final String? itemlongdesc;
  @override
  @JsonKey(name: "itemcode")
  final String? itemcode;
  @override
  @JsonKey(name: "merk")
  final String? merk;
  @override
  @JsonKey(name: "unit")
  final String? unit;
  @override
  @JsonKey(name: "deliveredqty")
  final int? deliveredqty;
  @override
  @JsonKey(name: "referedqty")
  final int? referedqty;
  @override
  @JsonKey(name: "qtypak")
  final int? qtypak;
  @override
  @JsonKey(name: "itemloc")
  final int? itemloc;
  @override
  @JsonKey(name: "location")
  final String? location;
  @override
  @JsonKey(name: "image")
  final String? image;

  @override
  String toString() {
    return 'DataDetailPacking(checkvalue: $checkvalue, trnsjjualdtlseq: $trnsjjualdtlseq, salesdeliverydtloid: $salesdeliverydtloid, salesdeliverymstoid: $salesdeliverymstoid, orderdtloid: $orderdtloid, salesdeliveryqty: $salesdeliveryqty, itemdeliverynote: $itemdeliverynote, salesdeliveryoid: $salesdeliveryoid, itemoid: $itemoid, itemunitoid: $itemunitoid, itemlongdesc: $itemlongdesc, itemcode: $itemcode, merk: $merk, unit: $unit, deliveredqty: $deliveredqty, referedqty: $referedqty, qtypak: $qtypak, itemloc: $itemloc, location: $location, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDetailPackingImpl &&
            (identical(other.checkvalue, checkvalue) ||
                other.checkvalue == checkvalue) &&
            (identical(other.trnsjjualdtlseq, trnsjjualdtlseq) ||
                other.trnsjjualdtlseq == trnsjjualdtlseq) &&
            (identical(other.salesdeliverydtloid, salesdeliverydtloid) ||
                other.salesdeliverydtloid == salesdeliverydtloid) &&
            (identical(other.salesdeliverymstoid, salesdeliverymstoid) ||
                other.salesdeliverymstoid == salesdeliverymstoid) &&
            (identical(other.orderdtloid, orderdtloid) ||
                other.orderdtloid == orderdtloid) &&
            (identical(other.salesdeliveryqty, salesdeliveryqty) ||
                other.salesdeliveryqty == salesdeliveryqty) &&
            (identical(other.itemdeliverynote, itemdeliverynote) ||
                other.itemdeliverynote == itemdeliverynote) &&
            (identical(other.salesdeliveryoid, salesdeliveryoid) ||
                other.salesdeliveryoid == salesdeliveryoid) &&
            (identical(other.itemoid, itemoid) || other.itemoid == itemoid) &&
            (identical(other.itemunitoid, itemunitoid) ||
                other.itemunitoid == itemunitoid) &&
            (identical(other.itemlongdesc, itemlongdesc) ||
                other.itemlongdesc == itemlongdesc) &&
            (identical(other.itemcode, itemcode) ||
                other.itemcode == itemcode) &&
            (identical(other.merk, merk) || other.merk == merk) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.deliveredqty, deliveredqty) ||
                other.deliveredqty == deliveredqty) &&
            (identical(other.referedqty, referedqty) ||
                other.referedqty == referedqty) &&
            (identical(other.qtypak, qtypak) || other.qtypak == qtypak) &&
            (identical(other.itemloc, itemloc) || other.itemloc == itemloc) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        checkvalue,
        trnsjjualdtlseq,
        salesdeliverydtloid,
        salesdeliverymstoid,
        orderdtloid,
        salesdeliveryqty,
        itemdeliverynote,
        salesdeliveryoid,
        itemoid,
        itemunitoid,
        itemlongdesc,
        itemcode,
        merk,
        unit,
        deliveredqty,
        referedqty,
        qtypak,
        itemloc,
        location,
        image
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDetailPackingImplCopyWith<_$DataDetailPackingImpl> get copyWith =>
      __$$DataDetailPackingImplCopyWithImpl<_$DataDetailPackingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDetailPackingImplToJson(
      this,
    );
  }
}

abstract class _DataDetailPacking implements DataDetailPacking {
  const factory _DataDetailPacking(
      {@JsonKey(name: "checkvalue") final String? checkvalue,
      @JsonKey(name: "trnsjjualdtlseq") final int? trnsjjualdtlseq,
      @JsonKey(name: "salesdeliverydtloid") final int? salesdeliverydtloid,
      @JsonKey(name: "salesdeliverymstoid") final int? salesdeliverymstoid,
      @JsonKey(name: "orderdtloid") final int? orderdtloid,
      @JsonKey(name: "salesdeliveryqty") final int? salesdeliveryqty,
      @JsonKey(name: "itemdeliverynote") final String? itemdeliverynote,
      @JsonKey(name: "salesdeliveryoid") final int? salesdeliveryoid,
      @JsonKey(name: "itemoid") final int? itemoid,
      @JsonKey(name: "itemunitoid") final int? itemunitoid,
      @JsonKey(name: "itemlongdesc") final String? itemlongdesc,
      @JsonKey(name: "itemcode") final String? itemcode,
      @JsonKey(name: "merk") final String? merk,
      @JsonKey(name: "unit") final String? unit,
      @JsonKey(name: "deliveredqty") final int? deliveredqty,
      @JsonKey(name: "referedqty") final int? referedqty,
      @JsonKey(name: "qtypak") final int? qtypak,
      @JsonKey(name: "itemloc") final int? itemloc,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "image") final String? image}) = _$DataDetailPackingImpl;

  factory _DataDetailPacking.fromJson(Map<String, dynamic> json) =
      _$DataDetailPackingImpl.fromJson;

  @override
  @JsonKey(name: "checkvalue")
  String? get checkvalue;
  @override
  @JsonKey(name: "trnsjjualdtlseq")
  int? get trnsjjualdtlseq;
  @override
  @JsonKey(name: "salesdeliverydtloid")
  int? get salesdeliverydtloid;
  @override
  @JsonKey(name: "salesdeliverymstoid")
  int? get salesdeliverymstoid;
  @override
  @JsonKey(name: "orderdtloid")
  int? get orderdtloid;
  @override
  @JsonKey(name: "salesdeliveryqty")
  int? get salesdeliveryqty;
  @override
  @JsonKey(name: "itemdeliverynote")
  String? get itemdeliverynote;
  @override
  @JsonKey(name: "salesdeliveryoid")
  int? get salesdeliveryoid;
  @override
  @JsonKey(name: "itemoid")
  int? get itemoid;
  @override
  @JsonKey(name: "itemunitoid")
  int? get itemunitoid;
  @override
  @JsonKey(name: "itemlongdesc")
  String? get itemlongdesc;
  @override
  @JsonKey(name: "itemcode")
  String? get itemcode;
  @override
  @JsonKey(name: "merk")
  String? get merk;
  @override
  @JsonKey(name: "unit")
  String? get unit;
  @override
  @JsonKey(name: "deliveredqty")
  int? get deliveredqty;
  @override
  @JsonKey(name: "referedqty")
  int? get referedqty;
  @override
  @JsonKey(name: "qtypak")
  int? get qtypak;
  @override
  @JsonKey(name: "itemloc")
  int? get itemloc;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$DataDetailPackingImplCopyWith<_$DataDetailPackingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
