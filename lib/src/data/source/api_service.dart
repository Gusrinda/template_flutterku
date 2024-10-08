import 'package:soa_jpt/src/data/models/request/request_save_checker.dart';
import 'package:soa_jpt/src/data/models/request/request_save_konfirm.dart';
import 'package:soa_jpt/src/data/models/response/general/response_master_general.dart';
import 'package:soa_jpt/src/data/models/response/response_list_belum_konfirm/response_list_belum_konfirm.dart';
import 'package:soa_jpt/src/data/models/response/response_list_product/response_list_product.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';
part 'api_service.user.dart';
part 'api_service.scan.dart';
part 'api_service.general.dart';
part 'api_service.packing.dart';

// @RestApi(baseUrl: 'https://server.qqltech.com:7007')
@RestApi()
abstract class ApiService with User, General, Scan, Packing {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
}
