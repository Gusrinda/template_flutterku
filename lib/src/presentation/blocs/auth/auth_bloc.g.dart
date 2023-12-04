// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticationState _$$_AuthenticationStateFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticationState(
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

Map<String, dynamic> _$$_AuthenticationStateToJson(
        _$_AuthenticationState instance) =>
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
