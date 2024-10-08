import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:soa_jpt/src/data/models/request/request_save_checker.dart';
import 'package:soa_jpt/src/data/models/response/scan/response_checker_detail.dart';
import 'package:soa_jpt/src/data/models/response/scan/response_checker_so.dart';
import 'package:soa_jpt/src/data/source/api_service.dart';
import 'package:soa_jpt/src/domain/exception/api_exception.dart';
import 'package:soa_jpt/src/domain/repository/scan_repository.dart';

class ScanRepositoryImpl implements ScanRepository {
  ScanRepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<ResponseCheckerDetail?> doGetCheckerDetail(
      {required String idChecker, required String idSales}) async {
    try {
      final result = await _apiService.doGetCheckerSODetail(
          ordermstoid: idChecker, idSales: idSales);

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseCheckerDetail.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseCheckerDetail.fromJson(result?.data);
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
  Future<ResponseCheckerSo?> doGetCheckerSO(
      {required String search, required String idSales}) async {
    try {
      final result = await _apiService.doGetCheckerSO(
        search: search,
        idSales: idSales,
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseCheckerSo.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseCheckerSo.fromJson(result?.data);
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
  Future<dynamic?> doSaveChecker({required RequestSaveChecker request}) async {
    try {
      final result = await _apiService.doSaveChecker(
        jsonHeader: jsonEncode(request.jsonHdr),
        jsonDetail: jsonEncode(request.jsonDtl),
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
}
