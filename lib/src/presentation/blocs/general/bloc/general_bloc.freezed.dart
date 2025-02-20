// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralState _$GeneralStateFromJson(Map<String, dynamic> json) {
  return _GeneralState.fromJson(json);
}

/// @nodoc
mixin _$GeneralState {
  List<DataWilayah>? get daftarWilayah => throw _privateConstructorUsedError;
  List<DataBarang>? get daftarBarang => throw _privateConstructorUsedError;
  List<DataGeneral>? get daftarKategoriBarang =>
      throw _privateConstructorUsedError;
  List<DataPPH>? get daftarPPH => throw _privateConstructorUsedError;
  List<DataPPN>? get daftarPPN => throw _privateConstructorUsedError;
  BulkDataGeneral? get daftarDataBulk => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralStateCopyWith<GeneralState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralStateCopyWith<$Res> {
  factory $GeneralStateCopyWith(
          GeneralState value, $Res Function(GeneralState) then) =
      _$GeneralStateCopyWithImpl<$Res, GeneralState>;
  @useResult
  $Res call(
      {List<DataWilayah>? daftarWilayah,
      List<DataBarang>? daftarBarang,
      List<DataGeneral>? daftarKategoriBarang,
      List<DataPPH>? daftarPPH,
      List<DataPPN>? daftarPPN,
      BulkDataGeneral? daftarDataBulk,
      String? error});

  $BulkDataGeneralCopyWith<$Res>? get daftarDataBulk;
}

/// @nodoc
class _$GeneralStateCopyWithImpl<$Res, $Val extends GeneralState>
    implements $GeneralStateCopyWith<$Res> {
  _$GeneralStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daftarWilayah = freezed,
    Object? daftarBarang = freezed,
    Object? daftarKategoriBarang = freezed,
    Object? daftarPPH = freezed,
    Object? daftarPPN = freezed,
    Object? daftarDataBulk = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      daftarWilayah: freezed == daftarWilayah
          ? _value.daftarWilayah
          : daftarWilayah // ignore: cast_nullable_to_non_nullable
              as List<DataWilayah>?,
      daftarBarang: freezed == daftarBarang
          ? _value.daftarBarang
          : daftarBarang // ignore: cast_nullable_to_non_nullable
              as List<DataBarang>?,
      daftarKategoriBarang: freezed == daftarKategoriBarang
          ? _value.daftarKategoriBarang
          : daftarKategoriBarang // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      daftarPPH: freezed == daftarPPH
          ? _value.daftarPPH
          : daftarPPH // ignore: cast_nullable_to_non_nullable
              as List<DataPPH>?,
      daftarPPN: freezed == daftarPPN
          ? _value.daftarPPN
          : daftarPPN // ignore: cast_nullable_to_non_nullable
              as List<DataPPN>?,
      daftarDataBulk: freezed == daftarDataBulk
          ? _value.daftarDataBulk
          : daftarDataBulk // ignore: cast_nullable_to_non_nullable
              as BulkDataGeneral?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BulkDataGeneralCopyWith<$Res>? get daftarDataBulk {
    if (_value.daftarDataBulk == null) {
      return null;
    }

    return $BulkDataGeneralCopyWith<$Res>(_value.daftarDataBulk!, (value) {
      return _then(_value.copyWith(daftarDataBulk: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeneralStateImplCopyWith<$Res>
    implements $GeneralStateCopyWith<$Res> {
  factory _$$GeneralStateImplCopyWith(
          _$GeneralStateImpl value, $Res Function(_$GeneralStateImpl) then) =
      __$$GeneralStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DataWilayah>? daftarWilayah,
      List<DataBarang>? daftarBarang,
      List<DataGeneral>? daftarKategoriBarang,
      List<DataPPH>? daftarPPH,
      List<DataPPN>? daftarPPN,
      BulkDataGeneral? daftarDataBulk,
      String? error});

  @override
  $BulkDataGeneralCopyWith<$Res>? get daftarDataBulk;
}

/// @nodoc
class __$$GeneralStateImplCopyWithImpl<$Res>
    extends _$GeneralStateCopyWithImpl<$Res, _$GeneralStateImpl>
    implements _$$GeneralStateImplCopyWith<$Res> {
  __$$GeneralStateImplCopyWithImpl(
      _$GeneralStateImpl _value, $Res Function(_$GeneralStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daftarWilayah = freezed,
    Object? daftarBarang = freezed,
    Object? daftarKategoriBarang = freezed,
    Object? daftarPPH = freezed,
    Object? daftarPPN = freezed,
    Object? daftarDataBulk = freezed,
    Object? error = freezed,
  }) {
    return _then(_$GeneralStateImpl(
      daftarWilayah: freezed == daftarWilayah
          ? _value._daftarWilayah
          : daftarWilayah // ignore: cast_nullable_to_non_nullable
              as List<DataWilayah>?,
      daftarBarang: freezed == daftarBarang
          ? _value._daftarBarang
          : daftarBarang // ignore: cast_nullable_to_non_nullable
              as List<DataBarang>?,
      daftarKategoriBarang: freezed == daftarKategoriBarang
          ? _value._daftarKategoriBarang
          : daftarKategoriBarang // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      daftarPPH: freezed == daftarPPH
          ? _value._daftarPPH
          : daftarPPH // ignore: cast_nullable_to_non_nullable
              as List<DataPPH>?,
      daftarPPN: freezed == daftarPPN
          ? _value._daftarPPN
          : daftarPPN // ignore: cast_nullable_to_non_nullable
              as List<DataPPN>?,
      daftarDataBulk: freezed == daftarDataBulk
          ? _value.daftarDataBulk
          : daftarDataBulk // ignore: cast_nullable_to_non_nullable
              as BulkDataGeneral?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralStateImpl implements _GeneralState {
  const _$GeneralStateImpl(
      {final List<DataWilayah>? daftarWilayah,
      final List<DataBarang>? daftarBarang,
      final List<DataGeneral>? daftarKategoriBarang,
      final List<DataPPH>? daftarPPH,
      final List<DataPPN>? daftarPPN,
      this.daftarDataBulk,
      this.error})
      : _daftarWilayah = daftarWilayah,
        _daftarBarang = daftarBarang,
        _daftarKategoriBarang = daftarKategoriBarang,
        _daftarPPH = daftarPPH,
        _daftarPPN = daftarPPN;

  factory _$GeneralStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralStateImplFromJson(json);

  final List<DataWilayah>? _daftarWilayah;
  @override
  List<DataWilayah>? get daftarWilayah {
    final value = _daftarWilayah;
    if (value == null) return null;
    if (_daftarWilayah is EqualUnmodifiableListView) return _daftarWilayah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DataBarang>? _daftarBarang;
  @override
  List<DataBarang>? get daftarBarang {
    final value = _daftarBarang;
    if (value == null) return null;
    if (_daftarBarang is EqualUnmodifiableListView) return _daftarBarang;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DataGeneral>? _daftarKategoriBarang;
  @override
  List<DataGeneral>? get daftarKategoriBarang {
    final value = _daftarKategoriBarang;
    if (value == null) return null;
    if (_daftarKategoriBarang is EqualUnmodifiableListView)
      return _daftarKategoriBarang;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DataPPH>? _daftarPPH;
  @override
  List<DataPPH>? get daftarPPH {
    final value = _daftarPPH;
    if (value == null) return null;
    if (_daftarPPH is EqualUnmodifiableListView) return _daftarPPH;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DataPPN>? _daftarPPN;
  @override
  List<DataPPN>? get daftarPPN {
    final value = _daftarPPN;
    if (value == null) return null;
    if (_daftarPPN is EqualUnmodifiableListView) return _daftarPPN;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BulkDataGeneral? daftarDataBulk;
  @override
  final String? error;

  @override
  String toString() {
    return 'GeneralState(daftarWilayah: $daftarWilayah, daftarBarang: $daftarBarang, daftarKategoriBarang: $daftarKategoriBarang, daftarPPH: $daftarPPH, daftarPPN: $daftarPPN, daftarDataBulk: $daftarDataBulk, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralStateImpl &&
            const DeepCollectionEquality()
                .equals(other._daftarWilayah, _daftarWilayah) &&
            const DeepCollectionEquality()
                .equals(other._daftarBarang, _daftarBarang) &&
            const DeepCollectionEquality()
                .equals(other._daftarKategoriBarang, _daftarKategoriBarang) &&
            const DeepCollectionEquality()
                .equals(other._daftarPPH, _daftarPPH) &&
            const DeepCollectionEquality()
                .equals(other._daftarPPN, _daftarPPN) &&
            (identical(other.daftarDataBulk, daftarDataBulk) ||
                other.daftarDataBulk == daftarDataBulk) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_daftarWilayah),
      const DeepCollectionEquality().hash(_daftarBarang),
      const DeepCollectionEquality().hash(_daftarKategoriBarang),
      const DeepCollectionEquality().hash(_daftarPPH),
      const DeepCollectionEquality().hash(_daftarPPN),
      daftarDataBulk,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralStateImplCopyWith<_$GeneralStateImpl> get copyWith =>
      __$$GeneralStateImplCopyWithImpl<_$GeneralStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralStateImplToJson(
      this,
    );
  }
}

abstract class _GeneralState implements GeneralState {
  const factory _GeneralState(
      {final List<DataWilayah>? daftarWilayah,
      final List<DataBarang>? daftarBarang,
      final List<DataGeneral>? daftarKategoriBarang,
      final List<DataPPH>? daftarPPH,
      final List<DataPPN>? daftarPPN,
      final BulkDataGeneral? daftarDataBulk,
      final String? error}) = _$GeneralStateImpl;

  factory _GeneralState.fromJson(Map<String, dynamic> json) =
      _$GeneralStateImpl.fromJson;

  @override
  List<DataWilayah>? get daftarWilayah;
  @override
  List<DataBarang>? get daftarBarang;
  @override
  List<DataGeneral>? get daftarKategoriBarang;
  @override
  List<DataPPH>? get daftarPPH;
  @override
  List<DataPPN>? get daftarPPN;
  @override
  BulkDataGeneral? get daftarDataBulk;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$GeneralStateImplCopyWith<_$GeneralStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
