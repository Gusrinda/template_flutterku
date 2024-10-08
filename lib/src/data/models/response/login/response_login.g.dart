// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseLoginImpl _$$ResponseLoginImplFromJson(Map<String, dynamic> json) =>
    _$ResponseLoginImpl(
      msgServer: (json['msgServer'] as List<dynamic>?)
          ?.map((e) => DataUserLogin.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseLoginImplToJson(_$ResponseLoginImpl instance) =>
    <String, dynamic>{
      'msgServer': instance.msgServer,
    };

_$DataUserLoginImpl _$$DataUserLoginImplFromJson(Map<String, dynamic> json) =>
    _$DataUserLoginImpl(
      userid: json['USERID'] as String?,
      idSales: (json['idSales'] as num?)?.toInt(),
      name: json['name'] as String?,
      profpass: json['profpass'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      activeflag: json['activeflag'] as String?,
    );

Map<String, dynamic> _$$DataUserLoginImplToJson(_$DataUserLoginImpl instance) =>
    <String, dynamic>{
      'USERID': instance.userid,
      'idSales': instance.idSales,
      'name': instance.name,
      'profpass': instance.profpass,
      'email': instance.email,
      'address': instance.address,
      'activeflag': instance.activeflag,
    };
