// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_master_general.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseMasterGeneralImpl _$$ResponseMasterGeneralImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseMasterGeneralImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataGeneral.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      hasNext: json['has_next'] as bool?,
      prev: json['prev'],
      next: json['next'],
      processedTime: (json['processed_time'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ResponseMasterGeneralImplToJson(
        _$ResponseMasterGeneralImpl instance) =>
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

_$DataGeneralImpl _$$DataGeneralImplFromJson(Map<String, dynamic> json) =>
    _$DataGeneralImpl(
      metaRead: json['meta_read'] as bool?,
      metaDelete: json['meta_delete'] as bool?,
      metaUpdate: json['meta_update'] as bool?,
      metaCreate: json['meta_create'] as bool?,
      id: (json['id'] as num?)?.toInt(),
      group: json['group'] as String?,
      key: json['key'] as String?,
      kode: json['kode'] as String?,
      value: json['value'] as String?,
      value2: json['value_2'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$DataGeneralImplToJson(_$DataGeneralImpl instance) =>
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
