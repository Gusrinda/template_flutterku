// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeliveryOrderState {
  dynamic get statusPage => throw _privateConstructorUsedError;
  ResponseListBelumKonfirm? get responseListBelumKonfirm =>
      throw _privateConstructorUsedError;
  List<ListSelectDO>? get daftarSelectDO => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryOrderStateCopyWith<DeliveryOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryOrderStateCopyWith<$Res> {
  factory $DeliveryOrderStateCopyWith(
          DeliveryOrderState value, $Res Function(DeliveryOrderState) then) =
      _$DeliveryOrderStateCopyWithImpl<$Res, DeliveryOrderState>;
  @useResult
  $Res call(
      {dynamic statusPage,
      ResponseListBelumKonfirm? responseListBelumKonfirm,
      List<ListSelectDO>? daftarSelectDO,
      String? error});

  $ResponseListBelumKonfirmCopyWith<$Res>? get responseListBelumKonfirm;
}

/// @nodoc
class _$DeliveryOrderStateCopyWithImpl<$Res, $Val extends DeliveryOrderState>
    implements $DeliveryOrderStateCopyWith<$Res> {
  _$DeliveryOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? responseListBelumKonfirm = freezed,
    Object? daftarSelectDO = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      statusPage: freezed == statusPage
          ? _value.statusPage
          : statusPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      responseListBelumKonfirm: freezed == responseListBelumKonfirm
          ? _value.responseListBelumKonfirm
          : responseListBelumKonfirm // ignore: cast_nullable_to_non_nullable
              as ResponseListBelumKonfirm?,
      daftarSelectDO: freezed == daftarSelectDO
          ? _value.daftarSelectDO
          : daftarSelectDO // ignore: cast_nullable_to_non_nullable
              as List<ListSelectDO>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseListBelumKonfirmCopyWith<$Res>? get responseListBelumKonfirm {
    if (_value.responseListBelumKonfirm == null) {
      return null;
    }

    return $ResponseListBelumKonfirmCopyWith<$Res>(
        _value.responseListBelumKonfirm!, (value) {
      return _then(_value.copyWith(responseListBelumKonfirm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeliveryOrderStateCopyWith<$Res>
    implements $DeliveryOrderStateCopyWith<$Res> {
  factory _$$_DeliveryOrderStateCopyWith(_$_DeliveryOrderState value,
          $Res Function(_$_DeliveryOrderState) then) =
      __$$_DeliveryOrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic statusPage,
      ResponseListBelumKonfirm? responseListBelumKonfirm,
      List<ListSelectDO>? daftarSelectDO,
      String? error});

  @override
  $ResponseListBelumKonfirmCopyWith<$Res>? get responseListBelumKonfirm;
}

/// @nodoc
class __$$_DeliveryOrderStateCopyWithImpl<$Res>
    extends _$DeliveryOrderStateCopyWithImpl<$Res, _$_DeliveryOrderState>
    implements _$$_DeliveryOrderStateCopyWith<$Res> {
  __$$_DeliveryOrderStateCopyWithImpl(
      _$_DeliveryOrderState _value, $Res Function(_$_DeliveryOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? responseListBelumKonfirm = freezed,
    Object? daftarSelectDO = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_DeliveryOrderState(
      statusPage: freezed == statusPage ? _value.statusPage! : statusPage,
      responseListBelumKonfirm: freezed == responseListBelumKonfirm
          ? _value.responseListBelumKonfirm
          : responseListBelumKonfirm // ignore: cast_nullable_to_non_nullable
              as ResponseListBelumKonfirm?,
      daftarSelectDO: freezed == daftarSelectDO
          ? _value._daftarSelectDO
          : daftarSelectDO // ignore: cast_nullable_to_non_nullable
              as List<ListSelectDO>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DeliveryOrderState implements _DeliveryOrderState {
  const _$_DeliveryOrderState(
      {this.statusPage = LoadingPageStatus.initial,
      this.responseListBelumKonfirm,
      final List<ListSelectDO>? daftarSelectDO,
      this.error})
      : _daftarSelectDO = daftarSelectDO;

  @override
  @JsonKey()
  final dynamic statusPage;
  @override
  final ResponseListBelumKonfirm? responseListBelumKonfirm;
  final List<ListSelectDO>? _daftarSelectDO;
  @override
  List<ListSelectDO>? get daftarSelectDO {
    final value = _daftarSelectDO;
    if (value == null) return null;
    if (_daftarSelectDO is EqualUnmodifiableListView) return _daftarSelectDO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'DeliveryOrderState(statusPage: $statusPage, responseListBelumKonfirm: $responseListBelumKonfirm, daftarSelectDO: $daftarSelectDO, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryOrderState &&
            const DeepCollectionEquality()
                .equals(other.statusPage, statusPage) &&
            (identical(
                    other.responseListBelumKonfirm, responseListBelumKonfirm) ||
                other.responseListBelumKonfirm == responseListBelumKonfirm) &&
            const DeepCollectionEquality()
                .equals(other._daftarSelectDO, _daftarSelectDO) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusPage),
      responseListBelumKonfirm,
      const DeepCollectionEquality().hash(_daftarSelectDO),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryOrderStateCopyWith<_$_DeliveryOrderState> get copyWith =>
      __$$_DeliveryOrderStateCopyWithImpl<_$_DeliveryOrderState>(
          this, _$identity);
}

abstract class _DeliveryOrderState implements DeliveryOrderState {
  const factory _DeliveryOrderState(
      {final dynamic statusPage,
      final ResponseListBelumKonfirm? responseListBelumKonfirm,
      final List<ListSelectDO>? daftarSelectDO,
      final String? error}) = _$_DeliveryOrderState;

  @override
  dynamic get statusPage;
  @override
  ResponseListBelumKonfirm? get responseListBelumKonfirm;
  @override
  List<ListSelectDO>? get daftarSelectDO;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryOrderStateCopyWith<_$_DeliveryOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
