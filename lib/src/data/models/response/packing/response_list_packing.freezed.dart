// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_list_packing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseListPacking _$ResponseListPackingFromJson(Map<String, dynamic> json) {
  return _ResponseListPacking.fromJson(json);
}

/// @nodoc
mixin _$ResponseListPacking {
  @JsonKey(name: "msgServer")
  List<DataListPacking>? get msgServer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseListPackingCopyWith<ResponseListPacking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseListPackingCopyWith<$Res> {
  factory $ResponseListPackingCopyWith(
          ResponseListPacking value, $Res Function(ResponseListPacking) then) =
      _$ResponseListPackingCopyWithImpl<$Res, ResponseListPacking>;
  @useResult
  $Res call({@JsonKey(name: "msgServer") List<DataListPacking>? msgServer});
}

/// @nodoc
class _$ResponseListPackingCopyWithImpl<$Res, $Val extends ResponseListPacking>
    implements $ResponseListPackingCopyWith<$Res> {
  _$ResponseListPackingCopyWithImpl(this._value, this._then);

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
              as List<DataListPacking>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseListPackingImplCopyWith<$Res>
    implements $ResponseListPackingCopyWith<$Res> {
  factory _$$ResponseListPackingImplCopyWith(_$ResponseListPackingImpl value,
          $Res Function(_$ResponseListPackingImpl) then) =
      __$$ResponseListPackingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "msgServer") List<DataListPacking>? msgServer});
}

/// @nodoc
class __$$ResponseListPackingImplCopyWithImpl<$Res>
    extends _$ResponseListPackingCopyWithImpl<$Res, _$ResponseListPackingImpl>
    implements _$$ResponseListPackingImplCopyWith<$Res> {
  __$$ResponseListPackingImplCopyWithImpl(_$ResponseListPackingImpl _value,
      $Res Function(_$ResponseListPackingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgServer = freezed,
  }) {
    return _then(_$ResponseListPackingImpl(
      msgServer: freezed == msgServer
          ? _value._msgServer
          : msgServer // ignore: cast_nullable_to_non_nullable
              as List<DataListPacking>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseListPackingImpl implements _ResponseListPacking {
  const _$ResponseListPackingImpl(
      {@JsonKey(name: "msgServer") final List<DataListPacking>? msgServer})
      : _msgServer = msgServer;

  factory _$ResponseListPackingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseListPackingImplFromJson(json);

  final List<DataListPacking>? _msgServer;
  @override
  @JsonKey(name: "msgServer")
  List<DataListPacking>? get msgServer {
    final value = _msgServer;
    if (value == null) return null;
    if (_msgServer is EqualUnmodifiableListView) return _msgServer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseListPacking(msgServer: $msgServer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseListPackingImpl &&
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
  _$$ResponseListPackingImplCopyWith<_$ResponseListPackingImpl> get copyWith =>
      __$$ResponseListPackingImplCopyWithImpl<_$ResponseListPackingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseListPackingImplToJson(
      this,
    );
  }
}

abstract class _ResponseListPacking implements ResponseListPacking {
  const factory _ResponseListPacking(
      {@JsonKey(name: "msgServer")
      final List<DataListPacking>? msgServer}) = _$ResponseListPackingImpl;

  factory _ResponseListPacking.fromJson(Map<String, dynamic> json) =
      _$ResponseListPackingImpl.fromJson;

  @override
  @JsonKey(name: "msgServer")
  List<DataListPacking>? get msgServer;
  @override
  @JsonKey(ignore: true)
  _$$ResponseListPackingImplCopyWith<_$ResponseListPackingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataListPacking _$DataListPackingFromJson(Map<String, dynamic> json) {
  return _DataListPacking.fromJson(json);
}

/// @nodoc
mixin _$DataListPacking {
  @JsonKey(name: "trnsjjualmstoid")
  int? get trnsjjualmstoid => throw _privateConstructorUsedError;
  @JsonKey(name: "orderno")
  String? get orderno => throw _privateConstructorUsedError;
  @JsonKey(name: "expedisi")
  String? get expedisi => throw _privateConstructorUsedError;
  @JsonKey(name: "trnorderdate")
  String? get trnorderdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataListPackingCopyWith<DataListPacking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataListPackingCopyWith<$Res> {
  factory $DataListPackingCopyWith(
          DataListPacking value, $Res Function(DataListPacking) then) =
      _$DataListPackingCopyWithImpl<$Res, DataListPacking>;
  @useResult
  $Res call(
      {@JsonKey(name: "trnsjjualmstoid") int? trnsjjualmstoid,
      @JsonKey(name: "orderno") String? orderno,
      @JsonKey(name: "expedisi") String? expedisi,
      @JsonKey(name: "trnorderdate") String? trnorderdate});
}

/// @nodoc
class _$DataListPackingCopyWithImpl<$Res, $Val extends DataListPacking>
    implements $DataListPackingCopyWith<$Res> {
  _$DataListPackingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trnsjjualmstoid = freezed,
    Object? orderno = freezed,
    Object? expedisi = freezed,
    Object? trnorderdate = freezed,
  }) {
    return _then(_value.copyWith(
      trnsjjualmstoid: freezed == trnsjjualmstoid
          ? _value.trnsjjualmstoid
          : trnsjjualmstoid // ignore: cast_nullable_to_non_nullable
              as int?,
      orderno: freezed == orderno
          ? _value.orderno
          : orderno // ignore: cast_nullable_to_non_nullable
              as String?,
      expedisi: freezed == expedisi
          ? _value.expedisi
          : expedisi // ignore: cast_nullable_to_non_nullable
              as String?,
      trnorderdate: freezed == trnorderdate
          ? _value.trnorderdate
          : trnorderdate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataListPackingImplCopyWith<$Res>
    implements $DataListPackingCopyWith<$Res> {
  factory _$$DataListPackingImplCopyWith(_$DataListPackingImpl value,
          $Res Function(_$DataListPackingImpl) then) =
      __$$DataListPackingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "trnsjjualmstoid") int? trnsjjualmstoid,
      @JsonKey(name: "orderno") String? orderno,
      @JsonKey(name: "expedisi") String? expedisi,
      @JsonKey(name: "trnorderdate") String? trnorderdate});
}

/// @nodoc
class __$$DataListPackingImplCopyWithImpl<$Res>
    extends _$DataListPackingCopyWithImpl<$Res, _$DataListPackingImpl>
    implements _$$DataListPackingImplCopyWith<$Res> {
  __$$DataListPackingImplCopyWithImpl(
      _$DataListPackingImpl _value, $Res Function(_$DataListPackingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trnsjjualmstoid = freezed,
    Object? orderno = freezed,
    Object? expedisi = freezed,
    Object? trnorderdate = freezed,
  }) {
    return _then(_$DataListPackingImpl(
      trnsjjualmstoid: freezed == trnsjjualmstoid
          ? _value.trnsjjualmstoid
          : trnsjjualmstoid // ignore: cast_nullable_to_non_nullable
              as int?,
      orderno: freezed == orderno
          ? _value.orderno
          : orderno // ignore: cast_nullable_to_non_nullable
              as String?,
      expedisi: freezed == expedisi
          ? _value.expedisi
          : expedisi // ignore: cast_nullable_to_non_nullable
              as String?,
      trnorderdate: freezed == trnorderdate
          ? _value.trnorderdate
          : trnorderdate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataListPackingImpl implements _DataListPacking {
  const _$DataListPackingImpl(
      {@JsonKey(name: "trnsjjualmstoid") this.trnsjjualmstoid,
      @JsonKey(name: "orderno") this.orderno,
      @JsonKey(name: "expedisi") this.expedisi,
      @JsonKey(name: "trnorderdate") this.trnorderdate});

  factory _$DataListPackingImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataListPackingImplFromJson(json);

  @override
  @JsonKey(name: "trnsjjualmstoid")
  final int? trnsjjualmstoid;
  @override
  @JsonKey(name: "orderno")
  final String? orderno;
  @override
  @JsonKey(name: "expedisi")
  final String? expedisi;
  @override
  @JsonKey(name: "trnorderdate")
  final String? trnorderdate;

  @override
  String toString() {
    return 'DataListPacking(trnsjjualmstoid: $trnsjjualmstoid, orderno: $orderno, expedisi: $expedisi, trnorderdate: $trnorderdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataListPackingImpl &&
            (identical(other.trnsjjualmstoid, trnsjjualmstoid) ||
                other.trnsjjualmstoid == trnsjjualmstoid) &&
            (identical(other.orderno, orderno) || other.orderno == orderno) &&
            (identical(other.expedisi, expedisi) ||
                other.expedisi == expedisi) &&
            (identical(other.trnorderdate, trnorderdate) ||
                other.trnorderdate == trnorderdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, trnsjjualmstoid, orderno, expedisi, trnorderdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataListPackingImplCopyWith<_$DataListPackingImpl> get copyWith =>
      __$$DataListPackingImplCopyWithImpl<_$DataListPackingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataListPackingImplToJson(
      this,
    );
  }
}

abstract class _DataListPacking implements DataListPacking {
  const factory _DataListPacking(
          {@JsonKey(name: "trnsjjualmstoid") final int? trnsjjualmstoid,
          @JsonKey(name: "orderno") final String? orderno,
          @JsonKey(name: "expedisi") final String? expedisi,
          @JsonKey(name: "trnorderdate") final String? trnorderdate}) =
      _$DataListPackingImpl;

  factory _DataListPacking.fromJson(Map<String, dynamic> json) =
      _$DataListPackingImpl.fromJson;

  @override
  @JsonKey(name: "trnsjjualmstoid")
  int? get trnsjjualmstoid;
  @override
  @JsonKey(name: "orderno")
  String? get orderno;
  @override
  @JsonKey(name: "expedisi")
  String? get expedisi;
  @override
  @JsonKey(name: "trnorderdate")
  String? get trnorderdate;
  @override
  @JsonKey(ignore: true)
  _$$DataListPackingImplCopyWith<_$DataListPackingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
