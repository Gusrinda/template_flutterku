import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sulinda_sales/src/data/models/response/packing/response_detail_packing.dart';
import 'package:sulinda_sales/src/data/models/response/packing/response_list_packing.dart';
import 'package:sulinda_sales/src/data/source/api_service.dart';
import 'package:sulinda_sales/src/domain/exception/api_exception.dart';
import 'package:sulinda_sales/src/domain/repository/packing_repository.dart';

class PackingRepositoryImpl implements PackingRepository {
  PackingRepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<ResponseDetailPacking?> doGetPackingDetail(
      {required String idPacking, required String idSales}) async {
    try {
      final result = await _apiService.doGetPackingDetail(
          ordermstoid: idPacking, idSales: idSales);

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseDetailPacking.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseDetailPacking.fromJson(result?.data);
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
  Future<ResponseListPacking?> doGetPackingList(
      {required String search, required String idSales}) async {
    try {
      final result = await _apiService.doGetListPacking(
        search: search,
        idSales: idSales,
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseListPacking.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseListPacking.fromJson(result?.data);
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
  Future doUpdatePackingQty(
      {required String id,
      required String qtyIkat,
      required String qtyKresek,
      required String qtyPeti}) async {
    try {
      final result = await _apiService.doPackingUpdateQty(
        trnsjjualmstoid: id,
        qtyIkat: qtyIkat,
        qtyKresek: qtyKresek,
        qtyPeti: qtyPeti,
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
