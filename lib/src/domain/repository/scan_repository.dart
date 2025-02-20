import 'package:sulinda_sales/src/data/models/request/request_save_checker.dart';
import 'package:sulinda_sales/src/data/models/response/login/response_login.dart';
import 'package:sulinda_sales/src/data/models/response/scan/response_checker_detail.dart';
import 'package:sulinda_sales/src/data/models/response/scan/response_checker_so.dart';

abstract class ScanRepository {
  Future<ResponseCheckerSo?> doGetCheckerSO({
    required String search,
    required String idSales,
  });

  Future<ResponseCheckerDetail?> doGetCheckerDetail({
    required String idChecker,
    required String idSales,
  });

  Future<dynamic> doSaveChecker({
    required RequestSaveChecker request,
  });
}
