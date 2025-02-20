// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_tagihan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailTagihanState {
  dynamic get statusPage => throw _privateConstructorUsedError;
  ResponseDetailTagihan? get responseDetailTagihan =>
      throw _privateConstructorUsedError;
  String? get alamatCheckIn => throw _privateConstructorUsedError;
  String? get alamatCheckOut => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailTagihanStateCopyWith<DetailTagihanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTagihanStateCopyWith<$Res> {
  factory $DetailTagihanStateCopyWith(
          DetailTagihanState value, $Res Function(DetailTagihanState) then) =
      _$DetailTagihanStateCopyWithImpl<$Res, DetailTagihanState>;
  @useResult
  $Res call(
      {dynamic statusPage,
      ResponseDetailTagihan? responseDetailTagihan,
      String? alamatCheckIn,
      String? alamatCheckOut,
      String? errorMessage});

  $ResponseDetailTagihanCopyWith<$Res>? get responseDetailTagihan;
}

/// @nodoc
class _$DetailTagihanStateCopyWithImpl<$Res, $Val extends DetailTagihanState>
    implements $DetailTagihanStateCopyWith<$Res> {
  _$DetailTagihanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? responseDetailTagihan = freezed,
    Object? alamatCheckIn = freezed,
    Object? alamatCheckOut = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      statusPage: freezed == statusPage
          ? _value.statusPage
          : statusPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      responseDetailTagihan: freezed == responseDetailTagihan
          ? _value.responseDetailTagihan
          : responseDetailTagihan // ignore: cast_nullable_to_non_nullable
              as ResponseDetailTagihan?,
      alamatCheckIn: freezed == alamatCheckIn
          ? _value.alamatCheckIn
          : alamatCheckIn // ignore: cast_nullable_to_non_nullable
              as String?,
      alamatCheckOut: freezed == alamatCheckOut
          ? _value.alamatCheckOut
          : alamatCheckOut // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseDetailTagihanCopyWith<$Res>? get responseDetailTagihan {
    if (_value.responseDetailTagihan == null) {
      return null;
    }

    return $ResponseDetailTagihanCopyWith<$Res>(_value.responseDetailTagihan!,
        (value) {
      return _then(_value.copyWith(responseDetailTagihan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailTagihanStateImplCopyWith<$Res>
    implements $DetailTagihanStateCopyWith<$Res> {
  factory _$$DetailTagihanStateImplCopyWith(_$DetailTagihanStateImpl value,
          $Res Function(_$DetailTagihanStateImpl) then) =
      __$$DetailTagihanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic statusPage,
      ResponseDetailTagihan? responseDetailTagihan,
      String? alamatCheckIn,
      String? alamatCheckOut,
      String? errorMessage});

  @override
  $ResponseDetailTagihanCopyWith<$Res>? get responseDetailTagihan;
}

/// @nodoc
class __$$DetailTagihanStateImplCopyWithImpl<$Res>
    extends _$DetailTagihanStateCopyWithImpl<$Res, _$DetailTagihanStateImpl>
    implements _$$DetailTagihanStateImplCopyWith<$Res> {
  __$$DetailTagihanStateImplCopyWithImpl(_$DetailTagihanStateImpl _value,
      $Res Function(_$DetailTagihanStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? responseDetailTagihan = freezed,
    Object? alamatCheckIn = freezed,
    Object? alamatCheckOut = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$DetailTagihanStateImpl(
      statusPage: freezed == statusPage ? _value.statusPage! : statusPage,
      responseDetailTagihan: freezed == responseDetailTagihan
          ? _value.responseDetailTagihan
          : responseDetailTagihan // ignore: cast_nullable_to_non_nullable
              as ResponseDetailTagihan?,
      alamatCheckIn: freezed == alamatCheckIn
          ? _value.alamatCheckIn
          : alamatCheckIn // ignore: cast_nullable_to_non_nullable
              as String?,
      alamatCheckOut: freezed == alamatCheckOut
          ? _value.alamatCheckOut
          : alamatCheckOut // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DetailTagihanStateImpl implements _DetailTagihanState {
  const _$DetailTagihanStateImpl(
      {this.statusPage = LoadingPageStatus.initial,
      this.responseDetailTagihan,
      this.alamatCheckIn,
      this.alamatCheckOut,
      this.errorMessage});

  @override
  @JsonKey()
  final dynamic statusPage;
  @override
  final ResponseDetailTagihan? responseDetailTagihan;
  @override
  final String? alamatCheckIn;
  @override
  final String? alamatCheckOut;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DetailTagihanState(statusPage: $statusPage, responseDetailTagihan: $responseDetailTagihan, alamatCheckIn: $alamatCheckIn, alamatCheckOut: $alamatCheckOut, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTagihanStateImpl &&
            const DeepCollectionEquality()
                .equals(other.statusPage, statusPage) &&
            (identical(other.responseDetailTagihan, responseDetailTagihan) ||
                other.responseDetailTagihan == responseDetailTagihan) &&
            (identical(other.alamatCheckIn, alamatCheckIn) ||
                other.alamatCheckIn == alamatCheckIn) &&
            (identical(other.alamatCheckOut, alamatCheckOut) ||
                other.alamatCheckOut == alamatCheckOut) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusPage),
      responseDetailTagihan,
      alamatCheckIn,
      alamatCheckOut,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTagihanStateImplCopyWith<_$DetailTagihanStateImpl> get copyWith =>
      __$$DetailTagihanStateImplCopyWithImpl<_$DetailTagihanStateImpl>(
          this, _$identity);
}

abstract class _DetailTagihanState implements DetailTagihanState {
  const factory _DetailTagihanState(
      {final dynamic statusPage,
      final ResponseDetailTagihan? responseDetailTagihan,
      final String? alamatCheckIn,
      final String? alamatCheckOut,
      final String? errorMessage}) = _$DetailTagihanStateImpl;

  @override
  dynamic get statusPage;
  @override
  ResponseDetailTagihan? get responseDetailTagihan;
  @override
  String? get alamatCheckIn;
  @override
  String? get alamatCheckOut;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$DetailTagihanStateImplCopyWith<_$DetailTagihanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
