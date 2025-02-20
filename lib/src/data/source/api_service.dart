import 'package:sulinda_sales/src/data/models/request/request_create_customer.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_plan.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_so.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_absensi.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_checker.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_konfirm.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_tagihan.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_master_general.dart';
import 'package:sulinda_sales/src/data/models/response/response_list_belum_konfirm/response_list_belum_konfirm.dart';
import 'package:sulinda_sales/src/data/models/response/response_list_product/response_list_product.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';
part 'api_service.user.dart';
part 'api_service.scan.dart';
part 'api_service.general.dart';
part 'api_service.packing.dart';
part 'api_service.so.dart';
part 'api_service.visiting.dart';

// @RestApi(baseUrl: 'https://server.qqltech.com:7007')
@RestApi()
abstract class ApiService with User, General, Scan, Packing, So, Visiting {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
}
