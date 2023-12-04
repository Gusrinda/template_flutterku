import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_login.freezed.dart';
part 'response_login.g.dart';

@freezed
class ResponseLogin with _$ResponseLogin {
  const factory ResponseLogin({
    @JsonKey(name: "access_token") AccessToken? accessToken,
    @JsonKey(name: "token") String? token,
    @JsonKey(name: "auth") dynamic auth,
    @JsonKey(name: "token_type") String? tokenType,
    @JsonKey(name: "data") DataUserLogin? data,
  }) = _ResponseLogin;

  factory ResponseLogin.fromJson(Map<String, dynamic> json) =>
      _$ResponseLoginFromJson(json);
}

@freezed
class AccessToken with _$AccessToken {
  const factory AccessToken({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "client_id") int? clientId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "scopes") List<dynamic>? scopes,
    @JsonKey(name: "revoked") bool? revoked,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "expires_at") String? expiresAt,
  }) = _AccessToken;

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);
}

@freezed
class DataUserLogin with _$DataUserLogin {
  const factory DataUserLogin({
    @JsonKey(name: "id") int? id,
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
    @JsonKey(name: "browserversion") bool? browserversion,
  }) = _DataUserLogin;

  factory DataUserLogin.fromJson(Map<String, dynamic> json) =>
      _$DataUserLoginFromJson(json);
}
