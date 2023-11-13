import 'package:becca_supir/src/data/models/response/response_list_product/response_list_product.dart';

abstract class ProductRepository {

  Future<ResponseListProduct?> getDaftarProduct();
  
}
