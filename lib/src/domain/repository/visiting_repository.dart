import 'package:sulinda_sales/src/data/models/request/request_create_plan.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_so.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_absensi.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_tagihan.dart';
import 'package:sulinda_sales/src/data/models/response/customer/response_customer_visiting.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_detail_so.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_list_so.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_detail_plan.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_list_plan.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_save_plan.dart';

abstract class VisitingRepository {
  Future<ResponseCustomerVisiting?> getDaftarCustomerVisiting({
    required String token,
  });

  Future<ResponseListPlan?> getDaftarVisitingPlan({
    required String token,
    String? status,
    String? filter,
    String? startDate,
    String? endDate,
  });

  Future<ResponseDetailPlan?> doGetVisitingDetail({
    required String token,
    required String id,
  });

  Future<ResponseSavePlan?> doCreatePlan({
    required String token,
    required RequestCreatePlan request,
  });

  Future<dynamic> doSaveTagihan({
    required String token,
    required RequestSaveTagihan request,
  });

  Future<dynamic> doSaveCheckin({
    required String token,
    required RequestSaveAbsensi request,
  });
}
