import 'dart:developer';

import 'package:sulinda_sales/src/data/models/response/login/response_login.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_summary_so.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_list_plan.dart';
import 'package:sulinda_sales/src/data/source/api_service.dart';
import 'package:sulinda_sales/src/domain/exception/api_exception.dart';
import 'package:sulinda_sales/src/domain/repository/user_repository.dart';
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

          if (responseData.data == null) {
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

  @override
  Future<ResponseSummarySo?> getSummarySO(
      {required String mUserID, required String tokenUser}) async {
    try {
      final result = await _apiService.getSummarySO(bearerToken: tokenUser);

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseSummarySo.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseSummarySo.fromJson(result?.data);
          return responseData;
        case 401:
          var message = result?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan Get Data";
          }
          throw ApiException(message ?? 'Unauthorized');
        default:
          var message = result?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan Get Data";
          }

          log('Message null? ${message == null}');
          if (message != null) {
            throw ApiException('${result?.response.data['message']}');
          } else {
            throw ApiException('${result?.response.data}');
          }
      }
    } on DioError catch (e) {
      log('Dio catch impl login: $e');
      if (e.type == DioErrorType.connectTimeout) {
        throw ApiException('Connection timed out, cek koneksi internet Anda');
      } else {
        throw ApiException(e.message);
      }
    } catch (e) {
      log('User List Kunjungan catch: $e');
      throw ApiException("$e");
    }
  }

  @override
  Future<ResponseListPlan?> getOnGoingTask({required String tokenUser}) async {
    try {
      final result = await _apiService.getOnGoingTask(
        bearerToken: tokenUser,
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseListPlan.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseListPlan.fromJson(result?.data);
          return responseData;
        case 401:
          var message = result?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan Get Data";
          }
          throw ApiException(message ?? 'Unauthorized');
        default:
          var message = result?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan Get Data";
          }

          log('Message null? ${message == null}');
          if (message != null) {
            throw ApiException('${result?.response.data['message']}');
          } else {
            throw ApiException('${result?.response.data}');
          }
      }
    } on DioError catch (e) {
      log('Dio catch impl login: $e');
      if (e.type == DioErrorType.connectTimeout) {
        throw ApiException('Connection timed out, cek koneksi internet Anda');
      } else {
        throw ApiException(e.message);
      }
    } catch (e) {
      log('User List Kunjungan catch: $e');
      throw ApiException("$e");
    }
  }

  @override
  Future<ResponseListPlan?> getTodayTask({required String tokenUser}) async {
    try {
      final result = await _apiService.getTodayTask(
        bearerToken: tokenUser,
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseListPlan.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseListPlan.fromJson(result?.data);
          return responseData;
        case 401:
          var message = result?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan Get Data";
          }
          throw ApiException(message ?? 'Unauthorized');
        default:
          var message = result?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan Get Data";
          }

          log('Message null? ${message == null}');
          if (message != null) {
            throw ApiException('${result?.response.data['message']}');
          } else {
            throw ApiException('${result?.response.data}');
          }
      }
    } on DioError catch (e) {
      log('Dio catch impl login: $e');
      if (e.type == DioErrorType.connectTimeout) {
        throw ApiException('Connection timed out, cek koneksi internet Anda');
      } else {
        throw ApiException(e.message);
      }
    } catch (e) {
      log('User List Kunjungan catch: $e');
      throw ApiException("$e");
    }
  }
}
