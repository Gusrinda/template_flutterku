part of 'api_service.dart';

mixin Products {
  @GET("/products")
  Future<ResponseListProduct?> getDaftarProduct();

  @GET("/products/search")
  Future<ResponseListProduct?> getDaftarProductSearch();
}
