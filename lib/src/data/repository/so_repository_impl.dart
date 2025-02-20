import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_so.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_detail_so.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_list_so.dart';
import 'package:sulinda_sales/src/data/source/api_service.dart';
import 'package:sulinda_sales/src/domain/exception/api_exception.dart';
import 'package:sulinda_sales/src/domain/repository/so_repository.dart';

class SoRepositoryImpl implements SoRepository {
  SoRepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<ResponseListSo?> getDaftarSO(
      {required String token,
      String? filter,
      String? startDate,
      String? endDate}) async {
    try {
      final result = await _apiService.doGetListSO(
        bearerToken: token,
        endDate: endDate,
        filter: filter,
        startDate: startDate,
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseListSo.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseListSo.fromJson(result?.data);
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
  Future<ResponseDetailSo?> getDetailSO(
      {required String token, required String id}) async {
    try {
      final result = await _apiService.doGetDetailSO(
        bearerToken: token,
        id: id,
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseDetailSo.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseDetailSo.fromJson(result?.data);
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
  Future doCreateSO(
      {required String token, required RequestCreateSo request}) async {
    try {
      final result = await _apiService.doCreateSO(
        bearerToken: token,
        request: request!,
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          return true;
        case 201:
          return true;
        case 401:
          throw ApiException('Unauthorized');
        default:
          var message = result?.response.data['message'];
          log('Message null? ${message == null}');
          if (message != null) {
            throw ApiException('${result?.response.data['message']}');
          } else {
            throw ApiException('${result?.response.data}');
          }
      }
    } catch (e) {
      log('Catch impl TRACKING USER: $e');
      throw ApiException('$e');
    }
  }

  @override
  Future doPostingSO({required String token, required String idSO}) async {
    try {
      final result =
          await _apiService.doPostingSO(bearerToken: token, id: idSO);

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          return true;
        case 201:
          return true;
        case 401:
          throw ApiException('Unauthorized');
        default:
          var message = result?.response.data['message'];
          log('Message null? ${message == null}');
          if (message != null) {
            throw ApiException('${result?.response.data['message']}');
          } else {
            throw ApiException('${result?.response.data}');
          }
      }
    } catch (e) {
      log('Catch impl TRACKING USER: $e');
      throw ApiException('$e');
    }
  }
}
