part of 'api_service.dart';

mixin User {
  @FormUrlEncoded()
  @POST("/api/auth/login")
  Future<HttpResponse> doLoginUser(
      {@Field("Username") required String username,
      @Field("Password") required String password});

  @GET("/GetSummarySO")
  Future<HttpResponse?> getSummarySO({
    @Header('Authorization') required String bearerToken,
  });

  @GET("/SalesActivity/GetTodayTask")
  Future<HttpResponse?> getTodayTask({
    @Header('Authorization') required String bearerToken,
  });

  @GET("/SalesActivity/GetOngoingTask")
  Future<HttpResponse?> getOnGoingTask({
    @Header('Authorization') required String bearerToken,
  });
}
