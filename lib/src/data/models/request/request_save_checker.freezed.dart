// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_save_checker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestSaveChecker _$RequestSaveCheckerFromJson(Map<String, dynamic> json) {
  return _RequestSaveChecker.fromJson(json);
}

/// @nodoc
mixin _$RequestSaveChecker {
  @JsonKey(name: "JsonHdr")
  List<JsonHdr>? get jsonHdr => throw _privateConstructorUsedError;
  @JsonKey(name: "JsonDtl")
  List<JsonDtl>? get jsonDtl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestSaveCheckerCopyWith<RequestSaveChecker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestSaveCheckerCopyWith<$Res> {
  factory $RequestSaveCheckerCopyWith(
          RequestSaveChecker value, $Res Function(RequestSaveChecker) then) =
      _$RequestSaveCheckerCopyWithImpl<$Res, RequestSaveChecker>;
  @useResult
  $Res call(
      {@JsonKey(name: "JsonHdr") List<JsonHdr>? jsonHdr,
      @JsonKey(name: "JsonDtl") List<JsonDtl>? jsonDtl});
}

/// @nodoc
class _$RequestSaveCheckerCopyWithImpl<$Res, $Val extends RequestSaveChecker>
    implements $RequestSaveCheckerCopyWith<$Res> {
  _$RequestSaveCheckerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonHdr = freezed,
    Object? jsonDtl = freezed,
  }) {
    return _then(_value.copyWith(
      jsonHdr: freezed == jsonHdr
          ? _value.jsonHdr
          : jsonHdr // ignore: cast_nullable_to_non_nullable
              as List<JsonHdr>?,
      jsonDtl: freezed == jsonDtl
          ? _value.jsonDtl
          : jsonDtl // ignore: cast_nullable_to_non_nullable
              as List<JsonDtl>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestSaveCheckerImplCopyWith<$Res>
    implements $RequestSaveCheckerCopyWith<$Res> {
  factory _$$RequestSaveCheckerImplCopyWith(_$RequestSaveCheckerImpl value,
          $Res Function(_$RequestSaveCheckerImpl) then) =
      __$$RequestSaveCheckerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "JsonHdr") List<JsonHdr>? jsonHdr,
      @JsonKey(name: "JsonDtl") List<JsonDtl>? jsonDtl});
}

/// @nodoc
class __$$RequestSaveCheckerImplCopyWithImpl<$Res>
    extends _$RequestSaveCheckerCopyWithImpl<$Res, _$RequestSaveCheckerImpl>
    implements _$$RequestSaveCheckerImplCopyWith<$Res> {
  __$$RequestSaveCheckerImplCopyWithImpl(_$RequestSaveCheckerImpl _value,
      $Res Function(_$RequestSaveCheckerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonHdr = freezed,
    Object? jsonDtl = freezed,
  }) {
    return _then(_$RequestSaveCheckerImpl(
      jsonHdr: freezed == jsonHdr
          ? _value._jsonHdr
          : jsonHdr // ignore: cast_nullable_to_non_nullable
              as List<JsonHdr>?,
      jsonDtl: freezed == jsonDtl
          ? _value._jsonDtl
          : jsonDtl // ignore: cast_nullable_to_non_nullable
              as List<JsonDtl>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestSaveCheckerImpl implements _RequestSaveChecker {
  const _$RequestSaveCheckerImpl(
      {@JsonKey(name: "JsonHdr") final List<JsonHdr>? jsonHdr,
      @JsonKey(name: "JsonDtl") final List<JsonDtl>? jsonDtl})
      : _jsonHdr = jsonHdr,
        _jsonDtl = jsonDtl;

  factory _$RequestSaveCheckerImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestSaveCheckerImplFromJson(json);

  final List<JsonHdr>? _jsonHdr;
  @override
  @JsonKey(name: "JsonHdr")
  List<JsonHdr>? get jsonHdr {
    final value = _jsonHdr;
    if (value == null) return null;
    if (_jsonHdr is EqualUnmodifiableListView) return _jsonHdr;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<JsonDtl>? _jsonDtl;
  @override
  @JsonKey(name: "JsonDtl")
  List<JsonDtl>? get jsonDtl {
    final value = _jsonDtl;
    if (value == null) return null;
    if (_jsonDtl is EqualUnmodifiableListView) return _jsonDtl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestSaveChecker(jsonHdr: $jsonHdr, jsonDtl: $jsonDtl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestSaveCheckerImpl &&
            const DeepCollectionEquality().equals(other._jsonHdr, _jsonHdr) &&
            const DeepCollectionEquality().equals(other._jsonDtl, _jsonDtl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_jsonHdr),
      const DeepCollectionEquality().hash(_jsonDtl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestSaveCheckerImplCopyWith<_$RequestSaveCheckerImpl> get copyWith =>
      __$$RequestSaveCheckerImplCopyWithImpl<_$RequestSaveCheckerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestSaveCheckerImplToJson(
      this,
    );
  }
}

abstract class _RequestSaveChecker implements RequestSaveChecker {
  const factory _RequestSaveChecker(
          {@JsonKey(name: "JsonHdr") final List<JsonHdr>? jsonHdr,
          @JsonKey(name: "JsonDtl") final List<JsonDtl>? jsonDtl}) =
      _$RequestSaveCheckerImpl;

  factory _RequestSaveChecker.fromJson(Map<String, dynamic> json) =
      _$RequestSaveCheckerImpl.fromJson;

  @override
  @JsonKey(name: "JsonHdr")
  List<JsonHdr>? get jsonHdr;
  @override
  @JsonKey(name: "JsonDtl")
  List<JsonDtl>? get jsonDtl;
  @override
  @JsonKey(ignore: true)
  _$$RequestSaveCheckerImplCopyWith<_$RequestSaveCheckerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JsonDtl _$JsonDtlFromJson(Map<String, dynamic> json) {
  return _JsonDtl.fromJson(json);
}

/// @nodoc
mixin _$JsonDtl {
  @JsonKey(name: "salesdeliveryqty")
  String? get salesdeliveryqty => throw _privateConstructorUsedError;
  @JsonKey(name: "orderdtloid")
  String? get orderdtloid => throw _privateConstructorUsedError;
  @JsonKey(name: "itemoid")
  String? get itemoid => throw _privateConstructorUsedError;
  @JsonKey(name: "trnordermstoid")
  String? get trnordermstoid => throw _privateConstructorUsedError;
  @JsonKey(name: "trnorderdtlunitoid")
  String? get trnorderdtlunitoid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonDtlCopyWith<JsonDtl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonDtlCopyWith<$Res> {
  factory $JsonDtlCopyWith(JsonDtl value, $Res Function(JsonDtl) then) =
      _$JsonDtlCopyWithImpl<$Res, JsonDtl>;
  @useResult
  $Res call(
      {@JsonKey(name: "salesdeliveryqty") String? salesdeliveryqty,
      @JsonKey(name: "orderdtloid") String? orderdtloid,
      @JsonKey(name: "itemoid") String? itemoid,
      @JsonKey(name: "trnordermstoid") String? trnordermstoid,
      @JsonKey(name: "trnorderdtlunitoid") String? trnorderdtlunitoid});
}

/// @nodoc
class _$JsonDtlCopyWithImpl<$Res, $Val extends JsonDtl>
    implements $JsonDtlCopyWith<$Res> {
  _$JsonDtlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesdeliveryqty = freezed,
    Object? orderdtloid = freezed,
    Object? itemoid = freezed,
    Object? trnordermstoid = freezed,
    Object? trnorderdtlunitoid = freezed,
  }) {
    return _then(_value.copyWith(
      salesdeliveryqty: freezed == salesdeliveryqty
          ? _value.salesdeliveryqty
          : salesdeliveryqty // ignore: cast_nullable_to_non_nullable
              as String?,
      orderdtloid: freezed == orderdtloid
          ? _value.orderdtloid
          : orderdtloid // ignore: cast_nullable_to_non_nullable
              as String?,
      itemoid: freezed == itemoid
          ? _value.itemoid
          : itemoid // ignore: cast_nullable_to_non_nullable
              as String?,
      trnordermstoid: freezed == trnordermstoid
          ? _value.trnordermstoid
          : trnordermstoid // ignore: cast_nullable_to_non_nullable
              as String?,
      trnorderdtlunitoid: freezed == trnorderdtlunitoid
          ? _value.trnorderdtlunitoid
          : trnorderdtlunitoid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JsonDtlImplCopyWith<$Res> implements $JsonDtlCopyWith<$Res> {
  factory _$$JsonDtlImplCopyWith(
          _$JsonDtlImpl value, $Res Function(_$JsonDtlImpl) then) =
      __$$JsonDtlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "salesdeliveryqty") String? salesdeliveryqty,
      @JsonKey(name: "orderdtloid") String? orderdtloid,
      @JsonKey(name: "itemoid") String? itemoid,
      @JsonKey(name: "trnordermstoid") String? trnordermstoid,
      @JsonKey(name: "trnorderdtlunitoid") String? trnorderdtlunitoid});
}

/// @nodoc
class __$$JsonDtlImplCopyWithImpl<$Res>
    extends _$JsonDtlCopyWithImpl<$Res, _$JsonDtlImpl>
    implements _$$JsonDtlImplCopyWith<$Res> {
  __$$JsonDtlImplCopyWithImpl(
      _$JsonDtlImpl _value, $Res Function(_$JsonDtlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesdeliveryqty = freezed,
    Object? orderdtloid = freezed,
    Object? itemoid = freezed,
    Object? trnordermstoid = freezed,
    Object? trnorderdtlunitoid = freezed,
  }) {
    return _then(_$JsonDtlImpl(
      salesdeliveryqty: freezed == salesdeliveryqty
          ? _value.salesdeliveryqty
          : salesdeliveryqty // ignore: cast_nullable_to_non_nullable
              as String?,
      orderdtloid: freezed == orderdtloid
          ? _value.orderdtloid
          : orderdtloid // ignore: cast_nullable_to_non_nullable
              as String?,
      itemoid: freezed == itemoid
          ? _value.itemoid
          : itemoid // ignore: cast_nullable_to_non_nullable
              as String?,
      trnordermstoid: freezed == trnordermstoid
          ? _value.trnordermstoid
          : trnordermstoid // ignore: cast_nullable_to_non_nullable
              as String?,
      trnorderdtlunitoid: freezed == trnorderdtlunitoid
          ? _value.trnorderdtlunitoid
          : trnorderdtlunitoid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JsonDtlImpl implements _JsonDtl {
  const _$JsonDtlImpl(
      {@JsonKey(name: "salesdeliveryqty") this.salesdeliveryqty,
      @JsonKey(name: "orderdtloid") this.orderdtloid,
      @JsonKey(name: "itemoid") this.itemoid,
      @JsonKey(name: "trnordermstoid") this.trnordermstoid,
      @JsonKey(name: "trnorderdtlunitoid") this.trnorderdtlunitoid});

  factory _$JsonDtlImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonDtlImplFromJson(json);

  @override
  @JsonKey(name: "salesdeliveryqty")
  final String? salesdeliveryqty;
  @override
  @JsonKey(name: "orderdtloid")
  final String? orderdtloid;
  @override
  @JsonKey(name: "itemoid")
  final String? itemoid;
  @override
  @JsonKey(name: "trnordermstoid")
  final String? trnordermstoid;
  @override
  @JsonKey(name: "trnorderdtlunitoid")
  final String? trnorderdtlunitoid;

  @override
  String toString() {
    return 'JsonDtl(salesdeliveryqty: $salesdeliveryqty, orderdtloid: $orderdtloid, itemoid: $itemoid, trnordermstoid: $trnordermstoid, trnorderdtlunitoid: $trnorderdtlunitoid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonDtlImpl &&
            (identical(other.salesdeliveryqty, salesdeliveryqty) ||
                other.salesdeliveryqty == salesdeliveryqty) &&
            (identical(other.orderdtloid, orderdtloid) ||
                other.orderdtloid == orderdtloid) &&
            (identical(other.itemoid, itemoid) || other.itemoid == itemoid) &&
            (identical(other.trnordermstoid, trnordermstoid) ||
                other.trnordermstoid == trnordermstoid) &&
            (identical(other.trnorderdtlunitoid, trnorderdtlunitoid) ||
                other.trnorderdtlunitoid == trnorderdtlunitoid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, salesdeliveryqty, orderdtloid,
      itemoid, trnordermstoid, trnorderdtlunitoid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonDtlImplCopyWith<_$JsonDtlImpl> get copyWith =>
      __$$JsonDtlImplCopyWithImpl<_$JsonDtlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JsonDtlImplToJson(
      this,
    );
  }
}

abstract class _JsonDtl implements JsonDtl {
  const factory _JsonDtl(
      {@JsonKey(name: "salesdeliveryqty") final String? salesdeliveryqty,
      @JsonKey(name: "orderdtloid") final String? orderdtloid,
      @JsonKey(name: "itemoid") final String? itemoid,
      @JsonKey(name: "trnordermstoid") final String? trnordermstoid,
      @JsonKey(name: "trnorderdtlunitoid")
      final String? trnorderdtlunitoid}) = _$JsonDtlImpl;

  factory _JsonDtl.fromJson(Map<String, dynamic> json) = _$JsonDtlImpl.fromJson;

  @override
  @JsonKey(name: "salesdeliveryqty")
  String? get salesdeliveryqty;
  @override
  @JsonKey(name: "orderdtloid")
  String? get orderdtloid;
  @override
  @JsonKey(name: "itemoid")
  String? get itemoid;
  @override
  @JsonKey(name: "trnordermstoid")
  String? get trnordermstoid;
  @override
  @JsonKey(name: "trnorderdtlunitoid")
  String? get trnorderdtlunitoid;
  @override
  @JsonKey(ignore: true)
  _$$JsonDtlImplCopyWith<_$JsonDtlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JsonHdr _$JsonHdrFromJson(Map<String, dynamic> json) {
  return _JsonHdr.fromJson(json);
}

/// @nodoc
mixin _$JsonHdr {
  @JsonKey(name: "trnordernote")
  String? get trnordernote => throw _privateConstructorUsedError;
  @JsonKey(name: "orderno")
  String? get orderno => throw _privateConstructorUsedError;
  @JsonKey(name: "userid")
  String? get userid => throw _privateConstructorUsedError;
  @JsonKey(name: "ekspedisioid")
  String? get ekspedisioid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonHdrCopyWith<JsonHdr> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonHdrCopyWith<$Res> {
  factory $JsonHdrCopyWith(JsonHdr value, $Res Function(JsonHdr) then) =
      _$JsonHdrCopyWithImpl<$Res, JsonHdr>;
  @useResult
  $Res call(
      {@JsonKey(name: "trnordernote") String? trnordernote,
      @JsonKey(name: "orderno") String? orderno,
      @JsonKey(name: "userid") String? userid,
      @JsonKey(name: "ekspedisioid") String? ekspedisioid});
}

/// @nodoc
class _$JsonHdrCopyWithImpl<$Res, $Val extends JsonHdr>
    implements $JsonHdrCopyWith<$Res> {
  _$JsonHdrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trnordernote = freezed,
    Object? orderno = freezed,
    Object? userid = freezed,
    Object? ekspedisioid = freezed,
  }) {
    return _then(_value.copyWith(
      trnordernote: freezed == trnordernote
          ? _value.trnordernote
          : trnordernote // ignore: cast_nullable_to_non_nullable
              as String?,
      orderno: freezed == orderno
          ? _value.orderno
          : orderno // ignore: cast_nullable_to_non_nullable
              as String?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      ekspedisioid: freezed == ekspedisioid
          ? _value.ekspedisioid
          : ekspedisioid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JsonHdrImplCopyWith<$Res> implements $JsonHdrCopyWith<$Res> {
  factory _$$JsonHdrImplCopyWith(
          _$JsonHdrImpl value, $Res Function(_$JsonHdrImpl) then) =
      __$$JsonHdrImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "trnordernote") String? trnordernote,
      @JsonKey(name: "orderno") String? orderno,
      @JsonKey(name: "userid") String? userid,
      @JsonKey(name: "ekspedisioid") String? ekspedisioid});
}

/// @nodoc
class __$$JsonHdrImplCopyWithImpl<$Res>
    extends _$JsonHdrCopyWithImpl<$Res, _$JsonHdrImpl>
    implements _$$JsonHdrImplCopyWith<$Res> {
  __$$JsonHdrImplCopyWithImpl(
      _$JsonHdrImpl _value, $Res Function(_$JsonHdrImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trnordernote = freezed,
    Object? orderno = freezed,
    Object? userid = freezed,
    Object? ekspedisioid = freezed,
  }) {
    return _then(_$JsonHdrImpl(
      trnordernote: freezed == trnordernote
          ? _value.trnordernote
          : trnordernote // ignore: cast_nullable_to_non_nullable
              as String?,
      orderno: freezed == orderno
          ? _value.orderno
          : orderno // ignore: cast_nullable_to_non_nullable
              as String?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      ekspedisioid: freezed == ekspedisioid
          ? _value.ekspedisioid
          : ekspedisioid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JsonHdrImpl implements _JsonHdr {
  const _$JsonHdrImpl(
      {@JsonKey(name: "trnordernote") this.trnordernote,
      @JsonKey(name: "orderno") this.orderno,
      @JsonKey(name: "userid") this.userid,
      @JsonKey(name: "ekspedisioid") this.ekspedisioid});

  factory _$JsonHdrImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonHdrImplFromJson(json);

  @override
  @JsonKey(name: "trnordernote")
  final String? trnordernote;
  @override
  @JsonKey(name: "orderno")
  final String? orderno;
  @override
  @JsonKey(name: "userid")
  final String? userid;
  @override
  @JsonKey(name: "ekspedisioid")
  final String? ekspedisioid;

  @override
  String toString() {
    return 'JsonHdr(trnordernote: $trnordernote, orderno: $orderno, userid: $userid, ekspedisioid: $ekspedisioid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonHdrImpl &&
            (identical(other.trnordernote, trnordernote) ||
                other.trnordernote == trnordernote) &&
            (identical(other.orderno, orderno) || other.orderno == orderno) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.ekspedisioid, ekspedisioid) ||
                other.ekspedisioid == ekspedisioid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, trnordernote, orderno, userid, ekspedisioid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonHdrImplCopyWith<_$JsonHdrImpl> get copyWith =>
      __$$JsonHdrImplCopyWithImpl<_$JsonHdrImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JsonHdrImplToJson(
      this,
    );
  }
}

abstract class _JsonHdr implements JsonHdr {
  const factory _JsonHdr(
          {@JsonKey(name: "trnordernote") final String? trnordernote,
          @JsonKey(name: "orderno") final String? orderno,
          @JsonKey(name: "userid") final String? userid,
          @JsonKey(name: "ekspedisioid") final String? ekspedisioid}) =
      _$JsonHdrImpl;

  factory _JsonHdr.fromJson(Map<String, dynamic> json) = _$JsonHdrImpl.fromJson;

  @override
  @JsonKey(name: "trnordernote")
  String? get trnordernote;
  @override
  @JsonKey(name: "orderno")
  String? get orderno;
  @override
  @JsonKey(name: "userid")
  String? get userid;
  @override
  @JsonKey(name: "ekspedisioid")
  String? get ekspedisioid;
  @override
  @JsonKey(ignore: true)
  _$$JsonHdrImplCopyWith<_$JsonHdrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
