part of 'api_service.dart';

mixin User {
  @FormUrlEncoded()
  @POST("/checker_user_login")
  Future<HttpResponse> doLoginUser(
      {
      // @Body() required Map<String, dynamic> request,
      @Field("username") required String username,
      @Field("password") required String password});
}
