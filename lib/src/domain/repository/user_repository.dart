import 'package:sulinda_sales/src/data/models/response/login/response_login.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_summary_so.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_list_plan.dart';

abstract class UserRepository {
  Future<ResponseLogin?> login({
    required String username,
    required String password,
  });

  Future<ResponseSummarySo?> getSummarySO({
    required String mUserID,
    required String tokenUser,
  });

  Future<ResponseListPlan?> getTodayTask({
    required String tokenUser,
  });

  Future<ResponseListPlan?> getOnGoingTask({
    required String tokenUser,
  });
}
