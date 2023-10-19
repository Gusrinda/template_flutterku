part of 'api_service.dart';

mixin DO {
  @POST("/info_do_belumkonfirm")
  Future<ResponseListBelumKonfirm?> getDaftarDO({
    @Body() required Map<String, dynamic> request,
  });

  @POST("/save_konfirm_do")
  Future<String> simpanKonfirmDO({
    @Body() required RequestSaveKonfirm requestData,
  });
}
