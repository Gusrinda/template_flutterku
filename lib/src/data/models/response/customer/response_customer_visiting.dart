import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_customer_visiting.freezed.dart';
part 'response_customer_visiting.g.dart';

@freezed
class ResponseCustomerVisiting with _$ResponseCustomerVisiting {
  const factory ResponseCustomerVisiting({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") List<DataCustomerVisiting>? data,
  }) = _ResponseCustomerVisiting;

  factory ResponseCustomerVisiting.fromJson(Map<String, dynamic> json) =>
      _$ResponseCustomerVisitingFromJson(json);
}

@freezed
class DataCustomerVisiting with _$DataCustomerVisiting {
  const factory DataCustomerVisiting({
    @JsonKey(name: "m_cust_id") int? mCustId,
    @JsonKey(name: "m_cust_code") String? mCustCode,
    @JsonKey(name: "m_cust_name") String? mCustName,
    @JsonKey(name: "m_cust_name_alias") String? mCustNameAlias,
    @JsonKey(name: "m_cust_grup_wilayah_id") int? mCustGrupWilayahId,
    @JsonKey(name: "m_cust_grup_wilayah") String? mCustGrupWilayah,
    @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
    @JsonKey(name: "m_cust_d_addr_name") String? mCustDAddrName,
    @JsonKey(name: "m_cust_d_addr_address") String? mCustDAddrAddress,
    @JsonKey(name: "jumlah_piutang") double? jumlahPiutang,
  }) = _DataCustomerVisiting;

  factory DataCustomerVisiting.fromJson(Map<String, dynamic> json) => _$DataCustomerVisitingFromJson(json);
}
