import 'package:sulinda_sales/src/data/models/request/request_create_so.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_detail_so.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_list_so.dart';

abstract class SoRepository {
  Future<ResponseListSo?> getDaftarSO({
    required String token,
    String? filter,
    String? startDate,
    String? endDate,
  });

  Future<ResponseDetailSo?> getDetailSO(
      {required String token, required String id});

  Future<dynamic> doCreateSO(
      {required String token, required RequestCreateSo request});

  Future<dynamic> doPostingSO({required String token, required String idSO});
}
