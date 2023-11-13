import 'package:becca_supir/src/data/models/request/request_save_konfirm.dart';
import 'package:becca_supir/src/data/models/response/response_list_belum_konfirm/response_list_belum_konfirm.dart';
import 'package:becca_supir/src/data/models/response/response_list_product/response_list_product.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';
part 'api_service.do.dart';
part 'api_service.product.dart';

@RestApi(baseUrl: 'https://dummyjson.com')
abstract class ApiServiceProducts with Products {
  factory ApiServiceProducts(Dio dio, {String baseUrl}) = _ApiServiceProducts;
}

@RestApi(baseUrl: 'http://118.99.67.130:83/becca_api/TisWebApi')
abstract class ApiService with DO {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
}
