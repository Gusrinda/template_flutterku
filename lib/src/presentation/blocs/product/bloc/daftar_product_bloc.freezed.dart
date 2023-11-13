// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daftar_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DaftarProductState {
  dynamic get statusPage => throw _privateConstructorUsedError;
  ResponseListProduct? get responseListProduct =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DaftarProductStateCopyWith<DaftarProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaftarProductStateCopyWith<$Res> {
  factory $DaftarProductStateCopyWith(
          DaftarProductState value, $Res Function(DaftarProductState) then) =
      _$DaftarProductStateCopyWithImpl<$Res, DaftarProductState>;
  @useResult
  $Res call(
      {dynamic statusPage,
      ResponseListProduct? responseListProduct,
      String? error});

  $ResponseListProductCopyWith<$Res>? get responseListProduct;
}

/// @nodoc
class _$DaftarProductStateCopyWithImpl<$Res, $Val extends DaftarProductState>
    implements $DaftarProductStateCopyWith<$Res> {
  _$DaftarProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? responseListProduct = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      statusPage: freezed == statusPage
          ? _value.statusPage
          : statusPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      responseListProduct: freezed == responseListProduct
          ? _value.responseListProduct
          : responseListProduct // ignore: cast_nullable_to_non_nullable
              as ResponseListProduct?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseListProductCopyWith<$Res>? get responseListProduct {
    if (_value.responseListProduct == null) {
      return null;
    }

    return $ResponseListProductCopyWith<$Res>(_value.responseListProduct!,
        (value) {
      return _then(_value.copyWith(responseListProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DaftarProductStateCopyWith<$Res>
    implements $DaftarProductStateCopyWith<$Res> {
  factory _$$_DaftarProductStateCopyWith(_$_DaftarProductState value,
          $Res Function(_$_DaftarProductState) then) =
      __$$_DaftarProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic statusPage,
      ResponseListProduct? responseListProduct,
      String? error});

  @override
  $ResponseListProductCopyWith<$Res>? get responseListProduct;
}

/// @nodoc
class __$$_DaftarProductStateCopyWithImpl<$Res>
    extends _$DaftarProductStateCopyWithImpl<$Res, _$_DaftarProductState>
    implements _$$_DaftarProductStateCopyWith<$Res> {
  __$$_DaftarProductStateCopyWithImpl(
      _$_DaftarProductState _value, $Res Function(_$_DaftarProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? responseListProduct = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_DaftarProductState(
      statusPage: freezed == statusPage ? _value.statusPage! : statusPage,
      responseListProduct: freezed == responseListProduct
          ? _value.responseListProduct
          : responseListProduct // ignore: cast_nullable_to_non_nullable
              as ResponseListProduct?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DaftarProductState implements _DaftarProductState {
  const _$_DaftarProductState(
      {this.statusPage = LoadingPageStatus.initial,
      this.responseListProduct,
      this.error});

  @override
  @JsonKey()
  final dynamic statusPage;
  @override
  final ResponseListProduct? responseListProduct;
  @override
  final String? error;

  @override
  String toString() {
    return 'DaftarProductState(statusPage: $statusPage, responseListProduct: $responseListProduct, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DaftarProductState &&
            const DeepCollectionEquality()
                .equals(other.statusPage, statusPage) &&
            (identical(other.responseListProduct, responseListProduct) ||
                other.responseListProduct == responseListProduct) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusPage),
      responseListProduct,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DaftarProductStateCopyWith<_$_DaftarProductState> get copyWith =>
      __$$_DaftarProductStateCopyWithImpl<_$_DaftarProductState>(
          this, _$identity);
}

abstract class _DaftarProductState implements DaftarProductState {
  const factory _DaftarProductState(
      {final dynamic statusPage,
      final ResponseListProduct? responseListProduct,
      final String? error}) = _$_DaftarProductState;

  @override
  dynamic get statusPage;
  @override
  ResponseListProduct? get responseListProduct;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_DaftarProductStateCopyWith<_$_DaftarProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
