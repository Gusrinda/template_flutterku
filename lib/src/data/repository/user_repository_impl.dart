import 'dart:developer';

import 'package:soa_jpt/src/data/models/response/login/response_login.dart';
import 'package:soa_jpt/src/data/source/api_service.dart';
import 'package:soa_jpt/src/domain/exception/api_exception.dart';
import 'package:soa_jpt/src/domain/repository/user_repository.dart';
import 'package:dio/dio.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<ResponseLogin?> login(
      {required String username, required String password}) async {
    try {
      final result = await _apiService.doLoginUser(
        username: username,
        password: password,
        // request: {
        //   "username": username,
        //   "password": password,
        // },
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseLogin.fromJson(result?.data);

          if (responseData.msgServer!.isEmpty) {
            throw ApiException('Kesalahan identitas login.');
          }

          return responseData;
        case 201:
          final responseData = ResponseLogin.fromJson(result?.data);
          return responseData;
        case 401:
          var message = result?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan identitas login";
          }
          throw ApiException(message ?? 'Unauthorized');
        default:
          var message = result?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan identitas login";
          }

          log('Message null? ${message == null}');
          if (message != null) {
            throw ApiException('${result?.response.data['message']}');
          } else {
            throw ApiException('Kesalahan identitas login.');
          }
      }
    } on DioError catch (e) {
      log('Dio catch impl login: $e');
      if (e.type == DioErrorType.connectTimeout) {
        throw ApiException('Connection timed out, cek koneksi internet Anda');
      } else {
        throw ApiException('Kesalahan identitas login.');
        // throw ApiException(e.message);
      }
    } catch (e) {
      log('User impl login catch: $e');
      throw ApiException("$e");
    }
  }
}
