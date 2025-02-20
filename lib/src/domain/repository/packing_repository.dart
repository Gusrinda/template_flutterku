import 'package:sulinda_sales/src/data/models/request/request_save_checker.dart';
import 'package:sulinda_sales/src/data/models/response/login/response_login.dart';
import 'package:sulinda_sales/src/data/models/response/packing/response_detail_packing.dart';
import 'package:sulinda_sales/src/data/models/response/packing/response_list_packing.dart';
import 'package:sulinda_sales/src/data/models/response/scan/response_checker_detail.dart';
import 'package:sulinda_sales/src/data/models/response/scan/response_checker_so.dart';

abstract class PackingRepository {
  Future<ResponseListPacking?> doGetPackingList({
    required String search,
    required String idSales,
  });

  Future<ResponseDetailPacking?> doGetPackingDetail({
    required String idPacking,
    required String idSales,
  });

  Future<dynamic> doUpdatePackingQty({
    required String id,
    required String qtyIkat,
    required String qtyKresek,
    required String qtyPeti,
  });
}
