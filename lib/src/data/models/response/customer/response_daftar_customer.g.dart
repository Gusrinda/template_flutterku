// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_daftar_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDaftarCustomerImpl _$$ResponseDaftarCustomerImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDaftarCustomerImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataCustomer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseDaftarCustomerImplToJson(
        _$ResponseDaftarCustomerImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataCustomerImpl _$$DataCustomerImplFromJson(Map<String, dynamic> json) =>
    _$DataCustomerImpl(
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
      mCustCode: json['m_cust_code'] as String?,
      mCustName: json['m_cust_name'] as String?,
      mCustType: json['m_cust_type'],
      mCustGrupWilayahId: (json['m_cust_grup_wilayah_id'] as num?)?.toInt(),
      mCustGrupWilayah: json['m_cust_grup_wilayah'] as String?,
      mCustgrupPaydefaultId:
          (json['m_custgrup_paydefault_id'] as num?)?.toInt(),
      mCustgrupJatuhtempoId:
          (json['m_custgrup_jatuhtempo_id'] as num?)?.toInt(),
      mCustActiveFlag: json['m_cust_active_flag'] as String?,
      mCustNpwp: json['m_cust_npwp'] as String?,
      mCustNik: json['m_cust_nik'] as String?,
      mCustEmail: json['m_cust_email'] as String?,
      mCustNameAlias: json['m_cust_name_alias'] as String?,
      alamatCount: (json['alamatCount'] as num?)?.toInt(),
      mCustIdImgPath: json['m_cust_id_img_path'] as String?,
      overdueDays: (json['overdue_days'] as num?)?.toInt(),
      overtimeDays: (json['overtime_days'] as num?)?.toInt(),
      overdueAr: (json['overdue_ar'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataCustomerImplToJson(_$DataCustomerImpl instance) =>
    <String, dynamic>{
      'm_cust_id': instance.mCustId,
      'm_cust_code': instance.mCustCode,
      'm_cust_name': instance.mCustName,
      'm_cust_type': instance.mCustType,
      'm_cust_grup_wilayah_id': instance.mCustGrupWilayahId,
      'm_cust_grup_wilayah': instance.mCustGrupWilayah,
      'm_custgrup_paydefault_id': instance.mCustgrupPaydefaultId,
      'm_custgrup_jatuhtempo_id': instance.mCustgrupJatuhtempoId,
      'm_cust_active_flag': instance.mCustActiveFlag,
      'm_cust_npwp': instance.mCustNpwp,
      'm_cust_nik': instance.mCustNik,
      'm_cust_email': instance.mCustEmail,
      'm_cust_name_alias': instance.mCustNameAlias,
      'alamatCount': instance.alamatCount,
      'm_cust_id_img_path': instance.mCustIdImgPath,
      'overdue_days': instance.overdueDays,
      'overtime_days': instance.overtimeDays,
      'overdue_ar': instance.overdueAr,
    };
