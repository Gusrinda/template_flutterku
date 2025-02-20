part of 'api_service.dart';

mixin General {
  @GET("/GetWilayah")
  Future<HttpResponse?> getDaftarWilayah({
    @Header('Authorization') required String bearerToken,
  });

  @GET("/GetCustomer")
  Future<HttpResponse?> getDaftarCustomer({
    @Header('Authorization') required String bearerToken,
    @Query('t_so_h_grup_wilayah_id') required String tWilayahid,
  });

  @GET("/GetBarang")
  Future<HttpResponse?> getDaftarBarang({
    @Header('Authorization') required String bearerToken,
    @Query('m_item_kelompok_id') required String? idKelompokBarang,
  });

  @GET("/GetPPN")
  Future<HttpResponse?> getDaftarPPN({
    @Header('Authorization') required String bearerToken,
  });

  @GET("/GetKelompokBarang")
  Future<HttpResponse?> getDataKategoriBarang({
    @Header('Authorization') required String bearerToken,
  });

  @GET("/GetPPH")
  Future<HttpResponse?> getDaftarPPH({
    @Header('Authorization') required String bearerToken,
  });

  @GET("/PengajuanCustomer/GetPrefixName")
  Future<HttpResponse?> getDaftarPrefixName({
    @Header('Authorization') required String bearerToken,
  });

  @GET("/PengajuanCustomer/GetGroupWilayah")
  Future<HttpResponse?> getDaftarGroupWilayah({
    @Header('Authorization') required String bearerToken,
  });

  @GET("/PengajuanCustomer/GetWilayahPenagihan")
  Future<HttpResponse?> getWilayahPenagihan({
    @Header('Authorization') required String bearerToken,
  });

  @GET("/PengajuanCustomer/GetJatuhTempo")
  Future<HttpResponse?> getJatuhTempo({
    @Header('Authorization') required String bearerToken,
  });

  @GET("/PengajuanCustomer/GetCountry")
  Future<HttpResponse?> getDaftarCountry({
    @Header('Authorization') required String bearerToken,
  });

  @GET("/PengajuanCustomer/GetProvince")
  Future<HttpResponse?> getDaftarProvinsi({
    @Header('Authorization') required String bearerToken,
    @Query('country_id') String? countryID,
  });

  @GET("/PengajuanCustomer/GetCity")
  Future<HttpResponse?> getDaftarCity({
    @Header('Authorization') required String bearerToken,
    @Query('province_id') String? provinsiID,
  });

  @POST("/PengajuanCustomer/Save")
  Future<HttpResponse?> doCreateCustomer({
    @Header('Authorization') required String bearerToken,
    @Body() required RequestCreateCustomer request,
  });

  @GET("/SalesActivity/GetListCalendar")
  Future<HttpResponse?> getDaftarKalender({
    @Header('Authorization') required String bearerToken,
    @Query('start_date') String? startDate,
    @Query('end_date') String? endDate,
  });

  @GET("/SalesActivity/GetDetailCalendar")
  Future<HttpResponse?> getDetailKalender(
      {@Header('Authorization') required String bearerToken,
      @Query('activity_date') String? date});

  @GET("/SalesActivity/GetDetailTagihan")
  Future<HttpResponse?> getDetailTagihan(
      {@Header('Authorization') required String bearerToken,
      @Query('id') String? id});
}
