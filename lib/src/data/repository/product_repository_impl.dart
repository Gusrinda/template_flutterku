import 'package:becca_supir/src/data/models/response/response_list_product/response_list_product.dart';
import 'package:becca_supir/src/data/source/api_service.dart';
import 'package:becca_supir/src/domain/domain.dart';
import 'package:becca_supir/src/domain/repository/productRepository.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl(this._apiService);

  final ApiServiceProducts _apiService;

  @override
  Future<ResponseListProduct?> getDaftarProduct() async {
    final result = await _apiService.getDaftarProduct();

    return result;
  }
}
