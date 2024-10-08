// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetDataState {
  dynamic get statusPage => throw _privateConstructorUsedError;
  List<DataGeneral>? get daftarData => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetDataStateCopyWith<GetDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataStateCopyWith<$Res> {
  factory $GetDataStateCopyWith(
          GetDataState value, $Res Function(GetDataState) then) =
      _$GetDataStateCopyWithImpl<$Res, GetDataState>;
  @useResult
  $Res call(
      {dynamic statusPage,
      List<DataGeneral>? daftarData,
      String? errorMessage});
}

/// @nodoc
class _$GetDataStateCopyWithImpl<$Res, $Val extends GetDataState>
    implements $GetDataStateCopyWith<$Res> {
  _$GetDataStateCopyWithImpl(this._value, this._then);

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
              as List<DataGeneral>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDataStateImplCopyWith<$Res>
    implements $GetDataStateCopyWith<$Res> {
  factory _$$GetDataStateImplCopyWith(
          _$GetDataStateImpl value, $Res Function(_$GetDataStateImpl) then) =
      __$$GetDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic statusPage,
      List<DataGeneral>? daftarData,
      String? errorMessage});
}

/// @nodoc
class __$$GetDataStateImplCopyWithImpl<$Res>
    extends _$GetDataStateCopyWithImpl<$Res, _$GetDataStateImpl>
    implements _$$GetDataStateImplCopyWith<$Res> {
  __$$GetDataStateImplCopyWithImpl(
      _$GetDataStateImpl _value, $Res Function(_$GetDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? daftarData = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$GetDataStateImpl(
      statusPage: freezed == statusPage ? _value.statusPage! : statusPage,
      daftarData: freezed == daftarData
          ? _value._daftarData
          : daftarData // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetDataStateImpl implements _GetDataState {
  const _$GetDataStateImpl(
      {this.statusPage = LoadingPageStatus.initial,
      final List<DataGeneral>? daftarData,
      this.errorMessage})
      : _daftarData = daftarData;

  @override
  @JsonKey()
  final dynamic statusPage;
  final List<DataGeneral>? _daftarData;
  @override
  List<DataGeneral>? get daftarData {
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
    return 'GetDataState(statusPage: $statusPage, daftarData: $daftarData, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataStateImpl &&
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
  _$$GetDataStateImplCopyWith<_$GetDataStateImpl> get copyWith =>
      __$$GetDataStateImplCopyWithImpl<_$GetDataStateImpl>(this, _$identity);
}

abstract class _GetDataState implements GetDataState {
  const factory _GetDataState(
      {final dynamic statusPage,
      final List<DataGeneral>? daftarData,
      final String? errorMessage}) = _$GetDataStateImpl;

  @override
  dynamic get statusPage;
  @override
  List<DataGeneral>? get daftarData;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$GetDataStateImplCopyWith<_$GetDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
