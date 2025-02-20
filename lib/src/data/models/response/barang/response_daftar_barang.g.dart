// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_daftar_barang.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDaftarBarangImpl _$$ResponseDaftarBarangImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDaftarBarangImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataBarang.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseDaftarBarangImplToJson(
        _$ResponseDaftarBarangImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataBarangImpl _$$DataBarangImplFromJson(Map<String, dynamic> json) =>
    _$DataBarangImpl(
      tSoDId: (json['t_so_d_id'] as num?)?.toInt(),
      tSoDSeq: (json['t_so_d_seq'] as num?)?.toInt(),
      mItemId: (json['m_item_id'] as num?)?.toInt(),
      mItemJenis: json['m_item_jenis'] as String?,
      mItemLongdesc: json['m_item_longdesc'] as String?,
      mItemCode: json['m_item_code'] as String?,
      qtyStock: (json['qty_stock'] as num?)?.toDouble(),
      tSoDQty: (json['t_so_d_qty'] as num?)?.toInt(),
      tSoDUnitId: (json['t_so_d_unit_id'] as num?)?.toInt(),
      tSoDUnit: json['t_so_d_unit'] as String?,
      tSoDPrice: (json['t_so_d_price'] as num?)?.toDouble(),
      tSoDAmt: (json['t_so_d_amt'] as num?)?.toInt(),
      tSoDBykirim: (json['t_so_d_bykirim'] as num?)?.toInt(),
      tSoDNote: json['t_so_d_note'] as String?,
      tsoDBerat: (json['t_so_d_berat'] as num?)?.toInt(),
      mItemKonversi: (json['m_item_konversi'] as num?)?.toDouble(),
      mItemSket: json['m_item_sket'] as String?,
      mItemWarna: json['m_item_warna'] as String?,
      jtFlag: json['jt_flag'] as String?,
      mItemJtoKhususId: (json['m_item_jto_khusus_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataBarangImplToJson(_$DataBarangImpl instance) =>
    <String, dynamic>{
      't_so_d_id': instance.tSoDId,
      't_so_d_seq': instance.tSoDSeq,
      'm_item_id': instance.mItemId,
      'm_item_jenis': instance.mItemJenis,
      'm_item_longdesc': instance.mItemLongdesc,
      'm_item_code': instance.mItemCode,
      'qty_stock': instance.qtyStock,
      't_so_d_qty': instance.tSoDQty,
      't_so_d_unit_id': instance.tSoDUnitId,
      't_so_d_unit': instance.tSoDUnit,
      't_so_d_price': instance.tSoDPrice,
      't_so_d_amt': instance.tSoDAmt,
      't_so_d_bykirim': instance.tSoDBykirim,
      't_so_d_note': instance.tSoDNote,
      't_so_d_berat': instance.tsoDBerat,
      'm_item_konversi': instance.mItemKonversi,
      'm_item_sket': instance.mItemSket,
      'm_item_warna': instance.mItemWarna,
      'jt_flag': instance.jtFlag,
      'm_item_jto_khusus_id': instance.mItemJtoKhususId,
    };
