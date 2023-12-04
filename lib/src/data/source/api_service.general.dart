part of 'api_service.dart';

mixin General {
  @GET("/operation/m_general")
  Future<ResponseMasterGeneral?> getDaftarDataGeneral({
    @Header('Authorization') required String bearerToken,
    @Query('filter_group') String? filterKategori,
    @Query('search') String? search,
    @Query('searchfield') String? searchfield,
    @Query('paginate') String? paginate,
    @Query('page') String? page,
  });
}
