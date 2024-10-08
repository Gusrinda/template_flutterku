// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packing_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PackingDetailEvent {
  String get idPacking => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String idPacking) getDataDetail,
    required TResult Function(
            String idPacking, String qtyKresek, String qtyPeti, String qtyIkat)
        updateDataPacking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String idPacking)? getDataDetail,
    TResult? Function(
            String idPacking, String qtyKresek, String qtyPeti, String qtyIkat)?
        updateDataPacking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String idPacking)? getDataDetail,
    TResult Function(
            String idPacking, String qtyKresek, String qtyPeti, String qtyIkat)?
        updateDataPacking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataDetail value) getDataDetail,
    required TResult Function(UpdateDataPacking value) updateDataPacking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataDetail value)? getDataDetail,
    TResult? Function(UpdateDataPacking value)? updateDataPacking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataDetail value)? getDataDetail,
    TResult Function(UpdateDataPacking value)? updateDataPacking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PackingDetailEventCopyWith<PackingDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackingDetailEventCopyWith<$Res> {
  factory $PackingDetailEventCopyWith(
          PackingDetailEvent value, $Res Function(PackingDetailEvent) then) =
      _$PackingDetailEventCopyWithImpl<$Res, PackingDetailEvent>;
  @useResult
  $Res call({String idPacking});
}

/// @nodoc
class _$PackingDetailEventCopyWithImpl<$Res, $Val extends PackingDetailEvent>
    implements $PackingDetailEventCopyWith<$Res> {
  _$PackingDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPacking = null,
  }) {
    return _then(_value.copyWith(
      idPacking: null == idPacking
          ? _value.idPacking
          : idPacking // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDataDetailImplCopyWith<$Res>
    implements $PackingDetailEventCopyWith<$Res> {
  factory _$$GetDataDetailImplCopyWith(
          _$GetDataDetailImpl value, $Res Function(_$GetDataDetailImpl) then) =
      __$$GetDataDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idPacking});
}

/// @nodoc
class __$$GetDataDetailImplCopyWithImpl<$Res>
    extends _$PackingDetailEventCopyWithImpl<$Res, _$GetDataDetailImpl>
    implements _$$GetDataDetailImplCopyWith<$Res> {
  __$$GetDataDetailImplCopyWithImpl(
      _$GetDataDetailImpl _value, $Res Function(_$GetDataDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPacking = null,
  }) {
    return _then(_$GetDataDetailImpl(
      idPacking: null == idPacking
          ? _value.idPacking
          : idPacking // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDataDetailImpl implements GetDataDetail {
  const _$GetDataDetailImpl({required this.idPacking});

  @override
  final String idPacking;

  @override
  String toString() {
    return 'PackingDetailEvent.getDataDetail(idPacking: $idPacking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataDetailImpl &&
            (identical(other.idPacking, idPacking) ||
                other.idPacking == idPacking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idPacking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataDetailImplCopyWith<_$GetDataDetailImpl> get copyWith =>
      __$$GetDataDetailImplCopyWithImpl<_$GetDataDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String idPacking) getDataDetail,
    required TResult Function(
            String idPacking, String qtyKresek, String qtyPeti, String qtyIkat)
        updateDataPacking,
  }) {
    return getDataDetail(idPacking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String idPacking)? getDataDetail,
    TResult? Function(
            String idPacking, String qtyKresek, String qtyPeti, String qtyIkat)?
        updateDataPacking,
  }) {
    return getDataDetail?.call(idPacking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String idPacking)? getDataDetail,
    TResult Function(
            String idPacking, String qtyKresek, String qtyPeti, String qtyIkat)?
        updateDataPacking,
    required TResult orElse(),
  }) {
    if (getDataDetail != null) {
      return getDataDetail(idPacking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataDetail value) getDataDetail,
    required TResult Function(UpdateDataPacking value) updateDataPacking,
  }) {
    return getDataDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataDetail value)? getDataDetail,
    TResult? Function(UpdateDataPacking value)? updateDataPacking,
  }) {
    return getDataDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataDetail value)? getDataDetail,
    TResult Function(UpdateDataPacking value)? updateDataPacking,
    required TResult orElse(),
  }) {
    if (getDataDetail != null) {
      return getDataDetail(this);
    }
    return orElse();
  }
}

abstract class GetDataDetail implements PackingDetailEvent {
  const factory GetDataDetail({required final String idPacking}) =
      _$GetDataDetailImpl;

  @override
  String get idPacking;
  @override
  @JsonKey(ignore: true)
  _$$GetDataDetailImplCopyWith<_$GetDataDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDataPackingImplCopyWith<$Res>
    implements $PackingDetailEventCopyWith<$Res> {
  factory _$$UpdateDataPackingImplCopyWith(_$UpdateDataPackingImpl value,
          $Res Function(_$UpdateDataPackingImpl) then) =
      __$$UpdateDataPackingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String idPacking, String qtyKresek, String qtyPeti, String qtyIkat});
}

/// @nodoc
class __$$UpdateDataPackingImplCopyWithImpl<$Res>
    extends _$PackingDetailEventCopyWithImpl<$Res, _$UpdateDataPackingImpl>
    implements _$$UpdateDataPackingImplCopyWith<$Res> {
  __$$UpdateDataPackingImplCopyWithImpl(_$UpdateDataPackingImpl _value,
      $Res Function(_$UpdateDataPackingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPacking = null,
    Object? qtyKresek = null,
    Object? qtyPeti = null,
    Object? qtyIkat = null,
  }) {
    return _then(_$UpdateDataPackingImpl(
      idPacking: null == idPacking
          ? _value.idPacking
          : idPacking // ignore: cast_nullable_to_non_nullable
              as String,
      qtyKresek: null == qtyKresek
          ? _value.qtyKresek
          : qtyKresek // ignore: cast_nullable_to_non_nullable
              as String,
      qtyPeti: null == qtyPeti
          ? _value.qtyPeti
          : qtyPeti // ignore: cast_nullable_to_non_nullable
              as String,
      qtyIkat: null == qtyIkat
          ? _value.qtyIkat
          : qtyIkat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateDataPackingImpl implements UpdateDataPacking {
  const _$UpdateDataPackingImpl(
      {required this.idPacking,
      required this.qtyKresek,
      required this.qtyPeti,
      required this.qtyIkat});

  @override
  final String idPacking;
  @override
  final String qtyKresek;
  @override
  final String qtyPeti;
  @override
  final String qtyIkat;

  @override
  String toString() {
    return 'PackingDetailEvent.updateDataPacking(idPacking: $idPacking, qtyKresek: $qtyKresek, qtyPeti: $qtyPeti, qtyIkat: $qtyIkat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDataPackingImpl &&
            (identical(other.idPacking, idPacking) ||
                other.idPacking == idPacking) &&
            (identical(other.qtyKresek, qtyKresek) ||
                other.qtyKresek == qtyKresek) &&
            (identical(other.qtyPeti, qtyPeti) || other.qtyPeti == qtyPeti) &&
            (identical(other.qtyIkat, qtyIkat) || other.qtyIkat == qtyIkat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, idPacking, qtyKresek, qtyPeti, qtyIkat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDataPackingImplCopyWith<_$UpdateDataPackingImpl> get copyWith =>
      __$$UpdateDataPackingImplCopyWithImpl<_$UpdateDataPackingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String idPacking) getDataDetail,
    required TResult Function(
            String idPacking, String qtyKresek, String qtyPeti, String qtyIkat)
        updateDataPacking,
  }) {
    return updateDataPacking(idPacking, qtyKresek, qtyPeti, qtyIkat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String idPacking)? getDataDetail,
    TResult? Function(
            String idPacking, String qtyKresek, String qtyPeti, String qtyIkat)?
        updateDataPacking,
  }) {
    return updateDataPacking?.call(idPacking, qtyKresek, qtyPeti, qtyIkat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String idPacking)? getDataDetail,
    TResult Function(
            String idPacking, String qtyKresek, String qtyPeti, String qtyIkat)?
        updateDataPacking,
    required TResult orElse(),
  }) {
    if (updateDataPacking != null) {
      return updateDataPacking(idPacking, qtyKresek, qtyPeti, qtyIkat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataDetail value) getDataDetail,
    required TResult Function(UpdateDataPacking value) updateDataPacking,
  }) {
    return updateDataPacking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataDetail value)? getDataDetail,
    TResult? Function(UpdateDataPacking value)? updateDataPacking,
  }) {
    return updateDataPacking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataDetail value)? getDataDetail,
    TResult Function(UpdateDataPacking value)? updateDataPacking,
    required TResult orElse(),
  }) {
    if (updateDataPacking != null) {
      return updateDataPacking(this);
    }
    return orElse();
  }
}

abstract class UpdateDataPacking implements PackingDetailEvent {
  const factory UpdateDataPacking(
      {required final String idPacking,
      required final String qtyKresek,
      required final String qtyPeti,
      required final String qtyIkat}) = _$UpdateDataPackingImpl;

  @override
  String get idPacking;
  String get qtyKresek;
  String get qtyPeti;
  String get qtyIkat;
  @override
  @JsonKey(ignore: true)
  _$$UpdateDataPackingImplCopyWith<_$UpdateDataPackingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PackingDetailState {
  LoadingPageStatus get statusPage => throw _privateConstructorUsedError;
  FormzStatus get statusFormz => throw _privateConstructorUsedError;
  ResponseDetailPacking? get responseDetailPacking =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PackingDetailStateCopyWith<PackingDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackingDetailStateCopyWith<$Res> {
  factory $PackingDetailStateCopyWith(
          PackingDetailState value, $Res Function(PackingDetailState) then) =
      _$PackingDetailStateCopyWithImpl<$Res, PackingDetailState>;
  @useResult
  $Res call(
      {LoadingPageStatus statusPage,
      FormzStatus statusFormz,
      ResponseDetailPacking? responseDetailPacking,
      String? error});

  $ResponseDetailPackingCopyWith<$Res>? get responseDetailPacking;
}

/// @nodoc
class _$PackingDetailStateCopyWithImpl<$Res, $Val extends PackingDetailState>
    implements $PackingDetailStateCopyWith<$Res> {
  _$PackingDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = null,
    Object? statusFormz = null,
    Object? responseDetailPacking = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      statusPage: null == statusPage
          ? _value.statusPage
          : statusPage // ignore: cast_nullable_to_non_nullable
              as LoadingPageStatus,
      statusFormz: null == statusFormz
          ? _value.statusFormz
          : statusFormz // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      responseDetailPacking: freezed == responseDetailPacking
          ? _value.responseDetailPacking
          : responseDetailPacking // ignore: cast_nullable_to_non_nullable
              as ResponseDetailPacking?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseDetailPackingCopyWith<$Res>? get responseDetailPacking {
    if (_value.responseDetailPacking == null) {
      return null;
    }

    return $ResponseDetailPackingCopyWith<$Res>(_value.responseDetailPacking!,
        (value) {
      return _then(_value.copyWith(responseDetailPacking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackingDetailStateImplCopyWith<$Res>
    implements $PackingDetailStateCopyWith<$Res> {
  factory _$$PackingDetailStateImplCopyWith(_$PackingDetailStateImpl value,
          $Res Function(_$PackingDetailStateImpl) then) =
      __$$PackingDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingPageStatus statusPage,
      FormzStatus statusFormz,
      ResponseDetailPacking? responseDetailPacking,
      String? error});

  @override
  $ResponseDetailPackingCopyWith<$Res>? get responseDetailPacking;
}

/// @nodoc
class __$$PackingDetailStateImplCopyWithImpl<$Res>
    extends _$PackingDetailStateCopyWithImpl<$Res, _$PackingDetailStateImpl>
    implements _$$PackingDetailStateImplCopyWith<$Res> {
  __$$PackingDetailStateImplCopyWithImpl(_$PackingDetailStateImpl _value,
      $Res Function(_$PackingDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = null,
    Object? statusFormz = null,
    Object? responseDetailPacking = freezed,
    Object? error = freezed,
  }) {
    return _then(_$PackingDetailStateImpl(
      statusPage: null == statusPage
          ? _value.statusPage
          : statusPage // ignore: cast_nullable_to_non_nullable
              as LoadingPageStatus,
      statusFormz: null == statusFormz
          ? _value.statusFormz
          : statusFormz // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      responseDetailPacking: freezed == responseDetailPacking
          ? _value.responseDetailPacking
          : responseDetailPacking // ignore: cast_nullable_to_non_nullable
              as ResponseDetailPacking?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PackingDetailStateImpl implements _PackingDetailState {
  const _$PackingDetailStateImpl(
      {this.statusPage = LoadingPageStatus.initial,
      this.statusFormz = FormzStatus.pure,
      this.responseDetailPacking,
      this.error});

  @override
  @JsonKey()
  final LoadingPageStatus statusPage;
  @override
  @JsonKey()
  final FormzStatus statusFormz;
  @override
  final ResponseDetailPacking? responseDetailPacking;
  @override
  final String? error;

  @override
  String toString() {
    return 'PackingDetailState(statusPage: $statusPage, statusFormz: $statusFormz, responseDetailPacking: $responseDetailPacking, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackingDetailStateImpl &&
            (identical(other.statusPage, statusPage) ||
                other.statusPage == statusPage) &&
            (identical(other.statusFormz, statusFormz) ||
                other.statusFormz == statusFormz) &&
            (identical(other.responseDetailPacking, responseDetailPacking) ||
                other.responseDetailPacking == responseDetailPacking) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, statusPage, statusFormz, responseDetailPacking, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackingDetailStateImplCopyWith<_$PackingDetailStateImpl> get copyWith =>
      __$$PackingDetailStateImplCopyWithImpl<_$PackingDetailStateImpl>(
          this, _$identity);
}

abstract class _PackingDetailState implements PackingDetailState {
  const factory _PackingDetailState(
      {final LoadingPageStatus statusPage,
      final FormzStatus statusFormz,
      final ResponseDetailPacking? responseDetailPacking,
      final String? error}) = _$PackingDetailStateImpl;

  @override
  LoadingPageStatus get statusPage;
  @override
  FormzStatus get statusFormz;
  @override
  ResponseDetailPacking? get responseDetailPacking;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$PackingDetailStateImplCopyWith<_$PackingDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
