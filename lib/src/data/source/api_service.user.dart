part of 'api_service.dart';

mixin User {
  @POST("/login")
  Future<dynamic> doLoginUser({@Body() required Map<String, dynamic> request});
}
