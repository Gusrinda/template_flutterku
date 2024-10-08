// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_save_konfirm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestSaveKonfirm _$RequestSaveKonfirmFromJson(Map<String, dynamic> json) {
  return _RequestSaveKonfirm.fromJson(json);
}

/// @nodoc
mixin _$RequestSaveKonfirm {
  @JsonKey(name: "m_user_id")
  int? get mUserId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_user_name")
  String? get mUserName => throw _privateConstructorUsedError;
  @JsonKey(name: "detail")
  List<Detail>? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestSaveKonfirmCopyWith<RequestSaveKonfirm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestSaveKonfirmCopyWith<$Res> {
  factory $RequestSaveKonfirmCopyWith(
          RequestSaveKonfirm value, $Res Function(RequestSaveKonfirm) then) =
      _$RequestSaveKonfirmCopyWithImpl<$Res, RequestSaveKonfirm>;
  @useResult
  $Res call(
      {@JsonKey(name: "m_user_id") int? mUserId,
      @JsonKey(name: "m_user_name") String? mUserName,
      @JsonKey(name: "detail") List<Detail>? detail});
}

/// @nodoc
class _$RequestSaveKonfirmCopyWithImpl<$Res, $Val extends RequestSaveKonfirm>
    implements $RequestSaveKonfirmCopyWith<$Res> {
  _$RequestSaveKonfirmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mUserId = freezed,
    Object? mUserName = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      mUserId: freezed == mUserId
          ? _value.mUserId
          : mUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      mUserName: freezed == mUserName
          ? _value.mUserName
          : mUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<Detail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestSaveKonfirmImplCopyWith<$Res>
    implements $RequestSaveKonfirmCopyWith<$Res> {
  factory _$$RequestSaveKonfirmImplCopyWith(_$RequestSaveKonfirmImpl value,
          $Res Function(_$RequestSaveKonfirmImpl) then) =
      __$$RequestSaveKonfirmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "m_user_id") int? mUserId,
      @JsonKey(name: "m_user_name") String? mUserName,
      @JsonKey(name: "detail") List<Detail>? detail});
}

/// @nodoc
class __$$RequestSaveKonfirmImplCopyWithImpl<$Res>
    extends _$RequestSaveKonfirmCopyWithImpl<$Res, _$RequestSaveKonfirmImpl>
    implements _$$RequestSaveKonfirmImplCopyWith<$Res> {
  __$$RequestSaveKonfirmImplCopyWithImpl(_$RequestSaveKonfirmImpl _value,
      $Res Function(_$RequestSaveKonfirmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mUserId = freezed,
    Object? mUserName = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$RequestSaveKonfirmImpl(
      mUserId: freezed == mUserId
          ? _value.mUserId
          : mUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      mUserName: freezed == mUserName
          ? _value.mUserName
          : mUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<Detail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestSaveKonfirmImpl implements _RequestSaveKonfirm {
  const _$RequestSaveKonfirmImpl(
      {@JsonKey(name: "m_user_id") this.mUserId,
      @JsonKey(name: "m_user_name") this.mUserName,
      @JsonKey(name: "detail") final List<Detail>? detail})
      : _detail = detail;

  factory _$RequestSaveKonfirmImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestSaveKonfirmImplFromJson(json);

  @override
  @JsonKey(name: "m_user_id")
  final int? mUserId;
  @override
  @JsonKey(name: "m_user_name")
  final String? mUserName;
  final List<Detail>? _detail;
  @override
  @JsonKey(name: "detail")
  List<Detail>? get detail {
    final value = _detail;
    if (value == null) return null;
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestSaveKonfirm(mUserId: $mUserId, mUserName: $mUserName, detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestSaveKonfirmImpl &&
            (identical(other.mUserId, mUserId) || other.mUserId == mUserId) &&
            (identical(other.mUserName, mUserName) ||
                other.mUserName == mUserName) &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mUserId, mUserName,
      const DeepCollectionEquality().hash(_detail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestSaveKonfirmImplCopyWith<_$RequestSaveKonfirmImpl> get copyWith =>
      __$$RequestSaveKonfirmImplCopyWithImpl<_$RequestSaveKonfirmImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestSaveKonfirmImplToJson(
      this,
    );
  }
}

abstract class _RequestSaveKonfirm implements RequestSaveKonfirm {
  const factory _RequestSaveKonfirm(
          {@JsonKey(name: "m_user_id") final int? mUserId,
          @JsonKey(name: "m_user_name") final String? mUserName,
          @JsonKey(name: "detail") final List<Detail>? detail}) =
      _$RequestSaveKonfirmImpl;

  factory _RequestSaveKonfirm.fromJson(Map<String, dynamic> json) =
      _$RequestSaveKonfirmImpl.fromJson;

  @override
  @JsonKey(name: "m_user_id")
  int? get mUserId;
  @override
  @JsonKey(name: "m_user_name")
  String? get mUserName;
  @override
  @JsonKey(name: "detail")
  List<Detail>? get detail;
  @override
  @JsonKey(ignore: true)
  _$$RequestSaveKonfirmImplCopyWith<_$RequestSaveKonfirmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return _Detail.fromJson(json);
}

/// @nodoc
mixin _$Detail {
  @JsonKey(name: "t_do_h_id")
  int? get tDoHId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_dp_h_id")
  int? get tDpHId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailCopyWith<Detail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCopyWith<$Res> {
  factory $DetailCopyWith(Detail value, $Res Function(Detail) then) =
      _$DetailCopyWithImpl<$Res, Detail>;
  @useResult
  $Res call(
      {@JsonKey(name: "t_do_h_id") int? tDoHId,
      @JsonKey(name: "t_dp_h_id") int? tDpHId});
}

/// @nodoc
class _$DetailCopyWithImpl<$Res, $Val extends Detail>
    implements $DetailCopyWith<$Res> {
  _$DetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tDoHId = freezed,
    Object? tDpHId = freezed,
  }) {
    return _then(_value.copyWith(
      tDoHId: freezed == tDoHId
          ? _value.tDoHId
          : tDoHId // ignore: cast_nullable_to_non_nullable
              as int?,
      tDpHId: freezed == tDpHId
          ? _value.tDpHId
          : tDpHId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailImplCopyWith<$Res> implements $DetailCopyWith<$Res> {
  factory _$$DetailImplCopyWith(
          _$DetailImpl value, $Res Function(_$DetailImpl) then) =
      __$$DetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "t_do_h_id") int? tDoHId,
      @JsonKey(name: "t_dp_h_id") int? tDpHId});
}

/// @nodoc
class __$$DetailImplCopyWithImpl<$Res>
    extends _$DetailCopyWithImpl<$Res, _$DetailImpl>
    implements _$$DetailImplCopyWith<$Res> {
  __$$DetailImplCopyWithImpl(
      _$DetailImpl _value, $Res Function(_$DetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tDoHId = freezed,
    Object? tDpHId = freezed,
  }) {
    return _then(_$DetailImpl(
      tDoHId: freezed == tDoHId
          ? _value.tDoHId
          : tDoHId // ignore: cast_nullable_to_non_nullable
              as int?,
      tDpHId: freezed == tDpHId
          ? _value.tDpHId
          : tDpHId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailImpl implements _Detail {
  const _$DetailImpl(
      {@JsonKey(name: "t_do_h_id") this.tDoHId,
      @JsonKey(name: "t_dp_h_id") this.tDpHId});

  factory _$DetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailImplFromJson(json);

  @override
  @JsonKey(name: "t_do_h_id")
  final int? tDoHId;
  @override
  @JsonKey(name: "t_dp_h_id")
  final int? tDpHId;

  @override
  String toString() {
    return 'Detail(tDoHId: $tDoHId, tDpHId: $tDpHId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailImpl &&
            (identical(other.tDoHId, tDoHId) || other.tDoHId == tDoHId) &&
            (identical(other.tDpHId, tDpHId) || other.tDpHId == tDpHId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tDoHId, tDpHId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      __$$DetailImplCopyWithImpl<_$DetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailImplToJson(
      this,
    );
  }
}

abstract class _Detail implements Detail {
  const factory _Detail(
      {@JsonKey(name: "t_do_h_id") final int? tDoHId,
      @JsonKey(name: "t_dp_h_id") final int? tDpHId}) = _$DetailImpl;

  factory _Detail.fromJson(Map<String, dynamic> json) = _$DetailImpl.fromJson;

  @override
  @JsonKey(name: "t_do_h_id")
  int? get tDoHId;
  @override
  @JsonKey(name: "t_dp_h_id")
  int? get tDpHId;
  @override
  @JsonKey(ignore: true)
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
