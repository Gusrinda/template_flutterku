// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_belum_konfirm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseListBelumKonfirm _$$_ResponseListBelumKonfirmFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseListBelumKonfirm(
      msg: json['msg'] as String?,
      dataBelumKonfirm: (json['tbl'] as List<dynamic>?)
          ?.map((e) => DataBelumKonfirm.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseListBelumKonfirmToJson(
        _$_ResponseListBelumKonfirm instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'tbl': instance.dataBelumKonfirm,
    };

_$_DataBelumKonfirm _$$_DataBelumKonfirmFromJson(Map<String, dynamic> json) =>
    _$_DataBelumKonfirm(
      tDoHId: json['t_do_h_id'] as int?,
      tDoNo: json['t_do_no'] as String?,
      tDoDate: json['t_do_date'] as String?,
      tDpHId: json['t_dp_h_id'] as int?,
      mCustName: json['m_cust_name'] as String?,
      mCustShiptoAddr: json['m_cust_shipto_addr'] as String?,
      mUserId: json['m_user_id'] as int?,
      mUserName: json['m_user_name'] as String?,
    );

Map<String, dynamic> _$$_DataBelumKonfirmToJson(_$_DataBelumKonfirm instance) =>
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

_$_ListSelectDO _$$_ListSelectDOFromJson(Map<String, dynamic> json) =>
    _$_ListSelectDO(
      isSelected: json['isSelected'] as bool? ?? false,
      dataBelumKonfirm: json['dataBelumKonfirm'] == null
          ? null
          : DataBelumKonfirm.fromJson(
              json['dataBelumKonfirm'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ListSelectDOToJson(_$_ListSelectDO instance) =>
    <String, dynamic>{
      'isSelected': instance.isSelected,
      'dataBelumKonfirm': instance.dataBelumKonfirm,
    };
