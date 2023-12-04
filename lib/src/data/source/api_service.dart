import 'package:becca_supir/src/data/models/request/request_save_konfirm.dart';
import 'package:becca_supir/src/data/models/response/general/response_master_general.dart';
import 'package:becca_supir/src/data/models/response/response_list_belum_konfirm/response_list_belum_konfirm.dart';
import 'package:becca_supir/src/data/models/response/response_list_product/response_list_product.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';
part 'api_service.user.dart';
part 'api_service.general.dart';

@RestApi(baseUrl: 'https://server.qqltech.com:7007')
abstract class ApiService with User, General {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
}
