// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationStateImpl _$$AuthenticationStateImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationStateImpl(
      status:
          $enumDecodeNullable(_$AuthenticationStatusEnumMap, json['status']) ??
              AuthenticationStatus.unknown,
      statusPage: $enumDecodeNullable(_$PageReadyEnumMap, json['statusPage']) ??
          PageReady.notReady,
      loginUser: json['loginUser'] == null
          ? null
          : DataUserLogin.fromJson(json['loginUser'] as Map<String, dynamic>),
      tokenUser: json['tokenUser'] as String?,
      userModel: json['userModel'] as String?,
    );

Map<String, dynamic> _$$AuthenticationStateImplToJson(
        _$AuthenticationStateImpl instance) =>
    <String, dynamic>{
      'status': _$AuthenticationStatusEnumMap[instance.status]!,
      'statusPage': _$PageReadyEnumMap[instance.statusPage]!,
      'loginUser': instance.loginUser,
      'tokenUser': instance.tokenUser,
      'userModel': instance.userModel,
    };

const _$AuthenticationStatusEnumMap = {
  AuthenticationStatus.unknown: 'unknown',
  AuthenticationStatus.authenticated: 'authenticated',
  AuthenticationStatus.unauthenticated: 'unauthenticated',
  AuthenticationStatus.me: 'me',
  AuthenticationStatus.verification: 'verification',
};

const _$PageReadyEnumMap = {
  PageReady.notReady: 'notReady',
  PageReady.ready: 'ready',
};
