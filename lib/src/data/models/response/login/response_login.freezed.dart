// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseLogin _$ResponseLoginFromJson(Map<String, dynamic> json) {
  return _ResponseLogin.fromJson(json);
}

/// @nodoc
mixin _$ResponseLogin {
  @JsonKey(name: "access_token")
  AccessToken? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "auth")
  dynamic get auth => throw _privateConstructorUsedError;
  @JsonKey(name: "token_type")
  String? get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataUserLogin? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseLoginCopyWith<ResponseLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseLoginCopyWith<$Res> {
  factory $ResponseLoginCopyWith(
          ResponseLogin value, $Res Function(ResponseLogin) then) =
      _$ResponseLoginCopyWithImpl<$Res, ResponseLogin>;
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") AccessToken? accessToken,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "auth") dynamic auth,
      @JsonKey(name: "token_type") String? tokenType,
      @JsonKey(name: "data") DataUserLogin? data});

  $AccessTokenCopyWith<$Res>? get accessToken;
  $DataUserLoginCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseLoginCopyWithImpl<$Res, $Val extends ResponseLogin>
    implements $ResponseLoginCopyWith<$Res> {
  _$ResponseLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? token = freezed,
    Object? auth = freezed,
    Object? tokenType = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as AccessToken?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataUserLogin?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccessTokenCopyWith<$Res>? get accessToken {
    if (_value.accessToken == null) {
      return null;
    }

    return $AccessTokenCopyWith<$Res>(_value.accessToken!, (value) {
      return _then(_value.copyWith(accessToken: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataUserLoginCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataUserLoginCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResponseLoginCopyWith<$Res>
    implements $ResponseLoginCopyWith<$Res> {
  factory _$$_ResponseLoginCopyWith(
          _$_ResponseLogin value, $Res Function(_$_ResponseLogin) then) =
      __$$_ResponseLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") AccessToken? accessToken,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "auth") dynamic auth,
      @JsonKey(name: "token_type") String? tokenType,
      @JsonKey(name: "data") DataUserLogin? data});

  @override
  $AccessTokenCopyWith<$Res>? get accessToken;
  @override
  $DataUserLoginCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ResponseLoginCopyWithImpl<$Res>
    extends _$ResponseLoginCopyWithImpl<$Res, _$_ResponseLogin>
    implements _$$_ResponseLoginCopyWith<$Res> {
  __$$_ResponseLoginCopyWithImpl(
      _$_ResponseLogin _value, $Res Function(_$_ResponseLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? token = freezed,
    Object? auth = freezed,
    Object? tokenType = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ResponseLogin(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as AccessToken?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataUserLogin?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseLogin implements _ResponseLogin {
  const _$_ResponseLogin(
      {@JsonKey(name: "access_token") this.accessToken,
      @JsonKey(name: "token") this.token,
      @JsonKey(name: "auth") this.auth,
      @JsonKey(name: "token_type") this.tokenType,
      @JsonKey(name: "data") this.data});

  factory _$_ResponseLogin.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseLoginFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final AccessToken? accessToken;
  @override
  @JsonKey(name: "token")
  final String? token;
  @override
  @JsonKey(name: "auth")
  final dynamic auth;
  @override
  @JsonKey(name: "token_type")
  final String? tokenType;
  @override
  @JsonKey(name: "data")
  final DataUserLogin? data;

  @override
  String toString() {
    return 'ResponseLogin(accessToken: $accessToken, token: $token, auth: $auth, tokenType: $tokenType, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseLogin &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other.auth, auth) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, token,
      const DeepCollectionEquality().hash(auth), tokenType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseLoginCopyWith<_$_ResponseLogin> get copyWith =>
      __$$_ResponseLoginCopyWithImpl<_$_ResponseLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseLoginToJson(
      this,
    );
  }
}

abstract class _ResponseLogin implements ResponseLogin {
  const factory _ResponseLogin(
      {@JsonKey(name: "access_token") final AccessToken? accessToken,
      @JsonKey(name: "token") final String? token,
      @JsonKey(name: "auth") final dynamic auth,
      @JsonKey(name: "token_type") final String? tokenType,
      @JsonKey(name: "data") final DataUserLogin? data}) = _$_ResponseLogin;

  factory _ResponseLogin.fromJson(Map<String, dynamic> json) =
      _$_ResponseLogin.fromJson;

  @override
  @JsonKey(name: "access_token")
  AccessToken? get accessToken;
  @override
  @JsonKey(name: "token")
  String? get token;
  @override
  @JsonKey(name: "auth")
  dynamic get auth;
  @override
  @JsonKey(name: "token_type")
  String? get tokenType;
  @override
  @JsonKey(name: "data")
  DataUserLogin? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseLoginCopyWith<_$_ResponseLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

AccessToken _$AccessTokenFromJson(Map<String, dynamic> json) {
  return _AccessToken.fromJson(json);
}

/// @nodoc
mixin _$AccessToken {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "client_id")
  int? get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "scopes")
  List<dynamic>? get scopes => throw _privateConstructorUsedError;
  @JsonKey(name: "revoked")
  bool? get revoked => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "expires_at")
  String? get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenCopyWith<AccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenCopyWith<$Res> {
  factory $AccessTokenCopyWith(
          AccessToken value, $Res Function(AccessToken) then) =
      _$AccessTokenCopyWithImpl<$Res, AccessToken>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "client_id") int? clientId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "scopes") List<dynamic>? scopes,
      @JsonKey(name: "revoked") bool? revoked,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "expires_at") String? expiresAt});
}

/// @nodoc
class _$AccessTokenCopyWithImpl<$Res, $Val extends AccessToken>
    implements $AccessTokenCopyWith<$Res> {
  _$AccessTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? clientId = freezed,
    Object? name = freezed,
    Object? scopes = freezed,
    Object? revoked = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      scopes: freezed == scopes
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      revoked: freezed == revoked
          ? _value.revoked
          : revoked // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccessTokenCopyWith<$Res>
    implements $AccessTokenCopyWith<$Res> {
  factory _$$_AccessTokenCopyWith(
          _$_AccessToken value, $Res Function(_$_AccessToken) then) =
      __$$_AccessTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "client_id") int? clientId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "scopes") List<dynamic>? scopes,
      @JsonKey(name: "revoked") bool? revoked,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "expires_at") String? expiresAt});
}

/// @nodoc
class __$$_AccessTokenCopyWithImpl<$Res>
    extends _$AccessTokenCopyWithImpl<$Res, _$_AccessToken>
    implements _$$_AccessTokenCopyWith<$Res> {
  __$$_AccessTokenCopyWithImpl(
      _$_AccessToken _value, $Res Function(_$_AccessToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? clientId = freezed,
    Object? name = freezed,
    Object? scopes = freezed,
    Object? revoked = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_$_AccessToken(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      scopes: freezed == scopes
          ? _value._scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      revoked: freezed == revoked
          ? _value.revoked
          : revoked // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessToken implements _AccessToken {
  const _$_AccessToken(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "client_id") this.clientId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "scopes") final List<dynamic>? scopes,
      @JsonKey(name: "revoked") this.revoked,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "expires_at") this.expiresAt})
      : _scopes = scopes;

  factory _$_AccessToken.fromJson(Map<String, dynamic> json) =>
      _$$_AccessTokenFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "client_id")
  final int? clientId;
  @override
  @JsonKey(name: "name")
  final String? name;
  final List<dynamic>? _scopes;
  @override
  @JsonKey(name: "scopes")
  List<dynamic>? get scopes {
    final value = _scopes;
    if (value == null) return null;
    if (_scopes is EqualUnmodifiableListView) return _scopes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "revoked")
  final bool? revoked;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "expires_at")
  final String? expiresAt;

  @override
  String toString() {
    return 'AccessToken(id: $id, userId: $userId, clientId: $clientId, name: $name, scopes: $scopes, revoked: $revoked, createdAt: $createdAt, updatedAt: $updatedAt, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessToken &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._scopes, _scopes) &&
            (identical(other.revoked, revoked) || other.revoked == revoked) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      clientId,
      name,
      const DeepCollectionEquality().hash(_scopes),
      revoked,
      createdAt,
      updatedAt,
      expiresAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccessTokenCopyWith<_$_AccessToken> get copyWith =>
      __$$_AccessTokenCopyWithImpl<_$_AccessToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessTokenToJson(
      this,
    );
  }
}

abstract class _AccessToken implements AccessToken {
  const factory _AccessToken(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "user_id") final int? userId,
      @JsonKey(name: "client_id") final int? clientId,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "scopes") final List<dynamic>? scopes,
      @JsonKey(name: "revoked") final bool? revoked,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "expires_at") final String? expiresAt}) = _$_AccessToken;

  factory _AccessToken.fromJson(Map<String, dynamic> json) =
      _$_AccessToken.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "client_id")
  int? get clientId;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "scopes")
  List<dynamic>? get scopes;
  @override
  @JsonKey(name: "revoked")
  bool? get revoked;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "expires_at")
  String? get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$_AccessTokenCopyWith<_$_AccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}

DataUserLogin _$DataUserLoginFromJson(Map<String, dynamic> json) {
  return _DataUserLogin.fromJson(json);
}

/// @nodoc
mixin _$DataUserLogin {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "usertype")
  String? get usertype => throw _privateConstructorUsedError;
  @JsonKey(name: "posyandu_ids")
  String? get posyanduIds => throw _privateConstructorUsedError;
  @JsonKey(name: "puskesmas_id")
  dynamic get puskesmasId => throw _privateConstructorUsedError;
  @JsonKey(name: "namalengkap")
  String? get namalengkap => throw _privateConstructorUsedError;
  @JsonKey(name: "nik")
  String? get nik => throw _privateConstructorUsedError;
  @JsonKey(name: "notelp")
  String? get notelp => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email_verified_at")
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "alamat")
  dynamic get alamat => throw _privateConstructorUsedError;
  @JsonKey(name: "alamat_user")
  String? get alamatUser => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi")
  String? get provinsi => throw _privateConstructorUsedError;
  @JsonKey(name: "kabupaten")
  dynamic get kabupaten => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan")
  String? get kecamatan => throw _privateConstructorUsedError;
  @JsonKey(name: "desa")
  dynamic get desa => throw _privateConstructorUsedError;
  @JsonKey(name: "dusun")
  dynamic get dusun => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "remember_token")
  dynamic get rememberToken => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "platform")
  bool? get platform => throw _privateConstructorUsedError;
  @JsonKey(name: "platformversion")
  bool? get platformversion => throw _privateConstructorUsedError;
  @JsonKey(name: "browser")
  bool? get browser => throw _privateConstructorUsedError;
  @JsonKey(name: "browserversion")
  bool? get browserversion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataUserLoginCopyWith<DataUserLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataUserLoginCopyWith<$Res> {
  factory $DataUserLoginCopyWith(
          DataUserLogin value, $Res Function(DataUserLogin) then) =
      _$DataUserLoginCopyWithImpl<$Res, DataUserLogin>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "usertype") String? usertype,
      @JsonKey(name: "posyandu_ids") String? posyanduIds,
      @JsonKey(name: "puskesmas_id") dynamic puskesmasId,
      @JsonKey(name: "namalengkap") String? namalengkap,
      @JsonKey(name: "nik") String? nik,
      @JsonKey(name: "notelp") String? notelp,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "email_verified_at") String? emailVerifiedAt,
      @JsonKey(name: "alamat") dynamic alamat,
      @JsonKey(name: "alamat_user") String? alamatUser,
      @JsonKey(name: "provinsi") String? provinsi,
      @JsonKey(name: "kabupaten") dynamic kabupaten,
      @JsonKey(name: "kecamatan") String? kecamatan,
      @JsonKey(name: "desa") dynamic desa,
      @JsonKey(name: "dusun") dynamic dusun,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "remember_token") dynamic rememberToken,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "platform") bool? platform,
      @JsonKey(name: "platformversion") bool? platformversion,
      @JsonKey(name: "browser") bool? browser,
      @JsonKey(name: "browserversion") bool? browserversion});
}

/// @nodoc
class _$DataUserLoginCopyWithImpl<$Res, $Val extends DataUserLogin>
    implements $DataUserLoginCopyWith<$Res> {
  _$DataUserLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? usertype = freezed,
    Object? posyanduIds = freezed,
    Object? puskesmasId = freezed,
    Object? namalengkap = freezed,
    Object? nik = freezed,
    Object? notelp = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? alamat = freezed,
    Object? alamatUser = freezed,
    Object? provinsi = freezed,
    Object? kabupaten = freezed,
    Object? kecamatan = freezed,
    Object? desa = freezed,
    Object? dusun = freezed,
    Object? status = freezed,
    Object? rememberToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? platform = freezed,
    Object? platformversion = freezed,
    Object? browser = freezed,
    Object? browserversion = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      usertype: freezed == usertype
          ? _value.usertype
          : usertype // ignore: cast_nullable_to_non_nullable
              as String?,
      posyanduIds: freezed == posyanduIds
          ? _value.posyanduIds
          : posyanduIds // ignore: cast_nullable_to_non_nullable
              as String?,
      puskesmasId: freezed == puskesmasId
          ? _value.puskesmasId
          : puskesmasId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      namalengkap: freezed == namalengkap
          ? _value.namalengkap
          : namalengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      notelp: freezed == notelp
          ? _value.notelp
          : notelp // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alamatUser: freezed == alamatUser
          ? _value.alamatUser
          : alamatUser // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsi: freezed == provinsi
          ? _value.provinsi
          : provinsi // ignore: cast_nullable_to_non_nullable
              as String?,
      kabupaten: freezed == kabupaten
          ? _value.kabupaten
          : kabupaten // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatan: freezed == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String?,
      desa: freezed == desa
          ? _value.desa
          : desa // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dusun: freezed == dusun
          ? _value.dusun
          : dusun // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberToken: freezed == rememberToken
          ? _value.rememberToken
          : rememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as bool?,
      platformversion: freezed == platformversion
          ? _value.platformversion
          : platformversion // ignore: cast_nullable_to_non_nullable
              as bool?,
      browser: freezed == browser
          ? _value.browser
          : browser // ignore: cast_nullable_to_non_nullable
              as bool?,
      browserversion: freezed == browserversion
          ? _value.browserversion
          : browserversion // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataUserLoginCopyWith<$Res>
    implements $DataUserLoginCopyWith<$Res> {
  factory _$$_DataUserLoginCopyWith(
          _$_DataUserLogin value, $Res Function(_$_DataUserLogin) then) =
      __$$_DataUserLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "usertype") String? usertype,
      @JsonKey(name: "posyandu_ids") String? posyanduIds,
      @JsonKey(name: "puskesmas_id") dynamic puskesmasId,
      @JsonKey(name: "namalengkap") String? namalengkap,
      @JsonKey(name: "nik") String? nik,
      @JsonKey(name: "notelp") String? notelp,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "email_verified_at") String? emailVerifiedAt,
      @JsonKey(name: "alamat") dynamic alamat,
      @JsonKey(name: "alamat_user") String? alamatUser,
      @JsonKey(name: "provinsi") String? provinsi,
      @JsonKey(name: "kabupaten") dynamic kabupaten,
      @JsonKey(name: "kecamatan") String? kecamatan,
      @JsonKey(name: "desa") dynamic desa,
      @JsonKey(name: "dusun") dynamic dusun,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "remember_token") dynamic rememberToken,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "platform") bool? platform,
      @JsonKey(name: "platformversion") bool? platformversion,
      @JsonKey(name: "browser") bool? browser,
      @JsonKey(name: "browserversion") bool? browserversion});
}

/// @nodoc
class __$$_DataUserLoginCopyWithImpl<$Res>
    extends _$DataUserLoginCopyWithImpl<$Res, _$_DataUserLogin>
    implements _$$_DataUserLoginCopyWith<$Res> {
  __$$_DataUserLoginCopyWithImpl(
      _$_DataUserLogin _value, $Res Function(_$_DataUserLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? usertype = freezed,
    Object? posyanduIds = freezed,
    Object? puskesmasId = freezed,
    Object? namalengkap = freezed,
    Object? nik = freezed,
    Object? notelp = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? alamat = freezed,
    Object? alamatUser = freezed,
    Object? provinsi = freezed,
    Object? kabupaten = freezed,
    Object? kecamatan = freezed,
    Object? desa = freezed,
    Object? dusun = freezed,
    Object? status = freezed,
    Object? rememberToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? platform = freezed,
    Object? platformversion = freezed,
    Object? browser = freezed,
    Object? browserversion = freezed,
  }) {
    return _then(_$_DataUserLogin(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      usertype: freezed == usertype
          ? _value.usertype
          : usertype // ignore: cast_nullable_to_non_nullable
              as String?,
      posyanduIds: freezed == posyanduIds
          ? _value.posyanduIds
          : posyanduIds // ignore: cast_nullable_to_non_nullable
              as String?,
      puskesmasId: freezed == puskesmasId
          ? _value.puskesmasId
          : puskesmasId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      namalengkap: freezed == namalengkap
          ? _value.namalengkap
          : namalengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      notelp: freezed == notelp
          ? _value.notelp
          : notelp // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alamatUser: freezed == alamatUser
          ? _value.alamatUser
          : alamatUser // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsi: freezed == provinsi
          ? _value.provinsi
          : provinsi // ignore: cast_nullable_to_non_nullable
              as String?,
      kabupaten: freezed == kabupaten
          ? _value.kabupaten
          : kabupaten // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatan: freezed == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String?,
      desa: freezed == desa
          ? _value.desa
          : desa // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dusun: freezed == dusun
          ? _value.dusun
          : dusun // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberToken: freezed == rememberToken
          ? _value.rememberToken
          : rememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as bool?,
      platformversion: freezed == platformversion
          ? _value.platformversion
          : platformversion // ignore: cast_nullable_to_non_nullable
              as bool?,
      browser: freezed == browser
          ? _value.browser
          : browser // ignore: cast_nullable_to_non_nullable
              as bool?,
      browserversion: freezed == browserversion
          ? _value.browserversion
          : browserversion // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataUserLogin implements _DataUserLogin {
  const _$_DataUserLogin(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "usertype") this.usertype,
      @JsonKey(name: "posyandu_ids") this.posyanduIds,
      @JsonKey(name: "puskesmas_id") this.puskesmasId,
      @JsonKey(name: "namalengkap") this.namalengkap,
      @JsonKey(name: "nik") this.nik,
      @JsonKey(name: "notelp") this.notelp,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "email_verified_at") this.emailVerifiedAt,
      @JsonKey(name: "alamat") this.alamat,
      @JsonKey(name: "alamat_user") this.alamatUser,
      @JsonKey(name: "provinsi") this.provinsi,
      @JsonKey(name: "kabupaten") this.kabupaten,
      @JsonKey(name: "kecamatan") this.kecamatan,
      @JsonKey(name: "desa") this.desa,
      @JsonKey(name: "dusun") this.dusun,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "remember_token") this.rememberToken,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "platform") this.platform,
      @JsonKey(name: "platformversion") this.platformversion,
      @JsonKey(name: "browser") this.browser,
      @JsonKey(name: "browserversion") this.browserversion});

  factory _$_DataUserLogin.fromJson(Map<String, dynamic> json) =>
      _$$_DataUserLoginFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "usertype")
  final String? usertype;
  @override
  @JsonKey(name: "posyandu_ids")
  final String? posyanduIds;
  @override
  @JsonKey(name: "puskesmas_id")
  final dynamic puskesmasId;
  @override
  @JsonKey(name: "namalengkap")
  final String? namalengkap;
  @override
  @JsonKey(name: "nik")
  final String? nik;
  @override
  @JsonKey(name: "notelp")
  final String? notelp;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "email_verified_at")
  final String? emailVerifiedAt;
  @override
  @JsonKey(name: "alamat")
  final dynamic alamat;
  @override
  @JsonKey(name: "alamat_user")
  final String? alamatUser;
  @override
  @JsonKey(name: "provinsi")
  final String? provinsi;
  @override
  @JsonKey(name: "kabupaten")
  final dynamic kabupaten;
  @override
  @JsonKey(name: "kecamatan")
  final String? kecamatan;
  @override
  @JsonKey(name: "desa")
  final dynamic desa;
  @override
  @JsonKey(name: "dusun")
  final dynamic dusun;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "remember_token")
  final dynamic rememberToken;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "platform")
  final bool? platform;
  @override
  @JsonKey(name: "platformversion")
  final bool? platformversion;
  @override
  @JsonKey(name: "browser")
  final bool? browser;
  @override
  @JsonKey(name: "browserversion")
  final bool? browserversion;

  @override
  String toString() {
    return 'DataUserLogin(id: $id, usertype: $usertype, posyanduIds: $posyanduIds, puskesmasId: $puskesmasId, namalengkap: $namalengkap, nik: $nik, notelp: $notelp, username: $username, email: $email, emailVerifiedAt: $emailVerifiedAt, alamat: $alamat, alamatUser: $alamatUser, provinsi: $provinsi, kabupaten: $kabupaten, kecamatan: $kecamatan, desa: $desa, dusun: $dusun, status: $status, rememberToken: $rememberToken, createdAt: $createdAt, updatedAt: $updatedAt, platform: $platform, platformversion: $platformversion, browser: $browser, browserversion: $browserversion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataUserLogin &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.usertype, usertype) ||
                other.usertype == usertype) &&
            (identical(other.posyanduIds, posyanduIds) ||
                other.posyanduIds == posyanduIds) &&
            const DeepCollectionEquality()
                .equals(other.puskesmasId, puskesmasId) &&
            (identical(other.namalengkap, namalengkap) ||
                other.namalengkap == namalengkap) &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.notelp, notelp) || other.notelp == notelp) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            const DeepCollectionEquality().equals(other.alamat, alamat) &&
            (identical(other.alamatUser, alamatUser) ||
                other.alamatUser == alamatUser) &&
            (identical(other.provinsi, provinsi) ||
                other.provinsi == provinsi) &&
            const DeepCollectionEquality().equals(other.kabupaten, kabupaten) &&
            (identical(other.kecamatan, kecamatan) ||
                other.kecamatan == kecamatan) &&
            const DeepCollectionEquality().equals(other.desa, desa) &&
            const DeepCollectionEquality().equals(other.dusun, dusun) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.rememberToken, rememberToken) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.platformversion, platformversion) ||
                other.platformversion == platformversion) &&
            (identical(other.browser, browser) || other.browser == browser) &&
            (identical(other.browserversion, browserversion) ||
                other.browserversion == browserversion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        usertype,
        posyanduIds,
        const DeepCollectionEquality().hash(puskesmasId),
        namalengkap,
        nik,
        notelp,
        username,
        email,
        emailVerifiedAt,
        const DeepCollectionEquality().hash(alamat),
        alamatUser,
        provinsi,
        const DeepCollectionEquality().hash(kabupaten),
        kecamatan,
        const DeepCollectionEquality().hash(desa),
        const DeepCollectionEquality().hash(dusun),
        status,
        const DeepCollectionEquality().hash(rememberToken),
        createdAt,
        updatedAt,
        platform,
        platformversion,
        browser,
        browserversion
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataUserLoginCopyWith<_$_DataUserLogin> get copyWith =>
      __$$_DataUserLoginCopyWithImpl<_$_DataUserLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataUserLoginToJson(
      this,
    );
  }
}

abstract class _DataUserLogin implements DataUserLogin {
  const factory _DataUserLogin(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "usertype") final String? usertype,
          @JsonKey(name: "posyandu_ids") final String? posyanduIds,
          @JsonKey(name: "puskesmas_id") final dynamic puskesmasId,
          @JsonKey(name: "namalengkap") final String? namalengkap,
          @JsonKey(name: "nik") final String? nik,
          @JsonKey(name: "notelp") final String? notelp,
          @JsonKey(name: "username") final String? username,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "email_verified_at") final String? emailVerifiedAt,
          @JsonKey(name: "alamat") final dynamic alamat,
          @JsonKey(name: "alamat_user") final String? alamatUser,
          @JsonKey(name: "provinsi") final String? provinsi,
          @JsonKey(name: "kabupaten") final dynamic kabupaten,
          @JsonKey(name: "kecamatan") final String? kecamatan,
          @JsonKey(name: "desa") final dynamic desa,
          @JsonKey(name: "dusun") final dynamic dusun,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "remember_token") final dynamic rememberToken,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt,
          @JsonKey(name: "platform") final bool? platform,
          @JsonKey(name: "platformversion") final bool? platformversion,
          @JsonKey(name: "browser") final bool? browser,
          @JsonKey(name: "browserversion") final bool? browserversion}) =
      _$_DataUserLogin;

  factory _DataUserLogin.fromJson(Map<String, dynamic> json) =
      _$_DataUserLogin.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "usertype")
  String? get usertype;
  @override
  @JsonKey(name: "posyandu_ids")
  String? get posyanduIds;
  @override
  @JsonKey(name: "puskesmas_id")
  dynamic get puskesmasId;
  @override
  @JsonKey(name: "namalengkap")
  String? get namalengkap;
  @override
  @JsonKey(name: "nik")
  String? get nik;
  @override
  @JsonKey(name: "notelp")
  String? get notelp;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "email_verified_at")
  String? get emailVerifiedAt;
  @override
  @JsonKey(name: "alamat")
  dynamic get alamat;
  @override
  @JsonKey(name: "alamat_user")
  String? get alamatUser;
  @override
  @JsonKey(name: "provinsi")
  String? get provinsi;
  @override
  @JsonKey(name: "kabupaten")
  dynamic get kabupaten;
  @override
  @JsonKey(name: "kecamatan")
  String? get kecamatan;
  @override
  @JsonKey(name: "desa")
  dynamic get desa;
  @override
  @JsonKey(name: "dusun")
  dynamic get dusun;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "remember_token")
  dynamic get rememberToken;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "platform")
  bool? get platform;
  @override
  @JsonKey(name: "platformversion")
  bool? get platformversion;
  @override
  @JsonKey(name: "browser")
  bool? get browser;
  @override
  @JsonKey(name: "browserversion")
  bool? get browserversion;
  @override
  @JsonKey(ignore: true)
  _$$_DataUserLoginCopyWith<_$_DataUserLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
