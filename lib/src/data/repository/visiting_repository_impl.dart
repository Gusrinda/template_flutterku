import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_plan.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_absensi.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_tagihan.dart';
import 'package:sulinda_sales/src/data/models/response/customer/response_customer_visiting.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_detail_plan.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_list_plan.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_save_plan.dart';
import 'package:sulinda_sales/src/data/source/api_service.dart';
import 'package:sulinda_sales/src/domain/exception/api_exception.dart';
import 'package:sulinda_sales/src/domain/repository/visiting_repository.dart';

class VisitingRepositoryImpl implements VisitingRepository {
  VisitingRepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<ResponseDetailPlan?> doGetVisitingDetail(
      {required String token, required String id}) async {
    try {
      final result = await _apiService.doGetDetailVisiting(
        bearerToken: token,
        id: id,
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseDetailPlan.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseDetailPlan.fromJson(result?.data);
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
  Future<ResponseCustomerVisiting?> getDaftarCustomerVisiting(
      {required String token}) async {
    try {
      final result = await _apiService.doGetCustomerVisiting(
        bearerToken: token,
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseCustomerVisiting.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseCustomerVisiting.fromJson(result?.data);
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
  Future<ResponseListPlan?> getDaftarVisitingPlan(
      {required String token,
      String? status,
      String? filter,
      String? startDate,
      String? endDate}) async {
    try {
      final result = await _apiService.doGetListVisiting(
        bearerToken: token,
        endDate: endDate,
        filter: filter,
        startDate: startDate,
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
  Future<ResponseSavePlan?> doCreatePlan(
      {required String token, required RequestCreatePlan request}) async {
    try {
      final result = await _apiService.doCreatePlan(
        bearerToken: token,
        request: request!,
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseSavePlan.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseSavePlan.fromJson(result?.data);
          return responseData;
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
  Future doSaveCheckin(
      {required String token, required RequestSaveAbsensi request}) async {
    try {
      final result = await _apiService.doSaveCheckin(
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
  Future doSaveTagihan(
      {required String token, required RequestSaveTagihan request}) async {
    try {
      final result = await _apiService.doSaveTagihan(
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
}
