part of 'api_service.dart';

mixin Packing {
  @FormUrlEncoded()
  @POST("/packing_so")
  Future<HttpResponse> doGetListPacking({
    @Field("search") required String search,
    @Field("idSales") required String idSales,
  });

  @FormUrlEncoded()
  @POST("/packing_so_detail")
  Future<HttpResponse> doGetPackingDetail({
    @Field("trnsjjualmstoid") required String ordermstoid,
    @Field("idSales") required String idSales,
  });

  @FormUrlEncoded()
  @POST("/packing_update_qty")
  Future<HttpResponse> doPackingUpdateQty({
    @Field("trnsjjualmstoid") required String trnsjjualmstoid,
    @Field("qty_peti") required String qtyPeti,
    @Field("qty_kresek") required String qtyKresek,
    @Field("qty_ikat") required String qtyIkat,
  });
}
