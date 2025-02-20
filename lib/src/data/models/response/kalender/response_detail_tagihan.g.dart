// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_detail_tagihan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDetailTagihanImpl _$$ResponseDetailTagihanImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDetailTagihanImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseDetailTagihanImplToJson(
        _$ResponseDetailTagihanImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      checkIn: json['check_in'] == null
          ? null
          : Check.fromJson(json['check_in'] as Map<String, dynamic>),
      checkOut: json['check_out'] == null
          ? null
          : Check.fromJson(json['check_out'] as Map<String, dynamic>),
      tCollectPaymentImageBase64:
          json['t_collect_payment_image_base64'] as String?,
      tCollectId: (json['t_collect_id'] as num?)?.toInt(),
      tCollectDate: json['t_collect_date'] as String?,
      tCollectNo: json['t_collect_no'] as String?,
      tSalesActivityId: (json['t_sales_activity_id'] as num?)?.toInt(),
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
      tCollectArAmt: (json['t_collect_ar_amt'] as num?)?.toInt(),
      tCollectPaymentAmt: (json['t_collect_payment_amt'] as num?)?.toInt(),
      tCollectPaymentType: json['t_collect_payment_type'] as String?,
      tCollectPaymentImage: json['t_collect_payment_image'] as String?,
      tCollectNote: json['t_collect_note'] as String?,
      createdBy: json['created_by'] as String?,
      createdAt: json['created_at'] as String?,
      lastEditedBy: json['last_edited_by'] as String?,
      lastEditedAt: json['last_edited_at'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'check_in': instance.checkIn,
      'check_out': instance.checkOut,
      't_collect_payment_image_base64': instance.tCollectPaymentImageBase64,
      't_collect_id': instance.tCollectId,
      't_collect_date': instance.tCollectDate,
      't_collect_no': instance.tCollectNo,
      't_sales_activity_id': instance.tSalesActivityId,
      'm_cust_id': instance.mCustId,
      't_collect_ar_amt': instance.tCollectArAmt,
      't_collect_payment_amt': instance.tCollectPaymentAmt,
      't_collect_payment_type': instance.tCollectPaymentType,
      't_collect_payment_image': instance.tCollectPaymentImage,
      't_collect_note': instance.tCollectNote,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt,
      'last_edited_by': instance.lastEditedBy,
      'last_edited_at': instance.lastEditedAt,
    };

_$CheckImpl _$$CheckImplFromJson(Map<String, dynamic> json) => _$CheckImpl(
      rActivityImageBase64: json['r_activity_image_base64'] as String?,
      rActivityId: (json['r_activity_id'] as num?)?.toInt(),
      rActivityType: json['r_activity_type'] as String?,
      refId: (json['ref_id'] as num?)?.toInt(),
      refActivityId: (json['ref_activity_id'] as num?)?.toInt(),
      mEmployeeId: (json['m_employee_id'] as num?)?.toInt(),
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
      mCustDAddrId: (json['m_cust_d_addr_id'] as num?)?.toInt(),
      geoLatitude: json['geo_latitude'] as String?,
      geoLongitude: json['geo_longitude'] as String?,
      rActivityNote: json['r_activity_note'] as String?,
      createdBy: json['created_by'] as String?,
      createdAt: json['created_at'] as String?,
      rActivityImagePath: json['r_activity_image_path'] as String?,
      rActivityFlag: json['r_activity_flag'] as String?,
    );

Map<String, dynamic> _$$CheckImplToJson(_$CheckImpl instance) =>
    <String, dynamic>{
      'r_activity_image_base64': instance.rActivityImageBase64,
      'r_activity_id': instance.rActivityId,
      'r_activity_type': instance.rActivityType,
      'ref_id': instance.refId,
      'ref_activity_id': instance.refActivityId,
      'm_employee_id': instance.mEmployeeId,
      'm_cust_id': instance.mCustId,
      'm_cust_d_addr_id': instance.mCustDAddrId,
      'geo_latitude': instance.geoLatitude,
      'geo_longitude': instance.geoLongitude,
      'r_activity_note': instance.rActivityNote,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt,
      'r_activity_image_path': instance.rActivityImagePath,
      'r_activity_flag': instance.rActivityFlag,
    };
