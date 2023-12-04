// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchDataState {
  dynamic get statusPage => throw _privateConstructorUsedError;
  List<DataGeneral>? get daftarData => throw _privateConstructorUsedError;
  List<String>? get daftarGroup => throw _privateConstructorUsedError;
  String? get selectedFilter => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchDataStateCopyWith<SearchDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDataStateCopyWith<$Res> {
  factory $SearchDataStateCopyWith(
          SearchDataState value, $Res Function(SearchDataState) then) =
      _$SearchDataStateCopyWithImpl<$Res, SearchDataState>;
  @useResult
  $Res call(
      {dynamic statusPage,
      List<DataGeneral>? daftarData,
      List<String>? daftarGroup,
      String? selectedFilter,
      String? errorMessage});
}

/// @nodoc
class _$SearchDataStateCopyWithImpl<$Res, $Val extends SearchDataState>
    implements $SearchDataStateCopyWith<$Res> {
  _$SearchDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? daftarData = freezed,
    Object? daftarGroup = freezed,
    Object? selectedFilter = freezed,
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
      daftarGroup: freezed == daftarGroup
          ? _value.daftarGroup
          : daftarGroup // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedFilter: freezed == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchDataStateCopyWith<$Res>
    implements $SearchDataStateCopyWith<$Res> {
  factory _$$_SearchDataStateCopyWith(
          _$_SearchDataState value, $Res Function(_$_SearchDataState) then) =
      __$$_SearchDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic statusPage,
      List<DataGeneral>? daftarData,
      List<String>? daftarGroup,
      String? selectedFilter,
      String? errorMessage});
}

/// @nodoc
class __$$_SearchDataStateCopyWithImpl<$Res>
    extends _$SearchDataStateCopyWithImpl<$Res, _$_SearchDataState>
    implements _$$_SearchDataStateCopyWith<$Res> {
  __$$_SearchDataStateCopyWithImpl(
      _$_SearchDataState _value, $Res Function(_$_SearchDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusPage = freezed,
    Object? daftarData = freezed,
    Object? daftarGroup = freezed,
    Object? selectedFilter = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_SearchDataState(
      statusPage: freezed == statusPage ? _value.statusPage! : statusPage,
      daftarData: freezed == daftarData
          ? _value._daftarData
          : daftarData // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      daftarGroup: freezed == daftarGroup
          ? _value._daftarGroup
          : daftarGroup // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedFilter: freezed == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchDataState implements _SearchDataState {
  const _$_SearchDataState(
      {this.statusPage = LoadingPageStatus.initial,
      final List<DataGeneral>? daftarData,
      final List<String>? daftarGroup,
      this.selectedFilter,
      this.errorMessage})
      : _daftarData = daftarData,
        _daftarGroup = daftarGroup;

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

  final List<String>? _daftarGroup;
  @override
  List<String>? get daftarGroup {
    final value = _daftarGroup;
    if (value == null) return null;
    if (_daftarGroup is EqualUnmodifiableListView) return _daftarGroup;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? selectedFilter;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SearchDataState(statusPage: $statusPage, daftarData: $daftarData, daftarGroup: $daftarGroup, selectedFilter: $selectedFilter, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDataState &&
            const DeepCollectionEquality()
                .equals(other.statusPage, statusPage) &&
            const DeepCollectionEquality()
                .equals(other._daftarData, _daftarData) &&
            const DeepCollectionEquality()
                .equals(other._daftarGroup, _daftarGroup) &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusPage),
      const DeepCollectionEquality().hash(_daftarData),
      const DeepCollectionEquality().hash(_daftarGroup),
      selectedFilter,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchDataStateCopyWith<_$_SearchDataState> get copyWith =>
      __$$_SearchDataStateCopyWithImpl<_$_SearchDataState>(this, _$identity);
}

abstract class _SearchDataState implements SearchDataState {
  const factory _SearchDataState(
      {final dynamic statusPage,
      final List<DataGeneral>? daftarData,
      final List<String>? daftarGroup,
      final String? selectedFilter,
      final String? errorMessage}) = _$_SearchDataState;

  @override
  dynamic get statusPage;
  @override
  List<DataGeneral>? get daftarData;
  @override
  List<String>? get daftarGroup;
  @override
  String? get selectedFilter;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDataStateCopyWith<_$_SearchDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
