part of 'api_service.dart';

mixin Visiting {
  @GET("/SalesActivity/GetCustomer")
  Future<HttpResponse?> doGetCustomerVisiting({
    @Header('Authorization') required String bearerToken,
  });

  @GET("/SalesActivity/GetListPlan")
  Future<HttpResponse?> doGetListVisiting({
    @Header('Authorization') required String bearerToken,
    @Header('filter') String? filter,
    @Header('status') String? status,
    @Header('end_date') String? endDate,
    @Header('start_date') String? startDate,
  });

  @GET("/SalesActivity/Get")
  Future<HttpResponse?> doGetDetailVisiting({
    @Header('Authorization') required String bearerToken,
    @Query('id') required String id,
  });

  @POST("/SalesActivity/SavePlan")
  Future<HttpResponse?> doCreatePlan({
    @Header('Authorization') required String bearerToken,
    @Body() required RequestCreatePlan request,
  });

  @POST("/SalesActivity/SaveTagihan")
  Future<HttpResponse?> doSaveTagihan({
    @Header('Authorization') required String bearerToken,
    @Body() required RequestSaveTagihan request,
  });

  @POST("/SalesActivity/Checkin")
  Future<HttpResponse?> doSaveCheckin({
    @Header('Authorization') required String bearerToken,
    @Body() required RequestSaveAbsensi request,
  });
}
