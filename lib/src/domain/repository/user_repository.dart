import 'package:soa_jpt/src/data/models/response/login/response_login.dart';

abstract class UserRepository {
  Future<ResponseLogin?> login({
    required String username,
    required String password,
  });
}
