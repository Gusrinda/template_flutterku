// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_checker_so.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCheckerSo _$ResponseCheckerSoFromJson(Map<String, dynamic> json) {
  return _ResponseCheckerSo.fromJson(json);
}

/// @nodoc
mixin _$ResponseCheckerSo {
  @JsonKey(name: "msgServer")
  List<DataCheckerSO>? get msgServer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCheckerSoCopyWith<ResponseCheckerSo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCheckerSoCopyWith<$Res> {
  factory $ResponseCheckerSoCopyWith(
          ResponseCheckerSo value, $Res Function(ResponseCheckerSo) then) =
      _$ResponseCheckerSoCopyWithImpl<$Res, ResponseCheckerSo>;
  @useResult
  $Res call({@JsonKey(name: "msgServer") List<DataCheckerSO>? msgServer});
}

/// @nodoc
class _$ResponseCheckerSoCopyWithImpl<$Res, $Val extends ResponseCheckerSo>
    implements $ResponseCheckerSoCopyWith<$Res> {
  _$ResponseCheckerSoCopyWithImpl(this._value, this._then);

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
              as List<DataCheckerSO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseCheckerSoImplCopyWith<$Res>
    implements $ResponseCheckerSoCopyWith<$Res> {
  factory _$$ResponseCheckerSoImplCopyWith(_$ResponseCheckerSoImpl value,
          $Res Function(_$ResponseCheckerSoImpl) then) =
      __$$ResponseCheckerSoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "msgServer") List<DataCheckerSO>? msgServer});
}

/// @nodoc
class __$$ResponseCheckerSoImplCopyWithImpl<$Res>
    extends _$ResponseCheckerSoCopyWithImpl<$Res, _$ResponseCheckerSoImpl>
    implements _$$ResponseCheckerSoImplCopyWith<$Res> {
  __$$ResponseCheckerSoImplCopyWithImpl(_$ResponseCheckerSoImpl _value,
      $Res Function(_$ResponseCheckerSoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgServer = freezed,
  }) {
    return _then(_$ResponseCheckerSoImpl(
      msgServer: freezed == msgServer
          ? _value._msgServer
          : msgServer // ignore: cast_nullable_to_non_nullable
              as List<DataCheckerSO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCheckerSoImpl implements _ResponseCheckerSo {
  const _$ResponseCheckerSoImpl(
      {@JsonKey(name: "msgServer") final List<DataCheckerSO>? msgServer})
      : _msgServer = msgServer;

  factory _$ResponseCheckerSoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCheckerSoImplFromJson(json);

  final List<DataCheckerSO>? _msgServer;
  @override
  @JsonKey(name: "msgServer")
  List<DataCheckerSO>? get msgServer {
    final value = _msgServer;
    if (value == null) return null;
    if (_msgServer is EqualUnmodifiableListView) return _msgServer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseCheckerSo(msgServer: $msgServer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCheckerSoImpl &&
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
  _$$ResponseCheckerSoImplCopyWith<_$ResponseCheckerSoImpl> get copyWith =>
      __$$ResponseCheckerSoImplCopyWithImpl<_$ResponseCheckerSoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCheckerSoImplToJson(
      this,
    );
  }
}

abstract class _ResponseCheckerSo implements ResponseCheckerSo {
  const factory _ResponseCheckerSo(
          {@JsonKey(name: "msgServer") final List<DataCheckerSO>? msgServer}) =
      _$ResponseCheckerSoImpl;

  factory _ResponseCheckerSo.fromJson(Map<String, dynamic> json) =
      _$ResponseCheckerSoImpl.fromJson;

  @override
  @JsonKey(name: "msgServer")
  List<DataCheckerSO>? get msgServer;
  @override
  @JsonKey(ignore: true)
  _$$ResponseCheckerSoImplCopyWith<_$ResponseCheckerSoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataCheckerSO _$DataCheckerSOFromJson(Map<String, dynamic> json) {
  return _DataCheckerSO.fromJson(json);
}

/// @nodoc
mixin _$DataCheckerSO {
  @JsonKey(name: "ordermstoid")
  int? get ordermstoid => throw _privateConstructorUsedError;
  @JsonKey(name: "orderno")
  String? get orderno => throw _privateConstructorUsedError;
  @JsonKey(name: "trnorderdate")
  String? get trnorderdate => throw _privateConstructorUsedError;
  @JsonKey(name: "trncustoid")
  int? get trncustoid => throw _privateConstructorUsedError;
  @JsonKey(name: "custname")
  String? get custname => throw _privateConstructorUsedError;
  @JsonKey(name: "delivdate")
  String? get delivdate => throw _privateConstructorUsedError;
  @JsonKey(name: "trnordernote")
  String? get trnordernote => throw _privateConstructorUsedError;
  @JsonKey(name: "ekspedisioid")
  int? get ekspedisioid => throw _privateConstructorUsedError;
  @JsonKey(name: "infostatus")
  String? get infostatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCheckerSOCopyWith<DataCheckerSO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCheckerSOCopyWith<$Res> {
  factory $DataCheckerSOCopyWith(
          DataCheckerSO value, $Res Function(DataCheckerSO) then) =
      _$DataCheckerSOCopyWithImpl<$Res, DataCheckerSO>;
  @useResult
  $Res call(
      {@JsonKey(name: "ordermstoid") int? ordermstoid,
      @JsonKey(name: "orderno") String? orderno,
      @JsonKey(name: "trnorderdate") String? trnorderdate,
      @JsonKey(name: "trncustoid") int? trncustoid,
      @JsonKey(name: "custname") String? custname,
      @JsonKey(name: "delivdate") String? delivdate,
      @JsonKey(name: "trnordernote") String? trnordernote,
      @JsonKey(name: "ekspedisioid") int? ekspedisioid,
      @JsonKey(name: "infostatus") String? infostatus});
}

/// @nodoc
class _$DataCheckerSOCopyWithImpl<$Res, $Val extends DataCheckerSO>
    implements $DataCheckerSOCopyWith<$Res> {
  _$DataCheckerSOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordermstoid = freezed,
    Object? orderno = freezed,
    Object? trnorderdate = freezed,
    Object? trncustoid = freezed,
    Object? custname = freezed,
    Object? delivdate = freezed,
    Object? trnordernote = freezed,
    Object? ekspedisioid = freezed,
    Object? infostatus = freezed,
  }) {
    return _then(_value.copyWith(
      ordermstoid: freezed == ordermstoid
          ? _value.ordermstoid
          : ordermstoid // ignore: cast_nullable_to_non_nullable
              as int?,
      orderno: freezed == orderno
          ? _value.orderno
          : orderno // ignore: cast_nullable_to_non_nullable
              as String?,
      trnorderdate: freezed == trnorderdate
          ? _value.trnorderdate
          : trnorderdate // ignore: cast_nullable_to_non_nullable
              as String?,
      trncustoid: freezed == trncustoid
          ? _value.trncustoid
          : trncustoid // ignore: cast_nullable_to_non_nullable
              as int?,
      custname: freezed == custname
          ? _value.custname
          : custname // ignore: cast_nullable_to_non_nullable
              as String?,
      delivdate: freezed == delivdate
          ? _value.delivdate
          : delivdate // ignore: cast_nullable_to_non_nullable
              as String?,
      trnordernote: freezed == trnordernote
          ? _value.trnordernote
          : trnordernote // ignore: cast_nullable_to_non_nullable
              as String?,
      ekspedisioid: freezed == ekspedisioid
          ? _value.ekspedisioid
          : ekspedisioid // ignore: cast_nullable_to_non_nullable
              as int?,
      infostatus: freezed == infostatus
          ? _value.infostatus
          : infostatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataCheckerSOImplCopyWith<$Res>
    implements $DataCheckerSOCopyWith<$Res> {
  factory _$$DataCheckerSOImplCopyWith(
          _$DataCheckerSOImpl value, $Res Function(_$DataCheckerSOImpl) then) =
      __$$DataCheckerSOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ordermstoid") int? ordermstoid,
      @JsonKey(name: "orderno") String? orderno,
      @JsonKey(name: "trnorderdate") String? trnorderdate,
      @JsonKey(name: "trncustoid") int? trncustoid,
      @JsonKey(name: "custname") String? custname,
      @JsonKey(name: "delivdate") String? delivdate,
      @JsonKey(name: "trnordernote") String? trnordernote,
      @JsonKey(name: "ekspedisioid") int? ekspedisioid,
      @JsonKey(name: "infostatus") String? infostatus});
}

/// @nodoc
class __$$DataCheckerSOImplCopyWithImpl<$Res>
    extends _$DataCheckerSOCopyWithImpl<$Res, _$DataCheckerSOImpl>
    implements _$$DataCheckerSOImplCopyWith<$Res> {
  __$$DataCheckerSOImplCopyWithImpl(
      _$DataCheckerSOImpl _value, $Res Function(_$DataCheckerSOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordermstoid = freezed,
    Object? orderno = freezed,
    Object? trnorderdate = freezed,
    Object? trncustoid = freezed,
    Object? custname = freezed,
    Object? delivdate = freezed,
    Object? trnordernote = freezed,
    Object? ekspedisioid = freezed,
    Object? infostatus = freezed,
  }) {
    return _then(_$DataCheckerSOImpl(
      ordermstoid: freezed == ordermstoid
          ? _value.ordermstoid
          : ordermstoid // ignore: cast_nullable_to_non_nullable
              as int?,
      orderno: freezed == orderno
          ? _value.orderno
          : orderno // ignore: cast_nullable_to_non_nullable
              as String?,
      trnorderdate: freezed == trnorderdate
          ? _value.trnorderdate
          : trnorderdate // ignore: cast_nullable_to_non_nullable
              as String?,
      trncustoid: freezed == trncustoid
          ? _value.trncustoid
          : trncustoid // ignore: cast_nullable_to_non_nullable
              as int?,
      custname: freezed == custname
          ? _value.custname
          : custname // ignore: cast_nullable_to_non_nullable
              as String?,
      delivdate: freezed == delivdate
          ? _value.delivdate
          : delivdate // ignore: cast_nullable_to_non_nullable
              as String?,
      trnordernote: freezed == trnordernote
          ? _value.trnordernote
          : trnordernote // ignore: cast_nullable_to_non_nullable
              as String?,
      ekspedisioid: freezed == ekspedisioid
          ? _value.ekspedisioid
          : ekspedisioid // ignore: cast_nullable_to_non_nullable
              as int?,
      infostatus: freezed == infostatus
          ? _value.infostatus
          : infostatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataCheckerSOImpl implements _DataCheckerSO {
  const _$DataCheckerSOImpl(
      {@JsonKey(name: "ordermstoid") this.ordermstoid,
      @JsonKey(name: "orderno") this.orderno,
      @JsonKey(name: "trnorderdate") this.trnorderdate,
      @JsonKey(name: "trncustoid") this.trncustoid,
      @JsonKey(name: "custname") this.custname,
      @JsonKey(name: "delivdate") this.delivdate,
      @JsonKey(name: "trnordernote") this.trnordernote,
      @JsonKey(name: "ekspedisioid") this.ekspedisioid,
      @JsonKey(name: "infostatus") this.infostatus});

  factory _$DataCheckerSOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataCheckerSOImplFromJson(json);

  @override
  @JsonKey(name: "ordermstoid")
  final int? ordermstoid;
  @override
  @JsonKey(name: "orderno")
  final String? orderno;
  @override
  @JsonKey(name: "trnorderdate")
  final String? trnorderdate;
  @override
  @JsonKey(name: "trncustoid")
  final int? trncustoid;
  @override
  @JsonKey(name: "custname")
  final String? custname;
  @override
  @JsonKey(name: "delivdate")
  final String? delivdate;
  @override
  @JsonKey(name: "trnordernote")
  final String? trnordernote;
  @override
  @JsonKey(name: "ekspedisioid")
  final int? ekspedisioid;
  @override
  @JsonKey(name: "infostatus")
  final String? infostatus;

  @override
  String toString() {
    return 'DataCheckerSO(ordermstoid: $ordermstoid, orderno: $orderno, trnorderdate: $trnorderdate, trncustoid: $trncustoid, custname: $custname, delivdate: $delivdate, trnordernote: $trnordernote, ekspedisioid: $ekspedisioid, infostatus: $infostatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataCheckerSOImpl &&
            (identical(other.ordermstoid, ordermstoid) ||
                other.ordermstoid == ordermstoid) &&
            (identical(other.orderno, orderno) || other.orderno == orderno) &&
            (identical(other.trnorderdate, trnorderdate) ||
                other.trnorderdate == trnorderdate) &&
            (identical(other.trncustoid, trncustoid) ||
                other.trncustoid == trncustoid) &&
            (identical(other.custname, custname) ||
                other.custname == custname) &&
            (identical(other.delivdate, delivdate) ||
                other.delivdate == delivdate) &&
            (identical(other.trnordernote, trnordernote) ||
                other.trnordernote == trnordernote) &&
            (identical(other.ekspedisioid, ekspedisioid) ||
                other.ekspedisioid == ekspedisioid) &&
            (identical(other.infostatus, infostatus) ||
                other.infostatus == infostatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ordermstoid,
      orderno,
      trnorderdate,
      trncustoid,
      custname,
      delivdate,
      trnordernote,
      ekspedisioid,
      infostatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataCheckerSOImplCopyWith<_$DataCheckerSOImpl> get copyWith =>
      __$$DataCheckerSOImplCopyWithImpl<_$DataCheckerSOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataCheckerSOImplToJson(
      this,
    );
  }
}

abstract class _DataCheckerSO implements DataCheckerSO {
  const factory _DataCheckerSO(
          {@JsonKey(name: "ordermstoid") final int? ordermstoid,
          @JsonKey(name: "orderno") final String? orderno,
          @JsonKey(name: "trnorderdate") final String? trnorderdate,
          @JsonKey(name: "trncustoid") final int? trncustoid,
          @JsonKey(name: "custname") final String? custname,
          @JsonKey(name: "delivdate") final String? delivdate,
          @JsonKey(name: "trnordernote") final String? trnordernote,
          @JsonKey(name: "ekspedisioid") final int? ekspedisioid,
          @JsonKey(name: "infostatus") final String? infostatus}) =
      _$DataCheckerSOImpl;

  factory _DataCheckerSO.fromJson(Map<String, dynamic> json) =
      _$DataCheckerSOImpl.fromJson;

  @override
  @JsonKey(name: "ordermstoid")
  int? get ordermstoid;
  @override
  @JsonKey(name: "orderno")
  String? get orderno;
  @override
  @JsonKey(name: "trnorderdate")
  String? get trnorderdate;
  @override
  @JsonKey(name: "trncustoid")
  int? get trncustoid;
  @override
  @JsonKey(name: "custname")
  String? get custname;
  @override
  @JsonKey(name: "delivdate")
  String? get delivdate;
  @override
  @JsonKey(name: "trnordernote")
  String? get trnordernote;
  @override
  @JsonKey(name: "ekspedisioid")
  int? get ekspedisioid;
  @override
  @JsonKey(name: "infostatus")
  String? get infostatus;
  @override
  @JsonKey(ignore: true)
  _$$DataCheckerSOImplCopyWith<_$DataCheckerSOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
