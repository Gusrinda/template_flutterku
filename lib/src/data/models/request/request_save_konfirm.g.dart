// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_save_konfirm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestSaveKonfirm _$$_RequestSaveKonfirmFromJson(
        Map<String, dynamic> json) =>
    _$_RequestSaveKonfirm(
      mUserId: json['m_user_id'] as int?,
      mUserName: json['m_user_name'] as String?,
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => Detail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RequestSaveKonfirmToJson(
        _$_RequestSaveKonfirm instance) =>
    <String, dynamic>{
      'm_user_id': instance.mUserId,
      'm_user_name': instance.mUserName,
      'detail': instance.detail,
    };

_$_Detail _$$_DetailFromJson(Map<String, dynamic> json) => _$_Detail(
      tDoHId: json['t_do_h_id'] as int?,
      tDpHId: json['t_dp_h_id'] as int?,
    );

Map<String, dynamic> _$$_DetailToJson(_$_Detail instance) => <String, dynamic>{
      't_do_h_id': instance.tDoHId,
      't_dp_h_id': instance.tDpHId,
    };
