// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseLogin _$$_ResponseLoginFromJson(Map<String, dynamic> json) =>
    _$_ResponseLogin(
      accessToken: json['access_token'] == null
          ? null
          : AccessToken.fromJson(json['access_token'] as Map<String, dynamic>),
      token: json['token'] as String?,
      auth: json['auth'],
      tokenType: json['token_type'] as String?,
      data: json['data'] == null
          ? null
          : DataUserLogin.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResponseLoginToJson(_$_ResponseLogin instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token': instance.token,
      'auth': instance.auth,
      'token_type': instance.tokenType,
      'data': instance.data,
    };

_$_AccessToken _$$_AccessTokenFromJson(Map<String, dynamic> json) =>
    _$_AccessToken(
      id: json['id'] as String?,
      userId: json['user_id'] as int?,
      clientId: json['client_id'] as int?,
      name: json['name'] as String?,
      scopes: json['scopes'] as List<dynamic>?,
      revoked: json['revoked'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      expiresAt: json['expires_at'] as String?,
    );

Map<String, dynamic> _$$_AccessTokenToJson(_$_AccessToken instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'client_id': instance.clientId,
      'name': instance.name,
      'scopes': instance.scopes,
      'revoked': instance.revoked,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'expires_at': instance.expiresAt,
    };

_$_DataUserLogin _$$_DataUserLoginFromJson(Map<String, dynamic> json) =>
    _$_DataUserLogin(
      id: json['id'] as int?,
      usertype: json['usertype'] as String?,
      posyanduIds: json['posyandu_ids'] as String?,
      puskesmasId: json['puskesmas_id'],
      namalengkap: json['namalengkap'] as String?,
      nik: json['nik'] as String?,
      notelp: json['notelp'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'] as String?,
      alamat: json['alamat'],
      alamatUser: json['alamat_user'] as String?,
      provinsi: json['provinsi'] as String?,
      kabupaten: json['kabupaten'],
      kecamatan: json['kecamatan'] as String?,
      desa: json['desa'],
      dusun: json['dusun'],
      status: json['status'] as String?,
      rememberToken: json['remember_token'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      platform: json['platform'] as bool?,
      platformversion: json['platformversion'] as bool?,
      browser: json['browser'] as bool?,
      browserversion: json['browserversion'] as bool?,
    );

Map<String, dynamic> _$$_DataUserLoginToJson(_$_DataUserLogin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'usertype': instance.usertype,
      'posyandu_ids': instance.posyanduIds,
      'puskesmas_id': instance.puskesmasId,
      'namalengkap': instance.namalengkap,
      'nik': instance.nik,
      'notelp': instance.notelp,
      'username': instance.username,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'alamat': instance.alamat,
      'alamat_user': instance.alamatUser,
      'provinsi': instance.provinsi,
      'kabupaten': instance.kabupaten,
      'kecamatan': instance.kecamatan,
      'desa': instance.desa,
      'dusun': instance.dusun,
      'status': instance.status,
      'remember_token': instance.rememberToken,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'platform': instance.platform,
      'platformversion': instance.platformversion,
      'browser': instance.browser,
      'browserversion': instance.browserversion,
    };
