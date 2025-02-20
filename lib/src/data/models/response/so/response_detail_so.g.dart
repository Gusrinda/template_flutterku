// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_detail_so.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDetailSoImpl _$$ResponseDetailSoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDetailSoImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: json['data'] == null
          ? null
          : DataDetailSO.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseDetailSoImplToJson(
        _$ResponseDetailSoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataDetailSOImpl _$$DataDetailSOImplFromJson(Map<String, dynamic> json) =>
    _$DataDetailSOImpl(
      tSoHId: (json['t_so_h_id'] as num?)?.toInt(),
      tSoHGrupWilayahId: (json['t_so_h_grup_wilayah_id'] as num?)?.toInt(),
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
      tSoHCustNamacetak: json['t_so_h_cust_namacetak'] as String?,
      tSoHCustPoNo: json['t_so_h_cust_po_no'] as String?,
      tSoHCustPoDate: json['t_so_h_cust_po_date'] as String?,
      tSoHTotalamt: (json['t_so_h_totalamt'] as num?)?.toDouble(),
      tSoHTipeBykirim: json['t_so_h_tipe_bykirim'] as String?,
      tSoHTotalBykirim: (json['t_so_h_total_bykirim'] as num?)?.toDouble(),
      tSoHDisctype: json['t_so_h_disctype'] as String?,
      tSoHDiscpct: (json['t_so_h_discpct'] as num?)?.toDouble(),
      tSoHDiscamt: (json['t_so_h_discamt'] as num?)?.toDouble(),
      tSoHTotaldpp: (json['t_so_h_totaldpp'] as num?)?.toDouble(),
      tSoHTaxtype: json['t_so_h_taxtype'] as String?,
      tSoHTaxpct: (json['t_so_h_taxpct'] as num?)?.toDouble(),
      tSoHTaxamt: (json['t_so_h_taxamt'] as num?)?.toDouble(),
      tSoHPph1Id: (json['t_so_h_pph1_id'] as num?)?.toInt(),
      tSoHPph1Pct: (json['t_so_h_pph1_pct'] as num?)?.toDouble(),
      tSoHPph1Amt: (json['t_so_h_pph1_amt'] as num?)?.toDouble(),
      tSoHPph2Id: (json['t_so_h_pph2_id'] as num?)?.toInt(),
      tSoHPph2Pct: (json['t_so_h_pph2_pct'] as num?)?.toDouble(),
      tSoHPph2Amt: (json['t_so_h_pph2_amt'] as num?)?.toDouble(),
      tSoHTotalnetto: (json['t_so_h_totalnetto'] as num?)?.toDouble(),
      tSoHNote: json['t_so_h_note'] as String?,
      tSoHStatus: json['t_so_h_status'] as String?,
      tSoD: (json['t_so_d'] as List<dynamic>?)
          ?.map((e) => BarangDetailSO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataDetailSOImplToJson(_$DataDetailSOImpl instance) =>
    <String, dynamic>{
      't_so_h_id': instance.tSoHId,
      't_so_h_grup_wilayah_id': instance.tSoHGrupWilayahId,
      'm_cust_id': instance.mCustId,
      't_so_h_cust_namacetak': instance.tSoHCustNamacetak,
      't_so_h_cust_po_no': instance.tSoHCustPoNo,
      't_so_h_cust_po_date': instance.tSoHCustPoDate,
      't_so_h_totalamt': instance.tSoHTotalamt,
      't_so_h_tipe_bykirim': instance.tSoHTipeBykirim,
      't_so_h_total_bykirim': instance.tSoHTotalBykirim,
      't_so_h_disctype': instance.tSoHDisctype,
      't_so_h_discpct': instance.tSoHDiscpct,
      't_so_h_discamt': instance.tSoHDiscamt,
      't_so_h_totaldpp': instance.tSoHTotaldpp,
      't_so_h_taxtype': instance.tSoHTaxtype,
      't_so_h_taxpct': instance.tSoHTaxpct,
      't_so_h_taxamt': instance.tSoHTaxamt,
      't_so_h_pph1_id': instance.tSoHPph1Id,
      't_so_h_pph1_pct': instance.tSoHPph1Pct,
      't_so_h_pph1_amt': instance.tSoHPph1Amt,
      't_so_h_pph2_id': instance.tSoHPph2Id,
      't_so_h_pph2_pct': instance.tSoHPph2Pct,
      't_so_h_pph2_amt': instance.tSoHPph2Amt,
      't_so_h_totalnetto': instance.tSoHTotalnetto,
      't_so_h_note': instance.tSoHNote,
      't_so_h_status': instance.tSoHStatus,
      't_so_d': instance.tSoD,
    };

_$BarangDetailSOImpl _$$BarangDetailSOImplFromJson(Map<String, dynamic> json) =>
    _$BarangDetailSOImpl(
      tSoDId: (json['t_so_d_id'] as num?)?.toInt(),
      mItemId: (json['m_item_id'] as num?)?.toInt(),
      mItemJenis: json['m_item_jenis'] as String?,
      mItemLongdesc: json['m_item_longdesc'] as String?,
      mItemCode: json['m_item_code'] as String?,
      qtyStock: (json['qty_stock'] as num?)?.toInt(),
      tSoDQty: (json['t_so_d_qty'] as num?)?.toInt(),
      tSoDUnitId: (json['t_so_d_unit_id'] as num?)?.toInt(),
      tSoDUnit: json['t_so_d_unit'] as String?,
      tSoDPrice: (json['t_so_d_price'] as num?)?.toDouble(),
      tSoDAmt: (json['t_so_d_amt'] as num?)?.toDouble(),
      tSoDBykirim: (json['t_so_d_bykirim'] as num?)?.toInt(),
      tSoDNote: json['t_so_d_note'] as String?,
      mItemKonversi: (json['m_item_konversi'] as num?)?.toDouble(),
      mItemSket: json['m_item_sket'],
      mItemWarna: json['m_item_warna'],
      jtFlag: json['jt_flag'] as String?,
      mItemJtoKhususId: (json['m_item_jto_khusus_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BarangDetailSOImplToJson(
        _$BarangDetailSOImpl instance) =>
    <String, dynamic>{
      't_so_d_id': instance.tSoDId,
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
      'm_item_konversi': instance.mItemKonversi,
      'm_item_sket': instance.mItemSket,
      'm_item_warna': instance.mItemWarna,
      'jt_flag': instance.jtFlag,
      'm_item_jto_khusus_id': instance.mItemJtoKhususId,
    };
