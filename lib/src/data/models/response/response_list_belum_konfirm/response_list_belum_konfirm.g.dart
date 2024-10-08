// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_belum_konfirm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseListBelumKonfirmImpl _$$ResponseListBelumKonfirmImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseListBelumKonfirmImpl(
      msg: json['msg'] as String?,
      dataBelumKonfirm: (json['tbl'] as List<dynamic>?)
          ?.map((e) => DataBelumKonfirm.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseListBelumKonfirmImplToJson(
        _$ResponseListBelumKonfirmImpl instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'tbl': instance.dataBelumKonfirm,
    };

_$DataBelumKonfirmImpl _$$DataBelumKonfirmImplFromJson(
        Map<String, dynamic> json) =>
    _$DataBelumKonfirmImpl(
      tDoHId: (json['t_do_h_id'] as num?)?.toInt(),
      tDoNo: json['t_do_no'] as String?,
      tDoDate: json['t_do_date'] as String?,
      tDpHId: (json['t_dp_h_id'] as num?)?.toInt(),
      mCustName: json['m_cust_name'] as String?,
      mCustShiptoAddr: json['m_cust_shipto_addr'] as String?,
      mUserId: (json['m_user_id'] as num?)?.toInt(),
      mUserName: json['m_user_name'] as String?,
    );

Map<String, dynamic> _$$DataBelumKonfirmImplToJson(
        _$DataBelumKonfirmImpl instance) =>
    <String, dynamic>{
      't_do_h_id': instance.tDoHId,
      't_do_no': instance.tDoNo,
      't_do_date': instance.tDoDate,
      't_dp_h_id': instance.tDpHId,
      'm_cust_name': instance.mCustName,
      'm_cust_shipto_addr': instance.mCustShiptoAddr,
      'm_user_id': instance.mUserId,
      'm_user_name': instance.mUserName,
    };

_$ListSelectDOImpl _$$ListSelectDOImplFromJson(Map<String, dynamic> json) =>
    _$ListSelectDOImpl(
      isSelected: json['isSelected'] as bool? ?? false,
      dataBelumKonfirm: json['dataBelumKonfirm'] == null
          ? null
          : DataBelumKonfirm.fromJson(
              json['dataBelumKonfirm'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListSelectDOImplToJson(_$ListSelectDOImpl instance) =>
    <String, dynamic>{
      'isSelected': instance.isSelected,
      'dataBelumKonfirm': instance.dataBelumKonfirm,
    };
