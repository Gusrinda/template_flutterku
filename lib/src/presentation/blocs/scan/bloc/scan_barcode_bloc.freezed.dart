// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_barcode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScanBarcodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) changeSearchField,
    required TResult Function() refreshBarcode,
    required TResult Function(RequestSaveChecker request) saveChecker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? changeSearchField,
    TResult? Function()? refreshBarcode,
    TResult? Function(RequestSaveChecker request)? saveChecker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? changeSearchField,
    TResult Function()? refreshBarcode,
    TResult Function(RequestSaveChecker request)? saveChecker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSearchField value) changeSearchField,
    required TResult Function(RefreshBarcode value) refreshBarcode,
    required TResult Function(SaveChecker value) saveChecker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSearchField value)? changeSearchField,
    TResult? Function(RefreshBarcode value)? refreshBarcode,
    TResult? Function(SaveChecker value)? saveChecker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSearchField value)? changeSearchField,
    TResult Function(RefreshBarcode value)? refreshBarcode,
    TResult Function(SaveChecker value)? saveChecker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanBarcodeEventCopyWith<$Res> {
  factory $ScanBarcodeEventCopyWith(
          ScanBarcodeEvent value, $Res Function(ScanBarcodeEvent) then) =
      _$ScanBarcodeEventCopyWithImpl<$Res, ScanBarcodeEvent>;
}

/// @nodoc
class _$ScanBarcodeEventCopyWithImpl<$Res, $Val extends ScanBarcodeEvent>
    implements $ScanBarcodeEventCopyWith<$Res> {
  _$ScanBarcodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeSearchFieldImplCopyWith<$Res> {
  factory _$$ChangeSearchFieldImplCopyWith(_$ChangeSearchFieldImpl value,
          $Res Function(_$ChangeSearchFieldImpl) then) =
      __$$ChangeSearchFieldImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$ChangeSearchFieldImplCopyWithImpl<$Res>
    extends _$ScanBarcodeEventCopyWithImpl<$Res, _$ChangeSearchFieldImpl>
    implements _$$ChangeSearchFieldImplCopyWith<$Res> {
  __$$ChangeSearchFieldImplCopyWithImpl(_$ChangeSearchFieldImpl _value,
      $Res Function(_$ChangeSearchFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$ChangeSearchFieldImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeSearchFieldImpl implements ChangeSearchField {
  const _$ChangeSearchFieldImpl({required this.search});

  @override
  final String search;

  @override
  String toString() {
    return 'ScanBarcodeEvent.changeSearchField(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSearchFieldImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSearchFieldImplCopyWith<_$ChangeSearchFieldImpl> get copyWith =>
      __$$ChangeSearchFieldImplCopyWithImpl<_$ChangeSearchFieldImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) changeSearchField,
    required TResult Function() refreshBarcode,
    required TResult Function(RequestSaveChecker request) saveChecker,
  }) {
    return changeSearchField(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? changeSearchField,
    TResult? Function()? refreshBarcode,
    TResult? Function(RequestSaveChecker request)? saveChecker,
  }) {
    return changeSearchField?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? changeSearchField,
    TResult Function()? refreshBarcode,
    TResult Function(RequestSaveChecker request)? saveChecker,
    required TResult orElse(),
  }) {
    if (changeSearchField != null) {
      return changeSearchField(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSearchField value) changeSearchField,
    required TResult Function(RefreshBarcode value) refreshBarcode,
    required TResult Function(SaveChecker value) saveChecker,
  }) {
    return changeSearchField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSearchField value)? changeSearchField,
    TResult? Function(RefreshBarcode value)? refreshBarcode,
    TResult? Function(SaveChecker value)? saveChecker,
  }) {
    return changeSearchField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSearchField value)? changeSearchField,
    TResult Function(RefreshBarcode value)? refreshBarcode,
    TResult Function(SaveChecker value)? saveChecker,
    required TResult orElse(),
  }) {
    if (changeSearchField != null) {
      return changeSearchField(this);
    }
    return orElse();
  }
}

abstract class ChangeSearchField implements ScanBarcodeEvent {
  const factory ChangeSearchField({required final String search}) =
      _$ChangeSearchFieldImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$ChangeSearchFieldImplCopyWith<_$ChangeSearchFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshBarcodeImplCopyWith<$Res> {
  factory _$$RefreshBarcodeImplCopyWith(_$RefreshBarcodeImpl value,
          $Res Function(_$RefreshBarcodeImpl) then) =
      __$$RefreshBarcodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshBarcodeImplCopyWithImpl<$Res>
    extends _$ScanBarcodeEventCopyWithImpl<$Res, _$RefreshBarcodeImpl>
    implements _$$RefreshBarcodeImplCopyWith<$Res> {
  __$$RefreshBarcodeImplCopyWithImpl(
      _$RefreshBarcodeImpl _value, $Res Function(_$RefreshBarcodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshBarcodeImpl implements RefreshBarcode {
  const _$RefreshBarcodeImpl();

  @override
  String toString() {
    return 'ScanBarcodeEvent.refreshBarcode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshBarcodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) changeSearchField,
    required TResult Function() refreshBarcode,
    required TResult Function(RequestSaveChecker request) saveChecker,
  }) {
    return refreshBarcode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? changeSearchField,
    TResult? Function()? refreshBarcode,
    TResult? Function(RequestSaveChecker request)? saveChecker,
  }) {
    return refreshBarcode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? changeSearchField,
    TResult Function()? refreshBarcode,
    TResult Function(RequestSaveChecker request)? saveChecker,
    required TResult orElse(),
  }) {
    if (refreshBarcode != null) {
      return refreshBarcode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSearchField value) changeSearchField,
    required TResult Function(RefreshBarcode value) refreshBarcode,
    required TResult Function(SaveChecker value) saveChecker,
  }) {
    return refreshBarcode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSearchField value)? changeSearchField,
    TResult? Function(RefreshBarcode value)? refreshBarcode,
    TResult? Function(SaveChecker value)? saveChecker,
  }) {
    return refreshBarcode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSearchField value)? changeSearchField,
    TResult Function(RefreshBarcode value)? refreshBarcode,
    TResult Function(SaveChecker value)? saveChecker,
    required TResult orElse(),
  }) {
    if (refreshBarcode != null) {
      return refreshBarcode(this);
    }
    return orElse();
  }
}

abstract class RefreshBarcode implements ScanBarcodeEvent {
  const factory RefreshBarcode() = _$RefreshBarcodeImpl;
}

/// @nodoc
abstract class _$$SaveCheckerImplCopyWith<$Res> {
  factory _$$SaveCheckerImplCopyWith(
          _$SaveCheckerImpl value, $Res Function(_$SaveCheckerImpl) then) =
      __$$SaveCheckerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestSaveChecker request});

  $RequestSaveCheckerCopyWith<$Res> get request;
}

/// @nodoc
class __$$SaveCheckerImplCopyWithImpl<$Res>
    extends _$ScanBarcodeEventCopyWithImpl<$Res, _$SaveCheckerImpl>
    implements _$$SaveCheckerImplCopyWith<$Res> {
  __$$SaveCheckerImplCopyWithImpl(
      _$SaveCheckerImpl _value, $Res Function(_$SaveCheckerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$SaveCheckerImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestSaveChecker,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestSaveCheckerCopyWith<$Res> get request {
    return $RequestSaveCheckerCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$SaveCheckerImpl implements SaveChecker {
  const _$SaveCheckerImpl({required this.request});

  @override
  final RequestSaveChecker request;

  @override
  String toString() {
    return 'ScanBarcodeEvent.saveChecker(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCheckerImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCheckerImplCopyWith<_$SaveCheckerImpl> get copyWith =>
      __$$SaveCheckerImplCopyWithImpl<_$SaveCheckerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) changeSearchField,
    required TResult Function() refreshBarcode,
    required TResult Function(RequestSaveChecker request) saveChecker,
  }) {
    return saveChecker(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? changeSearchField,
    TResult? Function()? refreshBarcode,
    TResult? Function(RequestSaveChecker request)? saveChecker,
  }) {
    return saveChecker?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? changeSearchField,
    TResult Function()? refreshBarcode,
    TResult Function(RequestSaveChecker request)? saveChecker,
    required TResult orElse(),
  }) {
    if (saveChecker != null) {
      return saveChecker(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSearchField value) changeSearchField,
    required TResult Function(RefreshBarcode value) refreshBarcode,
    required TResult Function(SaveChecker value) saveChecker,
  }) {
    return saveChecker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSearchField value)? changeSearchField,
    TResult? Function(RefreshBarcode value)? refreshBarcode,
    TResult? Function(SaveChecker value)? saveChecker,
  }) {
    return saveChecker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSearchField value)? changeSearchField,
    TResult Function(RefreshBarcode value)? refreshBarcode,
    TResult Function(SaveChecker value)? saveChecker,
    required TResult orElse(),
  }) {
    if (saveChecker != null) {
      return saveChecker(this);
    }
    return orElse();
  }
}

abstract class SaveChecker implements ScanBarcodeEvent {
  const factory SaveChecker({required final RequestSaveChecker request}) =
      _$SaveCheckerImpl;

  RequestSaveChecker get request;
  @JsonKey(ignore: true)
  _$$SaveCheckerImplCopyWith<_$SaveCheckerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScanBarcodeState {
  FormzStatus get statusForm => throw _privateConstructorUsedError;
  LoadingPageStatus get statusSearch => throw _privateConstructorUsedError;
  ResponseCheckerSo? get responseCheckerSO =>
      throw _privateConstructorUsedError;
  ResponseCheckerDetail? get resopnseCheckerDetail =>
      throw _privateConstructorUsedError; // List<Datum>? daftarKunjungan,
// required FormTextInput searchField,
  String? get barcodeString => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanBarcodeStateCopyWith<ScanBarcodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanBarcodeStateCopyWith<$Res> {
  factory $ScanBarcodeStateCopyWith(
          ScanBarcodeState value, $Res Function(ScanBarcodeState) then) =
      _$ScanBarcodeStateCopyWithImpl<$Res, ScanBarcodeState>;
  @useResult
  $Res call(
      {FormzStatus statusForm,
      LoadingPageStatus statusSearch,
      ResponseCheckerSo? responseCheckerSO,
      ResponseCheckerDetail? resopnseCheckerDetail,
      String? barcodeString,
      String? error});

  $ResponseCheckerSoCopyWith<$Res>? get responseCheckerSO;
  $ResponseCheckerDetailCopyWith<$Res>? get resopnseCheckerDetail;
}

/// @nodoc
class _$ScanBarcodeStateCopyWithImpl<$Res, $Val extends ScanBarcodeState>
    implements $ScanBarcodeStateCopyWith<$Res> {
  _$ScanBarcodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusForm = null,
    Object? statusSearch = null,
    Object? responseCheckerSO = freezed,
    Object? resopnseCheckerDetail = freezed,
    Object? barcodeString = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      statusForm: null == statusForm
          ? _value.statusForm
          : statusForm // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      statusSearch: null == statusSearch
          ? _value.statusSearch
          : statusSearch // ignore: cast_nullable_to_non_nullable
              as LoadingPageStatus,
      responseCheckerSO: freezed == responseCheckerSO
          ? _value.responseCheckerSO
          : responseCheckerSO // ignore: cast_nullable_to_non_nullable
              as ResponseCheckerSo?,
      resopnseCheckerDetail: freezed == resopnseCheckerDetail
          ? _value.resopnseCheckerDetail
          : resopnseCheckerDetail // ignore: cast_nullable_to_non_nullable
              as ResponseCheckerDetail?,
      barcodeString: freezed == barcodeString
          ? _value.barcodeString
          : barcodeString // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseCheckerSoCopyWith<$Res>? get responseCheckerSO {
    if (_value.responseCheckerSO == null) {
      return null;
    }

    return $ResponseCheckerSoCopyWith<$Res>(_value.responseCheckerSO!, (value) {
      return _then(_value.copyWith(responseCheckerSO: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseCheckerDetailCopyWith<$Res>? get resopnseCheckerDetail {
    if (_value.resopnseCheckerDetail == null) {
      return null;
    }

    return $ResponseCheckerDetailCopyWith<$Res>(_value.resopnseCheckerDetail!,
        (value) {
      return _then(_value.copyWith(resopnseCheckerDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScanBarcodeStateImplCopyWith<$Res>
    implements $ScanBarcodeStateCopyWith<$Res> {
  factory _$$ScanBarcodeStateImplCopyWith(_$ScanBarcodeStateImpl value,
          $Res Function(_$ScanBarcodeStateImpl) then) =
      __$$ScanBarcodeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus statusForm,
      LoadingPageStatus statusSearch,
      ResponseCheckerSo? responseCheckerSO,
      ResponseCheckerDetail? resopnseCheckerDetail,
      String? barcodeString,
      String? error});

  @override
  $ResponseCheckerSoCopyWith<$Res>? get responseCheckerSO;
  @override
  $ResponseCheckerDetailCopyWith<$Res>? get resopnseCheckerDetail;
}

/// @nodoc
class __$$ScanBarcodeStateImplCopyWithImpl<$Res>
    extends _$ScanBarcodeStateCopyWithImpl<$Res, _$ScanBarcodeStateImpl>
    implements _$$ScanBarcodeStateImplCopyWith<$Res> {
  __$$ScanBarcodeStateImplCopyWithImpl(_$ScanBarcodeStateImpl _value,
      $Res Function(_$ScanBarcodeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusForm = null,
    Object? statusSearch = null,
    Object? responseCheckerSO = freezed,
    Object? resopnseCheckerDetail = freezed,
    Object? barcodeString = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ScanBarcodeStateImpl(
      statusForm: null == statusForm
          ? _value.statusForm
          : statusForm // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      statusSearch: null == statusSearch
          ? _value.statusSearch
          : statusSearch // ignore: cast_nullable_to_non_nullable
              as LoadingPageStatus,
      responseCheckerSO: freezed == responseCheckerSO
          ? _value.responseCheckerSO
          : responseCheckerSO // ignore: cast_nullable_to_non_nullable
              as ResponseCheckerSo?,
      resopnseCheckerDetail: freezed == resopnseCheckerDetail
          ? _value.resopnseCheckerDetail
          : resopnseCheckerDetail // ignore: cast_nullable_to_non_nullable
              as ResponseCheckerDetail?,
      barcodeString: freezed == barcodeString
          ? _value.barcodeString
          : barcodeString // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ScanBarcodeStateImpl implements _ScanBarcodeState {
  const _$ScanBarcodeStateImpl(
      {this.statusForm = FormzStatus.pure,
      this.statusSearch = LoadingPageStatus.initial,
      this.responseCheckerSO,
      this.resopnseCheckerDetail,
      this.barcodeString,
      this.error});

  @override
  @JsonKey()
  final FormzStatus statusForm;
  @override
  @JsonKey()
  final LoadingPageStatus statusSearch;
  @override
  final ResponseCheckerSo? responseCheckerSO;
  @override
  final ResponseCheckerDetail? resopnseCheckerDetail;
// List<Datum>? daftarKunjungan,
// required FormTextInput searchField,
  @override
  final String? barcodeString;
  @override
  final String? error;

  @override
  String toString() {
    return 'ScanBarcodeState(statusForm: $statusForm, statusSearch: $statusSearch, responseCheckerSO: $responseCheckerSO, resopnseCheckerDetail: $resopnseCheckerDetail, barcodeString: $barcodeString, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanBarcodeStateImpl &&
            (identical(other.statusForm, statusForm) ||
                other.statusForm == statusForm) &&
            (identical(other.statusSearch, statusSearch) ||
                other.statusSearch == statusSearch) &&
            (identical(other.responseCheckerSO, responseCheckerSO) ||
                other.responseCheckerSO == responseCheckerSO) &&
            (identical(other.resopnseCheckerDetail, resopnseCheckerDetail) ||
                other.resopnseCheckerDetail == resopnseCheckerDetail) &&
            (identical(other.barcodeString, barcodeString) ||
                other.barcodeString == barcodeString) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusForm, statusSearch,
      responseCheckerSO, resopnseCheckerDetail, barcodeString, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanBarcodeStateImplCopyWith<_$ScanBarcodeStateImpl> get copyWith =>
      __$$ScanBarcodeStateImplCopyWithImpl<_$ScanBarcodeStateImpl>(
          this, _$identity);
}

abstract class _ScanBarcodeState implements ScanBarcodeState {
  const factory _ScanBarcodeState(
      {final FormzStatus statusForm,
      final LoadingPageStatus statusSearch,
      final ResponseCheckerSo? responseCheckerSO,
      final ResponseCheckerDetail? resopnseCheckerDetail,
      final String? barcodeString,
      final String? error}) = _$ScanBarcodeStateImpl;

  @override
  FormzStatus get statusForm;
  @override
  LoadingPageStatus get statusSearch;
  @override
  ResponseCheckerSo? get responseCheckerSO;
  @override
  ResponseCheckerDetail? get resopnseCheckerDetail;
  @override // List<Datum>? daftarKunjungan,
// required FormTextInput searchField,
  String? get barcodeString;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ScanBarcodeStateImplCopyWith<_$ScanBarcodeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
