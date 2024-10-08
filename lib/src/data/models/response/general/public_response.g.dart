// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublicResponseImpl _$$PublicResponseImplFromJson(Map<String, dynamic> json) =>
    _$PublicResponseImpl(
      message: json['message'] as String?,
      success: json['success'] as List<dynamic>?,
      errors: json['errors'] as List<dynamic>?,
      id: json['id'],
      processedTime: (json['processed_time'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PublicResponseImplToJson(
        _$PublicResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
      'errors': instance.errors,
      'id': instance.id,
      'processed_time': instance.processedTime,
    };
