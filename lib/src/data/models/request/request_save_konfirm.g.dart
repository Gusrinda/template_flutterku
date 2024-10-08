// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_save_konfirm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestSaveKonfirmImpl _$$RequestSaveKonfirmImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestSaveKonfirmImpl(
      mUserId: (json['m_user_id'] as num?)?.toInt(),
      mUserName: json['m_user_name'] as String?,
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => Detail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestSaveKonfirmImplToJson(
        _$RequestSaveKonfirmImpl instance) =>
    <String, dynamic>{
      'm_user_id': instance.mUserId,
      'm_user_name': instance.mUserName,
      'detail': instance.detail,
    };

_$DetailImpl _$$DetailImplFromJson(Map<String, dynamic> json) => _$DetailImpl(
      tDoHId: (json['t_do_h_id'] as num?)?.toInt(),
      tDpHId: (json['t_dp_h_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DetailImplToJson(_$DetailImpl instance) =>
    <String, dynamic>{
      't_do_h_id': instance.tDoHId,
      't_dp_h_id': instance.tDpHId,
    };
