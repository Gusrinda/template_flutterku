// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'katalog_barang_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KatalogBarangState {
  dynamic get statusPage => throw _privateConstructorUsedError;
  List<DataBarang>? get daftarData => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KatalogBarangStateCopyWith<KatalogBarangState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KatalogBarangStateCopyWith<$Res> {
  factory $KatalogBarangStateCopyWith(
          KatalogBarangState value, $Res Function(KatalogBarangState) then) =
      _$KatalogBarangStateCopyWithImpl<$Res, KatalogBarangState>;
  @useResult
  $Res call(
      {dynamic statusPage, List<DataBarang>? daftarData, String? errorMessage});
}

/// @nodoc
class _$KatalogBarangStateCopyWithImpl<$Res, $Val extends KatalogBarangState>
    implements $KatalogBarangStateCopyWith<$Res> {
  _$KatalogBarangStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? daftarData = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      statusPage: freezed == statusPage
          ? _value.statusPage
          : statusPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      daftarData: freezed == daftarData
          ? _value.daftarData
          : daftarData // ignore: cast_nullable_to_non_nullable
              as List<DataBarang>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KatalogBarangStateImplCopyWith<$Res>
    implements $KatalogBarangStateCopyWith<$Res> {
  factory _$$KatalogBarangStateImplCopyWith(_$KatalogBarangStateImpl value,
          $Res Function(_$KatalogBarangStateImpl) then) =
      __$$KatalogBarangStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic statusPage, List<DataBarang>? daftarData, String? errorMessage});
}

/// @nodoc
class __$$KatalogBarangStateImplCopyWithImpl<$Res>
    extends _$KatalogBarangStateCopyWithImpl<$Res, _$KatalogBarangStateImpl>
    implements _$$KatalogBarangStateImplCopyWith<$Res> {
  __$$KatalogBarangStateImplCopyWithImpl(_$KatalogBarangStateImpl _value,
      $Res Function(_$KatalogBarangStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? daftarData = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$KatalogBarangStateImpl(
      statusPage: freezed == statusPage ? _value.statusPage! : statusPage,
      daftarData: freezed == daftarData
          ? _value._daftarData
          : daftarData // ignore: cast_nullable_to_non_nullable
              as List<DataBarang>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$KatalogBarangStateImpl implements _KatalogBarangState {
  const _$KatalogBarangStateImpl(
      {this.statusPage = LoadingPageStatus.initial,
      final List<DataBarang>? daftarData,
      this.errorMessage})
      : _daftarData = daftarData;

  @override
  @JsonKey()
  final dynamic statusPage;
  final List<DataBarang>? _daftarData;
  @override
  List<DataBarang>? get daftarData {
    final value = _daftarData;
    if (value == null) return null;
    if (_daftarData is EqualUnmodifiableListView) return _daftarData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'KatalogBarangState(statusPage: $statusPage, daftarData: $daftarData, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KatalogBarangStateImpl &&
            const DeepCollectionEquality()
                .equals(other.statusPage, statusPage) &&
            const DeepCollectionEquality()
                .equals(other._daftarData, _daftarData) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusPage),
      const DeepCollectionEquality().hash(_daftarData),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KatalogBarangStateImplCopyWith<_$KatalogBarangStateImpl> get copyWith =>
      __$$KatalogBarangStateImplCopyWithImpl<_$KatalogBarangStateImpl>(
          this, _$identity);
}

abstract class _KatalogBarangState implements KatalogBarangState {
  const factory _KatalogBarangState(
      {final dynamic statusPage,
      final List<DataBarang>? daftarData,
      final String? errorMessage}) = _$KatalogBarangStateImpl;

  @override
  dynamic get statusPage;
  @override
  List<DataBarang>? get daftarData;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$KatalogBarangStateImplCopyWith<_$KatalogBarangStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
