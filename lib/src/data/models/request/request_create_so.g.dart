// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_create_so.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestCreateSoImpl _$$RequestCreateSoImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCreateSoImpl(
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
      tstatus: json['t_so_h_status'] as String?,
      tSoD: (json['t_so_d'] as List<dynamic>?)
          ?.map((e) => TSoD.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestCreateSoImplToJson(
        _$RequestCreateSoImpl instance) =>
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
      't_so_h_status': instance.tstatus,
      't_so_d': instance.tSoD,
    };

_$TSoDImpl _$$TSoDImplFromJson(Map<String, dynamic> json) => _$TSoDImpl(
      dataBarang: json['dataBarang'] == null
          ? null
          : DataBarang.fromJson(json['dataBarang'] as Map<String, dynamic>),
      tSoDId: (json['t_so_d_id'] as num?)?.toInt(),
      mItemId: (json['m_item_id'] as num?)?.toInt(),
      mItemJenis: json['m_item_jenis'] as String?,
      mItemLongdesc: json['m_item_longdesc'] as String?,
      mItemCode: json['m_item_code'] as String?,
      qtyStock: (json['qty_stock'] as num?)?.toInt(),
      tSoDQty: (json['t_so_d_qty'] as num?)?.toInt(),
      tSoDUnitId: (json['t_so_d_unit_id'] as num?)?.toInt(),
      tSoDUnit: json['t_so_d_unit'] as String?,
      tSoDPrice: (json['t_so_d_price'] as num?)?.toInt(),
      tSoDAmt: (json['t_so_d_amt'] as num?)?.toInt(),
      tSoDBykirim: (json['t_so_d_bykirim'] as num?)?.toInt(),
      tsoDBerat: (json['t_so_d_berat'] as num?)?.toInt(),
      tSoDNote: json['t_so_d_note'] as String?,
      mItemKonversi: (json['m_item_konversi'] as num?)?.toInt(),
      jtFlag: json['jt_flag'] as String?,
      mItemJtoKhususId: (json['m_item_jto_khusus_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TSoDImplToJson(_$TSoDImpl instance) =>
    <String, dynamic>{
      'dataBarang': instance.dataBarang,
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
      't_so_d_berat': instance.tsoDBerat,
      't_so_d_note': instance.tSoDNote,
      'm_item_konversi': instance.mItemKonversi,
      'jt_flag': instance.jtFlag,
      'm_item_jto_khusus_id': instance.mItemJtoKhususId,
    };

_$EditingDataSOImpl _$$EditingDataSOImplFromJson(Map<String, dynamic> json) =>
    _$EditingDataSOImpl(
      selectedWilayah: json['selectedWilayah'] == null
          ? null
          : DataWilayah.fromJson(
              json['selectedWilayah'] as Map<String, dynamic>),
      daftarCustomer: (json['daftarCustomer'] as List<dynamic>?)
          ?.map((e) => DataCustomer.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedCustomer: json['selectedCustomer'] == null
          ? null
          : DataCustomer.fromJson(
              json['selectedCustomer'] as Map<String, dynamic>),
      tanggalCreateSO: json['tanggalCreateSO'] == null
          ? null
          : DateTime.parse(json['tanggalCreateSO'] as String),
      selectedPPN: json['selectedPPN'] == null
          ? null
          : DataPPN.fromJson(json['selectedPPN'] as Map<String, dynamic>),
      selectedPPH1: json['selectedPPH1'] == null
          ? null
          : DataPPH.fromJson(json['selectedPPH1'] as Map<String, dynamic>),
      selectedPPH2: json['selectedPPH2'] == null
          ? null
          : DataPPH.fromJson(json['selectedPPH2'] as Map<String, dynamic>),
      selectedTipeDiskon: json['selectedTipeDiskon'] as String?,
      requestCreateSo: json['requestCreateSo'] == null
          ? null
          : RequestCreateSo.fromJson(
              json['requestCreateSo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditingDataSOImplToJson(_$EditingDataSOImpl instance) =>
    <String, dynamic>{
      'selectedWilayah': instance.selectedWilayah,
      'daftarCustomer': instance.daftarCustomer,
      'selectedCustomer': instance.selectedCustomer,
      'tanggalCreateSO': instance.tanggalCreateSO?.toIso8601String(),
      'selectedPPN': instance.selectedPPN,
      'selectedPPH1': instance.selectedPPH1,
      'selectedPPH2': instance.selectedPPH2,
      'selectedTipeDiskon': instance.selectedTipeDiskon,
      'requestCreateSo': instance.requestCreateSo,
    };
