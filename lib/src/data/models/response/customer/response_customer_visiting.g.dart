// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_customer_visiting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCustomerVisitingImpl _$$ResponseCustomerVisitingImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCustomerVisitingImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataCustomerVisiting.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseCustomerVisitingImplToJson(
        _$ResponseCustomerVisitingImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataCustomerVisitingImpl _$$DataCustomerVisitingImplFromJson(
        Map<String, dynamic> json) =>
    _$DataCustomerVisitingImpl(
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
      mCustCode: json['m_cust_code'] as String?,
      mCustName: json['m_cust_name'] as String?,
      mCustNameAlias: json['m_cust_name_alias'] as String?,
      mCustGrupWilayahId: (json['m_cust_grup_wilayah_id'] as num?)?.toInt(),
      mCustGrupWilayah: json['m_cust_grup_wilayah'] as String?,
      mCustDAddrId: (json['m_cust_d_addr_id'] as num?)?.toInt(),
      mCustDAddrName: json['m_cust_d_addr_name'] as String?,
      mCustDAddrAddress: json['m_cust_d_addr_address'] as String?,
      jumlahPiutang: (json['jumlah_piutang'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DataCustomerVisitingImplToJson(
        _$DataCustomerVisitingImpl instance) =>
    <String, dynamic>{
      'm_cust_id': instance.mCustId,
      'm_cust_code': instance.mCustCode,
      'm_cust_name': instance.mCustName,
      'm_cust_name_alias': instance.mCustNameAlias,
      'm_cust_grup_wilayah_id': instance.mCustGrupWilayahId,
      'm_cust_grup_wilayah': instance.mCustGrupWilayah,
      'm_cust_d_addr_id': instance.mCustDAddrId,
      'm_cust_d_addr_name': instance.mCustDAddrName,
      'm_cust_d_addr_address': instance.mCustDAddrAddress,
      'jumlah_piutang': instance.jumlahPiutang,
    };
