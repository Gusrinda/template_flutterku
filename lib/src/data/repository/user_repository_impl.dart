import 'package:becca_supir/src/data/models/response/login/response_login.dart';
import 'package:becca_supir/src/data/source/api_service.dart';
import 'package:becca_supir/src/domain/exception/api_exception.dart';
import 'package:becca_supir/src/domain/repository/user_repository.dart';
import 'package:dio/dio.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<ResponseLogin?> login(
      {required String username, required String password}) async {
    try {
      final result = await _apiService.doLoginUser(request: {
        "email": username,
        "password": password,
      });

      if (result is String) {
        throw ApiException(result.toString() ?? '');
      }

      ResponseLogin dataResponse = ResponseLogin.fromJson(result);

      return dataResponse;
    } catch (e) {
      print(e.toString());
      throw ApiException("Error catch : ${e.toString()}");
    }
  }
}
