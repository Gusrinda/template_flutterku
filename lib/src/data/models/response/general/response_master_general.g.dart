// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_master_general.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseMasterGeneral _$$_ResponseMasterGeneralFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseMasterGeneral(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataGeneral.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      currentPage: json['current_page'] as int?,
      perPage: json['per_page'] as int?,
      from: json['from'] as int?,
      to: json['to'] as int?,
      lastPage: json['last_page'] as int?,
      hasNext: json['has_next'] as bool?,
      prev: json['prev'],
      next: json['next'],
      processedTime: (json['processed_time'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ResponseMasterGeneralToJson(
        _$_ResponseMasterGeneral instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'from': instance.from,
      'to': instance.to,
      'last_page': instance.lastPage,
      'has_next': instance.hasNext,
      'prev': instance.prev,
      'next': instance.next,
      'processed_time': instance.processedTime,
    };

_$_DataGeneral _$$_DataGeneralFromJson(Map<String, dynamic> json) =>
    _$_DataGeneral(
      metaRead: json['meta_read'] as bool?,
      metaDelete: json['meta_delete'] as bool?,
      metaUpdate: json['meta_update'] as bool?,
      metaCreate: json['meta_create'] as bool?,
      id: json['id'] as int?,
      group: json['group'] as String?,
      key: json['key'] as String?,
      kode: json['kode'] as String?,
      value: json['value'] as String?,
      value2: json['value_2'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_DataGeneralToJson(_$_DataGeneral instance) =>
    <String, dynamic>{
      'meta_read': instance.metaRead,
      'meta_delete': instance.metaDelete,
      'meta_update': instance.metaUpdate,
      'meta_create': instance.metaCreate,
      'id': instance.id,
      'group': instance.group,
      'key': instance.key,
      'kode': instance.kode,
      'value': instance.value,
      'value_2': instance.value2,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
