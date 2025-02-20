import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_daftar_customer.freezed.dart';
part 'response_daftar_customer.g.dart';

@freezed
class ResponseDaftarCustomer with _$ResponseDaftarCustomer {
  const factory ResponseDaftarCustomer({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") List<DataCustomer>? data,
  }) = _ResponseDaftarCustomer;

  factory ResponseDaftarCustomer.fromJson(Map<String, dynamic> json) =>
      _$ResponseDaftarCustomerFromJson(json);
}

@freezed
class DataCustomer with _$DataCustomer {
  const factory DataCustomer({
    @JsonKey(name: "m_cust_id") int? mCustId,
    @JsonKey(name: "m_cust_code") String? mCustCode,
    @JsonKey(name: "m_cust_name") String? mCustName,
    @JsonKey(name: "m_cust_type") dynamic mCustType,
    @JsonKey(name: "m_cust_grup_wilayah_id") int? mCustGrupWilayahId,
    @JsonKey(name: "m_cust_grup_wilayah") String? mCustGrupWilayah,
    @JsonKey(name: "m_custgrup_paydefault_id") int? mCustgrupPaydefaultId,
    @JsonKey(name: "m_custgrup_jatuhtempo_id") int? mCustgrupJatuhtempoId,
    @JsonKey(name: "m_cust_active_flag") String? mCustActiveFlag,
    @JsonKey(name: "m_cust_npwp") String? mCustNpwp,
    @JsonKey(name: "m_cust_nik") String? mCustNik,
    @JsonKey(name: "m_cust_email") String? mCustEmail,
    @JsonKey(name: "m_cust_name_alias") String? mCustNameAlias,
    @JsonKey(name: "alamatCount") int? alamatCount,
    @JsonKey(name: "m_cust_id_img_path") String? mCustIdImgPath,
    @JsonKey(name: "overdue_days") int? overdueDays,
    @JsonKey(name: "overtime_days") int? overtimeDays,
    @JsonKey(name: "overdue_ar") int? overdueAr,
  }) = _DataCustomer;

  factory DataCustomer.fromJson(Map<String, dynamic> json) => _$DataCustomerFromJson(json);
}
