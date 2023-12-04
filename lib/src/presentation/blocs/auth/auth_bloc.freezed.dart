// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationState _$AuthenticationStateFromJson(Map<String, dynamic> json) {
  return _AuthenticationState.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationStatus get status => throw _privateConstructorUsedError;
  PageReady get statusPage => throw _privateConstructorUsedError;
  DataUserLogin? get loginUser => throw _privateConstructorUsedError;
  String? get tokenUser => throw _privateConstructorUsedError;
  String? get userModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {AuthenticationStatus status,
      PageReady statusPage,
      DataUserLogin? loginUser,
      String? tokenUser,
      String? userModel});

  $DataUserLoginCopyWith<$Res>? get loginUser;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusPage = null,
    Object? loginUser = freezed,
    Object? tokenUser = freezed,
    Object? userModel = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      statusPage: null == statusPage
          ? _value.statusPage
          : statusPage // ignore: cast_nullable_to_non_nullable
              as PageReady,
      loginUser: freezed == loginUser
          ? _value.loginUser
          : loginUser // ignore: cast_nullable_to_non_nullable
              as DataUserLogin?,
      tokenUser: freezed == tokenUser
          ? _value.tokenUser
          : tokenUser // ignore: cast_nullable_to_non_nullable
              as String?,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataUserLoginCopyWith<$Res>? get loginUser {
    if (_value.loginUser == null) {
      return null;
    }

    return $DataUserLoginCopyWith<$Res>(_value.loginUser!, (value) {
      return _then(_value.copyWith(loginUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticationStateCopyWith(_$_AuthenticationState value,
          $Res Function(_$_AuthenticationState) then) =
      __$$_AuthenticationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthenticationStatus status,
      PageReady statusPage,
      DataUserLogin? loginUser,
      String? tokenUser,
      String? userModel});

  @override
  $DataUserLoginCopyWith<$Res>? get loginUser;
}

/// @nodoc
class __$$_AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_AuthenticationState>
    implements _$$_AuthenticationStateCopyWith<$Res> {
  __$$_AuthenticationStateCopyWithImpl(_$_AuthenticationState _value,
      $Res Function(_$_AuthenticationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusPage = null,
    Object? loginUser = freezed,
    Object? tokenUser = freezed,
    Object? userModel = freezed,
  }) {
    return _then(_$_AuthenticationState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      statusPage: null == statusPage
          ? _value.statusPage
          : statusPage // ignore: cast_nullable_to_non_nullable
              as PageReady,
      loginUser: freezed == loginUser
          ? _value.loginUser
          : loginUser // ignore: cast_nullable_to_non_nullable
              as DataUserLogin?,
      tokenUser: freezed == tokenUser
          ? _value.tokenUser
          : tokenUser // ignore: cast_nullable_to_non_nullable
              as String?,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState(
      {this.status = AuthenticationStatus.unknown,
      this.statusPage = PageReady.notReady,
      this.loginUser,
      this.tokenUser,
      this.userModel});

  factory _$_AuthenticationState.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticationStateFromJson(json);

  @override
  @JsonKey()
  final AuthenticationStatus status;
  @override
  @JsonKey()
  final PageReady statusPage;
  @override
  final DataUserLogin? loginUser;
  @override
  final String? tokenUser;
  @override
  final String? userModel;

  @override
  String toString() {
    return 'AuthenticationState(status: $status, statusPage: $statusPage, loginUser: $loginUser, tokenUser: $tokenUser, userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusPage, statusPage) ||
                other.statusPage == statusPage) &&
            (identical(other.loginUser, loginUser) ||
                other.loginUser == loginUser) &&
            (identical(other.tokenUser, tokenUser) ||
                other.tokenUser == tokenUser) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, statusPage, loginUser, tokenUser, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      __$$_AuthenticationStateCopyWithImpl<_$_AuthenticationState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationStateToJson(
      this,
    );
  }
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {final AuthenticationStatus status,
      final PageReady statusPage,
      final DataUserLogin? loginUser,
      final String? tokenUser,
      final String? userModel}) = _$_AuthenticationState;

  factory _AuthenticationState.fromJson(Map<String, dynamic> json) =
      _$_AuthenticationState.fromJson;

  @override
  AuthenticationStatus get status;
  @override
  PageReady get statusPage;
  @override
  DataUserLogin? get loginUser;
  @override
  String? get tokenUser;
  @override
  String? get userModel;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
