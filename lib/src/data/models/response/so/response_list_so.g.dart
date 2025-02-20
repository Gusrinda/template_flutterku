// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_so.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseListSoImpl _$$ResponseListSoImplFromJson(Map<String, dynamic> json) =>
    _$ResponseListSoImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataListSO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseListSoImplToJson(
        _$ResponseListSoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataListSOImpl _$$DataListSOImplFromJson(Map<String, dynamic> json) =>
    _$DataListSOImpl(
      tSoHEtdDate: json['t_so_h_etd_date'] as String?,
      tSoHId: (json['t_so_h_id'] as num?)?.toInt(),
      tSoHNo: json['t_so_h_no'] as String?,
      tSoHDate: json['t_so_h_date'] as String?,
      mCustName: json['m_cust_name'] as String?,
      tSoHCustPoNo: json['t_so_h_cust_po_no'] as String?,
      tSoHCustPoDate: json['t_so_h_cust_po_date'] as String?,
      tSoHTotalnetto: (json['t_so_h_totalnetto'] as num?)?.toInt(),
      tSoHStatus: json['t_so_h_status'] as String?,
      createdAt: json['created_at'] as String?,
      approvedBy: json['approved_by'] as String?,
      tSoHNote: json['t_so_h_note'] as String?,
      tPraSoHNo: json['t_pra_so_h_no'] as String?,
      mCustGrupWilayahDay: (json['m_cust_grup_wilayah_day'] as num?)?.toInt(),
      startedAt: json['started_at'],
      extendedAt: json['extended_at'],
      extendedFlag: json['extended_flag'] as String?,
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataListSOImplToJson(_$DataListSOImpl instance) =>
    <String, dynamic>{
      't_so_h_etd_date': instance.tSoHEtdDate,
      't_so_h_id': instance.tSoHId,
      't_so_h_no': instance.tSoHNo,
      't_so_h_date': instance.tSoHDate,
      'm_cust_name': instance.mCustName,
      't_so_h_cust_po_no': instance.tSoHCustPoNo,
      't_so_h_cust_po_date': instance.tSoHCustPoDate,
      't_so_h_totalnetto': instance.tSoHTotalnetto,
      't_so_h_status': instance.tSoHStatus,
      'created_at': instance.createdAt,
      'approved_by': instance.approvedBy,
      't_so_h_note': instance.tSoHNote,
      't_pra_so_h_no': instance.tPraSoHNo,
      'm_cust_grup_wilayah_day': instance.mCustGrupWilayahDay,
      'started_at': instance.startedAt,
      'extended_at': instance.extendedAt,
      'extended_flag': instance.extendedFlag,
      'm_cust_id': instance.mCustId,
    };
