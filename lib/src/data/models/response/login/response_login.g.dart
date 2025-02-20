// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseLoginImpl _$$ResponseLoginImplFromJson(Map<String, dynamic> json) =>
    _$ResponseLoginImpl(
      success: json['success'] as bool?,
      message: json['message'],
      data: json['data'] == null
          ? null
          : DataUserLogin.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseLoginImplToJson(_$ResponseLoginImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataUserLoginImpl _$$DataUserLoginImplFromJson(Map<String, dynamic> json) =>
    _$DataUserLoginImpl(
      userName: json['user_name'] as String?,
      userType: json['user_type'] as String?,
      employeeId: (json['employee_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      token: json['token'] as String?,
      expires: json['expires'] as String?,
    );

Map<String, dynamic> _$$DataUserLoginImplToJson(_$DataUserLoginImpl instance) =>
    <String, dynamic>{
      'user_name': instance.userName,
      'user_type': instance.userType,
      'employee_id': instance.employeeId,
      'user_id': instance.userId,
      'token': instance.token,
      'expires': instance.expires,
    };
