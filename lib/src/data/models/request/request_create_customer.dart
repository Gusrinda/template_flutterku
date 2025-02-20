import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'request_create_customer.freezed.dart';
part 'request_create_customer.g.dart';

@freezed
class RequestCreateCustomer with _$RequestCreateCustomer {
  const factory RequestCreateCustomer({
    @JsonKey(name: "m_cust_id") int? mCustId,
    @JsonKey(name: "m_cust_type") String? mCustType,
    @JsonKey(name: "m_cust_prefix_id") int? mCustPrefixId,
    @JsonKey(name: "m_cust_name") String? mCustName,
    @JsonKey(name: "m_cust_name_alias") String? mCustNameAlias,
    @JsonKey(name: "m_cust_grup_wilayah_id") int? mCustGrupWilayahId,
    @JsonKey(name: "m_cust_wilayah_penagihan_id") int? mCustWilayahPenagihanId,
    @JsonKey(name: "m_cust_npwp") String? mCustNpwp,
    @JsonKey(name: "m_cust_nik") String? mCustNik,
    @JsonKey(name: "m_cust_karakter") String? mCustKarakter,
    @JsonKey(name: "m_cust_note") String? mCustNote,
    @JsonKey(name: "m_cust_credit_limit") int? mCustCreditLimit,
    @JsonKey(name: "m_cust_jatuhtempo1_id") int? mCustJatuhtempo1Id,
    @JsonKey(name: "m_cust_jatuhtempo2_id") int? mCustJatuhtempo2Id,
    @JsonKey(name: "m_cust_phone1") String? mCustPhone1,
    @JsonKey(name: "m_cust_phone2") String? mCustPhone2,
    @JsonKey(name: "m_cust_mobile1") String? mCustMobile1,
    @JsonKey(name: "m_cust_mobile2") String? mCustMobile2,
    @JsonKey(name: "m_cust_fax") String? mCustFax,
    @JsonKey(name: "m_cust_email") String? mCustEmail,
    @JsonKey(name: "m_cust_website") String? mCustWebsite,
    @JsonKey(name: "m_cust_img_base64") String? mCustImgBase64,
    @JsonKey(name: "m_cust_status") String? mCustStatus,
    @JsonKey(name: "m_cust_geo_latitude") String? latitude,
    @JsonKey(name: "m_cust_geo_longitude") String? longitude,
    @JsonKey(name: "m_cust_d_tagihan") List<MCustDTagihan>? mCustDTagihan,
    @JsonKey(name: "m_cust_d_address") List<MCustDAddress>? mCustDAddress,
    @JsonKey(name: "m_cust_d_bank") List<MCustDBank>? mCustDBank,
  }) = _RequestCreateCustomer;

  factory RequestCreateCustomer.fromJson(Map<String, dynamic> json) =>
      _$RequestCreateCustomerFromJson(json);
}

@freezed
class MCustDAddress with _$MCustDAddress {
  const factory MCustDAddress({
    @JsonKey(name: "m_cust_d_addr_name") String? mCustDAddrName,
    @JsonKey(name: "m_cust_d_addr_country_id") int? mCustDAddrCountryId,
    @JsonKey(name: "m_cust_d_addr_province_id") int? mCustDAddrProvinceId,
    @JsonKey(name: "m_cust_d_addr_city_id") int? mCustDAddrCityId,
    @JsonKey(name: "m_cust_d_addr_country") String? mCustDAddrCountry,
    @JsonKey(name: "m_cust_d_addr_province") String? mCustDAddrProvince,
    @JsonKey(name: "m_cust_d_addr_city") String? mCustDAddrCity,
    @JsonKey(name: "m_cust_d_addr_address") String? mCustDAddrAddress,
    @JsonKey(name: "m_cust_d_addr_zipcode") String? mCustDAddrZipcode,
    @JsonKey(name: "m_cust_d_addr_geo_latitude") String? mCustDAddrGeoLatitude,
    @JsonKey(name: "m_cust_d_addr_geo_longitude")
    String? mCustDAddrGeoLongitude,
    @JsonKey(name: "m_cust_d_addr_cp1_name") String? mCustDAddrCp1Name,
    @JsonKey(name: "m_cust_d_addr_cp1_phone") String? mCustDAddrCp1Phone,
    @JsonKey(name: "m_cust_d_addr_cp1_email") String? mCustDAddrCp1Email,
    @JsonKey(name: "m_cust_d_addr_cp1_birthdate")
    String? mCustDAddrCp1Birthdate,
    @JsonKey(name: "m_cust_d_addr_cp2_name") String? mCustDAddrCp2Name,
    @JsonKey(name: "m_cust_d_addr_cp2_phone") String? mCustDAddrCp2Phone,
    @JsonKey(name: "m_cust_d_addr_cp2_email") String? mCustDAddrCp2Email,
    @JsonKey(name: "m_cust_d_addr_cp2_birthdate")
    String? mCustDAddrCp2Birthdate,
    @JsonKey(name: "m_cust_d_addr_fax") String? mCustDAddrFax,
    @JsonKey(name: "m_cust_d_addr_note") String? mCustDAddrNote,
  }) = _MCustDAddress;

  factory MCustDAddress.fromJson(Map<String, dynamic> json) =>
      _$MCustDAddressFromJson(json);
}

@freezed
class DataPenagihan with _$DataPenagihan {
  const factory DataPenagihan({
    @Default(false) @JsonKey(name: "is_selected") bool? isSelected,
    @JsonKey(name: "m_cust_d_tagihan_day") String? mCustDTagihanDay,
    @JsonKey(name: "m_cust_d_tagihan_note") String? mCustDTagihanNote,
  }) = _DataPenagihan;

  factory DataPenagihan.fromJson(Map<String, dynamic> json) =>
      _$DataPenagihanFromJson(json);
}

@freezed
class MCustDTagihan with _$MCustDTagihan {
  const factory MCustDTagihan({
    @JsonKey(name: "m_cust_d_tagihan_day") String? mCustDTagihanDay,
    @JsonKey(name: "m_cust_d_tagihan_note") String? mCustDTagihanNote,
  }) = _MCustDTagihan;

  factory MCustDTagihan.fromJson(Map<String, dynamic> json) =>
      _$MCustDTagihanFromJson(json);
}

@freezed
class MCustDBank with _$MCustDBank {
  const factory MCustDBank({
    @JsonKey(name: "m_cust_d_bank_name") String? mCustDBankName,
    @JsonKey(name: "m_cust_d_bank_norek") String? mCustDBankRekeningNomor,
    @JsonKey(name: "m_cust_d_bank_namarek") String? mCustDBankRekeningName,
    @JsonKey(name: "m_cust_d_bank_note") String? mCustDBankNote,
  }) = _MCustDBank;

  factory MCustDBank.fromJson(Map<String, dynamic> json) =>
      _$MCustDBankFromJson(json);
}
