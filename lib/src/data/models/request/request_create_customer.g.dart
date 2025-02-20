// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_create_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestCreateCustomerImpl _$$RequestCreateCustomerImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCreateCustomerImpl(
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
      mCustType: json['m_cust_type'] as String?,
      mCustPrefixId: (json['m_cust_prefix_id'] as num?)?.toInt(),
      mCustName: json['m_cust_name'] as String?,
      mCustNameAlias: json['m_cust_name_alias'] as String?,
      mCustGrupWilayahId: (json['m_cust_grup_wilayah_id'] as num?)?.toInt(),
      mCustWilayahPenagihanId:
          (json['m_cust_wilayah_penagihan_id'] as num?)?.toInt(),
      mCustNpwp: json['m_cust_npwp'] as String?,
      mCustNik: json['m_cust_nik'] as String?,
      mCustKarakter: json['m_cust_karakter'] as String?,
      mCustNote: json['m_cust_note'] as String?,
      mCustCreditLimit: (json['m_cust_credit_limit'] as num?)?.toInt(),
      mCustJatuhtempo1Id: (json['m_cust_jatuhtempo1_id'] as num?)?.toInt(),
      mCustJatuhtempo2Id: (json['m_cust_jatuhtempo2_id'] as num?)?.toInt(),
      mCustPhone1: json['m_cust_phone1'] as String?,
      mCustPhone2: json['m_cust_phone2'] as String?,
      mCustMobile1: json['m_cust_mobile1'] as String?,
      mCustMobile2: json['m_cust_mobile2'] as String?,
      mCustFax: json['m_cust_fax'] as String?,
      mCustEmail: json['m_cust_email'] as String?,
      mCustWebsite: json['m_cust_website'] as String?,
      mCustImgBase64: json['m_cust_img_base64'] as String?,
      mCustStatus: json['m_cust_status'] as String?,
      latitude: json['m_cust_geo_latitude'] as String?,
      longitude: json['m_cust_geo_longitude'] as String?,
      mCustDTagihan: (json['m_cust_d_tagihan'] as List<dynamic>?)
          ?.map((e) => MCustDTagihan.fromJson(e as Map<String, dynamic>))
          .toList(),
      mCustDAddress: (json['m_cust_d_address'] as List<dynamic>?)
          ?.map((e) => MCustDAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      mCustDBank: (json['m_cust_d_bank'] as List<dynamic>?)
          ?.map((e) => MCustDBank.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestCreateCustomerImplToJson(
        _$RequestCreateCustomerImpl instance) =>
    <String, dynamic>{
      'm_cust_id': instance.mCustId,
      'm_cust_type': instance.mCustType,
      'm_cust_prefix_id': instance.mCustPrefixId,
      'm_cust_name': instance.mCustName,
      'm_cust_name_alias': instance.mCustNameAlias,
      'm_cust_grup_wilayah_id': instance.mCustGrupWilayahId,
      'm_cust_wilayah_penagihan_id': instance.mCustWilayahPenagihanId,
      'm_cust_npwp': instance.mCustNpwp,
      'm_cust_nik': instance.mCustNik,
      'm_cust_karakter': instance.mCustKarakter,
      'm_cust_note': instance.mCustNote,
      'm_cust_credit_limit': instance.mCustCreditLimit,
      'm_cust_jatuhtempo1_id': instance.mCustJatuhtempo1Id,
      'm_cust_jatuhtempo2_id': instance.mCustJatuhtempo2Id,
      'm_cust_phone1': instance.mCustPhone1,
      'm_cust_phone2': instance.mCustPhone2,
      'm_cust_mobile1': instance.mCustMobile1,
      'm_cust_mobile2': instance.mCustMobile2,
      'm_cust_fax': instance.mCustFax,
      'm_cust_email': instance.mCustEmail,
      'm_cust_website': instance.mCustWebsite,
      'm_cust_img_base64': instance.mCustImgBase64,
      'm_cust_status': instance.mCustStatus,
      'm_cust_geo_latitude': instance.latitude,
      'm_cust_geo_longitude': instance.longitude,
      'm_cust_d_tagihan': instance.mCustDTagihan,
      'm_cust_d_address': instance.mCustDAddress,
      'm_cust_d_bank': instance.mCustDBank,
    };

_$MCustDAddressImpl _$$MCustDAddressImplFromJson(Map<String, dynamic> json) =>
    _$MCustDAddressImpl(
      mCustDAddrName: json['m_cust_d_addr_name'] as String?,
      mCustDAddrCountryId: (json['m_cust_d_addr_country_id'] as num?)?.toInt(),
      mCustDAddrProvinceId:
          (json['m_cust_d_addr_province_id'] as num?)?.toInt(),
      mCustDAddrCityId: (json['m_cust_d_addr_city_id'] as num?)?.toInt(),
      mCustDAddrCountry: json['m_cust_d_addr_country'] as String?,
      mCustDAddrProvince: json['m_cust_d_addr_province'] as String?,
      mCustDAddrCity: json['m_cust_d_addr_city'] as String?,
      mCustDAddrAddress: json['m_cust_d_addr_address'] as String?,
      mCustDAddrZipcode: json['m_cust_d_addr_zipcode'] as String?,
      mCustDAddrGeoLatitude: json['m_cust_d_addr_geo_latitude'] as String?,
      mCustDAddrGeoLongitude: json['m_cust_d_addr_geo_longitude'] as String?,
      mCustDAddrCp1Name: json['m_cust_d_addr_cp1_name'] as String?,
      mCustDAddrCp1Phone: json['m_cust_d_addr_cp1_phone'] as String?,
      mCustDAddrCp1Email: json['m_cust_d_addr_cp1_email'] as String?,
      mCustDAddrCp1Birthdate: json['m_cust_d_addr_cp1_birthdate'] as String?,
      mCustDAddrCp2Name: json['m_cust_d_addr_cp2_name'] as String?,
      mCustDAddrCp2Phone: json['m_cust_d_addr_cp2_phone'] as String?,
      mCustDAddrCp2Email: json['m_cust_d_addr_cp2_email'] as String?,
      mCustDAddrCp2Birthdate: json['m_cust_d_addr_cp2_birthdate'] as String?,
      mCustDAddrFax: json['m_cust_d_addr_fax'] as String?,
      mCustDAddrNote: json['m_cust_d_addr_note'] as String?,
    );

Map<String, dynamic> _$$MCustDAddressImplToJson(_$MCustDAddressImpl instance) =>
    <String, dynamic>{
      'm_cust_d_addr_name': instance.mCustDAddrName,
      'm_cust_d_addr_country_id': instance.mCustDAddrCountryId,
      'm_cust_d_addr_province_id': instance.mCustDAddrProvinceId,
      'm_cust_d_addr_city_id': instance.mCustDAddrCityId,
      'm_cust_d_addr_country': instance.mCustDAddrCountry,
      'm_cust_d_addr_province': instance.mCustDAddrProvince,
      'm_cust_d_addr_city': instance.mCustDAddrCity,
      'm_cust_d_addr_address': instance.mCustDAddrAddress,
      'm_cust_d_addr_zipcode': instance.mCustDAddrZipcode,
      'm_cust_d_addr_geo_latitude': instance.mCustDAddrGeoLatitude,
      'm_cust_d_addr_geo_longitude': instance.mCustDAddrGeoLongitude,
      'm_cust_d_addr_cp1_name': instance.mCustDAddrCp1Name,
      'm_cust_d_addr_cp1_phone': instance.mCustDAddrCp1Phone,
      'm_cust_d_addr_cp1_email': instance.mCustDAddrCp1Email,
      'm_cust_d_addr_cp1_birthdate': instance.mCustDAddrCp1Birthdate,
      'm_cust_d_addr_cp2_name': instance.mCustDAddrCp2Name,
      'm_cust_d_addr_cp2_phone': instance.mCustDAddrCp2Phone,
      'm_cust_d_addr_cp2_email': instance.mCustDAddrCp2Email,
      'm_cust_d_addr_cp2_birthdate': instance.mCustDAddrCp2Birthdate,
      'm_cust_d_addr_fax': instance.mCustDAddrFax,
      'm_cust_d_addr_note': instance.mCustDAddrNote,
    };

_$DataPenagihanImpl _$$DataPenagihanImplFromJson(Map<String, dynamic> json) =>
    _$DataPenagihanImpl(
      isSelected: json['is_selected'] as bool? ?? false,
      mCustDTagihanDay: json['m_cust_d_tagihan_day'] as String?,
      mCustDTagihanNote: json['m_cust_d_tagihan_note'] as String?,
    );

Map<String, dynamic> _$$DataPenagihanImplToJson(_$DataPenagihanImpl instance) =>
    <String, dynamic>{
      'is_selected': instance.isSelected,
      'm_cust_d_tagihan_day': instance.mCustDTagihanDay,
      'm_cust_d_tagihan_note': instance.mCustDTagihanNote,
    };

_$MCustDTagihanImpl _$$MCustDTagihanImplFromJson(Map<String, dynamic> json) =>
    _$MCustDTagihanImpl(
      mCustDTagihanDay: json['m_cust_d_tagihan_day'] as String?,
      mCustDTagihanNote: json['m_cust_d_tagihan_note'] as String?,
    );

Map<String, dynamic> _$$MCustDTagihanImplToJson(_$MCustDTagihanImpl instance) =>
    <String, dynamic>{
      'm_cust_d_tagihan_day': instance.mCustDTagihanDay,
      'm_cust_d_tagihan_note': instance.mCustDTagihanNote,
    };

_$MCustDBankImpl _$$MCustDBankImplFromJson(Map<String, dynamic> json) =>
    _$MCustDBankImpl(
      mCustDBankName: json['m_cust_d_bank_name'] as String?,
      mCustDBankRekeningNomor: json['m_cust_d_bank_norek'] as String?,
      mCustDBankRekeningName: json['m_cust_d_bank_namarek'] as String?,
      mCustDBankNote: json['m_cust_d_bank_note'] as String?,
    );

Map<String, dynamic> _$$MCustDBankImplToJson(_$MCustDBankImpl instance) =>
    <String, dynamic>{
      'm_cust_d_bank_name': instance.mCustDBankName,
      'm_cust_d_bank_norek': instance.mCustDBankRekeningNomor,
      'm_cust_d_bank_namarek': instance.mCustDBankRekeningName,
      'm_cust_d_bank_note': instance.mCustDBankNote,
    };
