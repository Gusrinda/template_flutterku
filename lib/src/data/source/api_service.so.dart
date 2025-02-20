part of 'api_service.dart';

mixin So {
  @GET("/GetListSO")
  Future<HttpResponse?> doGetListSO({
    @Header('Authorization') required String bearerToken,
    @Header('filter') String? filter,
    @Header('end_date') String? endDate,
    @Header('start_date') String? startDate,
  });

  @GET("/GetSO")
  Future<HttpResponse?> doGetDetailSO({
    @Header('Authorization') required String bearerToken,
    @Query('id') required String id,
  });

  @POST("/SaveSO")
  Future<HttpResponse?> doCreateSO({
    @Header('Authorization') required String bearerToken,
    @Body() required RequestCreateSo request,
  });

  @POST("/PostSO")
  Future<HttpResponse?> doPostingSO({
    @Header('Authorization') required String bearerToken,
    @Query('id') required String id,
  });
}
