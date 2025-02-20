import 'package:sulinda_sales/src/data/models/request/request_create_customer.dart';
import 'package:sulinda_sales/src/data/models/response/barang/response_daftar_barang.dart';
import 'package:sulinda_sales/src/data/models/response/customer/response_daftar_customer.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_pph.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_ppn.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_wilayah.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_data_general.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_master_general.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_detail_calendar.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_detail_tagihan.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_list_calendar.dart';

abstract class GeneralRepository {
  Future<ResponseMasterGeneral?> getDaftarDataGeneral({
    required String token,
    String? filterKategori,
    String? search,
    String? searchfield,
    String? paginate,
    String? page,
  });

  Future<ResponseDaftarWilayah?> getDaftarWilayah({
    required String tokenUser,
  });

  Future<ResponseDaftarBarang?> getDaftarBarang({
    required String tokenUser,
    required String? idKategoriBarang,
  });

  Future<ResponseDaftarPpn?> getDaftarPPN({
    required String tokenUser,
  });

  Future<ResponseDaftarPph?> getDaftarPPH({
    required String tokenUser,
  });

  Future<ResponseDaftarCustomer?> getDaftarCustomer({
    required String tokenUser,
    required String idWilayah,
  });

  Future<BulkDataGeneral?> getDaftarGeneralCustomer({
    required String tokenUser,
  });

  Future<BulkDataGeneral?> getDaftarCountryProvinsiCity({
    required String tokenUser,
  });

  Future<ResponseDataGeneral?> getDaftarKategoriBarang({
    required String tokenUser,
  });

  Future<dynamic> doCreateCustomer(
      {required String token, required RequestCreateCustomer request});

  Future<ResponseListCalendar?> getDaftarKalender({
    required String tokenUser,
    required String startDate,
    required String endDate,
  });

  Future<ResponseDetailCalendar?> getDetailKalender(
      {required String tokenUser, required String date});

  Future<ResponseDetailTagihan?> getDetailTagihan(
      {required String tokenUser, required String id});
}
