// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginate_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginateDataState {
  dynamic get statusPage => throw _privateConstructorUsedError;
  dynamic get paginationStatus => throw _privateConstructorUsedError;
  List<DataGeneral>? get daftarData => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int? get totalPage => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginateDataStateCopyWith<PaginateDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginateDataStateCopyWith<$Res> {
  factory $PaginateDataStateCopyWith(
          PaginateDataState value, $Res Function(PaginateDataState) then) =
      _$PaginateDataStateCopyWithImpl<$Res, PaginateDataState>;
  @useResult
  $Res call(
      {dynamic statusPage,
      dynamic paginationStatus,
      List<DataGeneral>? daftarData,
      int currentPage,
      int? totalPage,
      bool hasReachedMax,
      String? errorMessage});
}

/// @nodoc
class _$PaginateDataStateCopyWithImpl<$Res, $Val extends PaginateDataState>
    implements $PaginateDataStateCopyWith<$Res> {
  _$PaginateDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? paginationStatus = freezed,
    Object? daftarData = freezed,
    Object? currentPage = null,
    Object? totalPage = freezed,
    Object? hasReachedMax = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      statusPage: freezed == statusPage
          ? _value.statusPage
          : statusPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paginationStatus: freezed == paginationStatus
          ? _value.paginationStatus
          : paginationStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      daftarData: freezed == daftarData
          ? _value.daftarData
          : daftarData // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: freezed == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginateDataStateImplCopyWith<$Res>
    implements $PaginateDataStateCopyWith<$Res> {
  factory _$$PaginateDataStateImplCopyWith(_$PaginateDataStateImpl value,
          $Res Function(_$PaginateDataStateImpl) then) =
      __$$PaginateDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic statusPage,
      dynamic paginationStatus,
      List<DataGeneral>? daftarData,
      int currentPage,
      int? totalPage,
      bool hasReachedMax,
      String? errorMessage});
}

/// @nodoc
class __$$PaginateDataStateImplCopyWithImpl<$Res>
    extends _$PaginateDataStateCopyWithImpl<$Res, _$PaginateDataStateImpl>
    implements _$$PaginateDataStateImplCopyWith<$Res> {
  __$$PaginateDataStateImplCopyWithImpl(_$PaginateDataStateImpl _value,
      $Res Function(_$PaginateDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? paginationStatus = freezed,
    Object? daftarData = freezed,
    Object? currentPage = null,
    Object? totalPage = freezed,
    Object? hasReachedMax = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PaginateDataStateImpl(
      statusPage: freezed == statusPage ? _value.statusPage! : statusPage,
      paginationStatus: freezed == paginationStatus
          ? _value.paginationStatus!
          : paginationStatus,
      daftarData: freezed == daftarData
          ? _value._daftarData
          : daftarData // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: freezed == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaginateDataStateImpl implements _PaginateDataState {
  const _$PaginateDataStateImpl(
      {this.statusPage = LoadingPageStatus.initial,
      this.paginationStatus = LoadingPageStatus.initial,
      final List<DataGeneral>? daftarData,
      this.currentPage = 1,
      this.totalPage,
      this.hasReachedMax = false,
      this.errorMessage})
      : _daftarData = daftarData;

  @override
  @JsonKey()
  final dynamic statusPage;
  @override
  @JsonKey()
  final dynamic paginationStatus;
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
  @JsonKey()
  final int currentPage;
  @override
  final int? totalPage;
  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PaginateDataState(statusPage: $statusPage, paginationStatus: $paginationStatus, daftarData: $daftarData, currentPage: $currentPage, totalPage: $totalPage, hasReachedMax: $hasReachedMax, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginateDataStateImpl &&
            const DeepCollectionEquality()
                .equals(other.statusPage, statusPage) &&
            const DeepCollectionEquality()
                .equals(other.paginationStatus, paginationStatus) &&
            const DeepCollectionEquality()
                .equals(other._daftarData, _daftarData) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusPage),
      const DeepCollectionEquality().hash(paginationStatus),
      const DeepCollectionEquality().hash(_daftarData),
      currentPage,
      totalPage,
      hasReachedMax,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginateDataStateImplCopyWith<_$PaginateDataStateImpl> get copyWith =>
      __$$PaginateDataStateImplCopyWithImpl<_$PaginateDataStateImpl>(
          this, _$identity);
}

abstract class _PaginateDataState implements PaginateDataState {
  const factory _PaginateDataState(
      {final dynamic statusPage,
      final dynamic paginationStatus,
      final List<DataGeneral>? daftarData,
      final int currentPage,
      final int? totalPage,
      final bool hasReachedMax,
      final String? errorMessage}) = _$PaginateDataStateImpl;

  @override
  dynamic get statusPage;
  @override
  dynamic get paginationStatus;
  @override
  List<DataGeneral>? get daftarData;
  @override
  int get currentPage;
  @override
  int? get totalPage;
  @override
  bool get hasReachedMax;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PaginateDataStateImplCopyWith<_$PaginateDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
