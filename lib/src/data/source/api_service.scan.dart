part of 'api_service.dart';

mixin Scan {
  @FormUrlEncoded()
  @POST("/checker_so")
  Future<HttpResponse> doGetCheckerSO({
    @Field("search") required String search,
    @Field("idSales") required String idSales,
  });

  @FormUrlEncoded()
  @POST("/checker_so_detail")
  Future<HttpResponse> doGetCheckerSODetail({
    @Field("ordermstoid") required String ordermstoid,
    @Field("idSales") required String idSales,
  });

  @FormUrlEncoded()
  @POST("/checker_insert")
  Future<HttpResponse> doSaveChecker({
    @Field("JsonHdr") required String jsonHeader,
    @Field("JsonDtl") required String jsonDetail,
  });
}
