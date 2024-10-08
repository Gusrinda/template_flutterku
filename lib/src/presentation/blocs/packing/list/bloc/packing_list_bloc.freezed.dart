// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packing_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PackingListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackingListEventCopyWith<$Res> {
  factory $PackingListEventCopyWith(
          PackingListEvent value, $Res Function(PackingListEvent) then) =
      _$PackingListEventCopyWithImpl<$Res, PackingListEvent>;
}

/// @nodoc
class _$PackingListEventCopyWithImpl<$Res, $Val extends PackingListEvent>
    implements $PackingListEventCopyWith<$Res> {
  _$PackingListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDataImplCopyWith<$Res> {
  factory _$$GetDataImplCopyWith(
          _$GetDataImpl value, $Res Function(_$GetDataImpl) then) =
      __$$GetDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDataImplCopyWithImpl<$Res>
    extends _$PackingListEventCopyWithImpl<$Res, _$GetDataImpl>
    implements _$$GetDataImplCopyWith<$Res> {
  __$$GetDataImplCopyWithImpl(
      _$GetDataImpl _value, $Res Function(_$GetDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDataImpl implements GetData {
  const _$GetDataImpl();

  @override
  String toString() {
    return 'PackingListEvent.getData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetData implements PackingListEvent {
  const factory GetData() = _$GetDataImpl;
}

/// @nodoc
mixin _$PackingListState {
  LoadingPageStatus get statusPage => throw _privateConstructorUsedError;
  ResponseListPacking? get responseListPacking =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PackingListStateCopyWith<PackingListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackingListStateCopyWith<$Res> {
  factory $PackingListStateCopyWith(
          PackingListState value, $Res Function(PackingListState) then) =
      _$PackingListStateCopyWithImpl<$Res, PackingListState>;
  @useResult
  $Res call(
      {LoadingPageStatus statusPage,
      ResponseListPacking? responseListPacking,
      String? error});

  $ResponseListPackingCopyWith<$Res>? get responseListPacking;
}

/// @nodoc
class _$PackingListStateCopyWithImpl<$Res, $Val extends PackingListState>
    implements $PackingListStateCopyWith<$Res> {
  _$PackingListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = null,
    Object? responseListPacking = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      statusPage: null == statusPage
          ? _value.statusPage
          : statusPage // ignore: cast_nullable_to_non_nullable
              as LoadingPageStatus,
      responseListPacking: freezed == responseListPacking
          ? _value.responseListPacking
          : responseListPacking // ignore: cast_nullable_to_non_nullable
              as ResponseListPacking?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseListPackingCopyWith<$Res>? get responseListPacking {
    if (_value.responseListPacking == null) {
      return null;
    }

    return $ResponseListPackingCopyWith<$Res>(_value.responseListPacking!,
        (value) {
      return _then(_value.copyWith(responseListPacking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackingListStateImplCopyWith<$Res>
    implements $PackingListStateCopyWith<$Res> {
  factory _$$PackingListStateImplCopyWith(_$PackingListStateImpl value,
          $Res Function(_$PackingListStateImpl) then) =
      __$$PackingListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingPageStatus statusPage,
      ResponseListPacking? responseListPacking,
      String? error});

  @override
  $ResponseListPackingCopyWith<$Res>? get responseListPacking;
}

/// @nodoc
class __$$PackingListStateImplCopyWithImpl<$Res>
    extends _$PackingListStateCopyWithImpl<$Res, _$PackingListStateImpl>
    implements _$$PackingListStateImplCopyWith<$Res> {
  __$$PackingListStateImplCopyWithImpl(_$PackingListStateImpl _value,
      $Res Function(_$PackingListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = null,
    Object? responseListPacking = freezed,
    Object? error = freezed,
  }) {
    return _then(_$PackingListStateImpl(
      statusPage: null == statusPage
          ? _value.statusPage
          : statusPage // ignore: cast_nullable_to_non_nullable
              as LoadingPageStatus,
      responseListPacking: freezed == responseListPacking
          ? _value.responseListPacking
          : responseListPacking // ignore: cast_nullable_to_non_nullable
              as ResponseListPacking?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PackingListStateImpl implements _PackingListState {
  const _$PackingListStateImpl(
      {this.statusPage = LoadingPageStatus.initial,
      this.responseListPacking,
      this.error});

  @override
  @JsonKey()
  final LoadingPageStatus statusPage;
  @override
  final ResponseListPacking? responseListPacking;
  @override
  final String? error;

  @override
  String toString() {
    return 'PackingListState(statusPage: $statusPage, responseListPacking: $responseListPacking, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackingListStateImpl &&
            (identical(other.statusPage, statusPage) ||
                other.statusPage == statusPage) &&
            (identical(other.responseListPacking, responseListPacking) ||
                other.responseListPacking == responseListPacking) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, statusPage, responseListPacking, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackingListStateImplCopyWith<_$PackingListStateImpl> get copyWith =>
      __$$PackingListStateImplCopyWithImpl<_$PackingListStateImpl>(
          this, _$identity);
}

abstract class _PackingListState implements PackingListState {
  const factory _PackingListState(
      {final LoadingPageStatus statusPage,
      final ResponseListPacking? responseListPacking,
      final String? error}) = _$PackingListStateImpl;

  @override
  LoadingPageStatus get statusPage;
  @override
  ResponseListPacking? get responseListPacking;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$PackingListStateImplCopyWith<_$PackingListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
