// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublicResponse _$$_PublicResponseFromJson(Map<String, dynamic> json) =>
    _$_PublicResponse(
      message: json['message'] as String?,
      success: json['success'] as List<dynamic>?,
      errors: json['errors'] as List<dynamic>?,
      id: json['id'],
      processedTime: (json['processed_time'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PublicResponseToJson(_$_PublicResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
      'errors': instance.errors,
      'id': instance.id,
      'processed_time': instance.processedTime,
    };
