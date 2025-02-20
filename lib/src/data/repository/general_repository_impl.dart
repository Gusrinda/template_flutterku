import 'dart:developer';

import 'package:sulinda_sales/src/data/models/request/request_create_customer.dart';
import 'package:sulinda_sales/src/data/models/response/barang/response_daftar_barang.dart';
import 'package:sulinda_sales/src/data/models/response/customer/response_daftar_customer.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_pph.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_ppn.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_wilayah.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_data_general.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_master_general.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_detail_calendar.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_detail_tagihan.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_list_calendar.dart';
import 'package:sulinda_sales/src/data/source/api_service.dart';
import 'package:sulinda_sales/src/domain/exception/api_exception.dart';
import 'package:sulinda_sales/src/domain/repository/general_repository.dart';
import 'package:dio/dio.dart';

class GeneralRepositoryImpl implements GeneralRepository {
  GeneralRepositoryImpl(
    this._apiService,
  );

  final ApiService _apiService;

  @override
  Future<ResponseMasterGeneral?> getDaftarDataGeneral(
      {required String token,
      String? filterKategori,
      String? search,
      String? page,
      String? searchfield,
      String? paginate}) async {
    try {
      // final result = await _apiService.getDaftarDataGeneral(
      //     bearerToken: token,
      //     filterKategori: filterKategori,
      //     search: search,
      //     page: page,
      //     searchfield: searchfield,
      //     paginate: paginate);

      // if (result?.data != null) {
      //   return result;
      // } else {
      //   return null;
      // }
    } catch (e) {
      throw ApiException("Error catch : ${e.toString()}");
    }
  }

  @override
  Future<ResponseDaftarBarang?> getDaftarBarang({
    required String tokenUser,
    required String? idKategoriBarang,
  }) async {
    try {
      final result = await _apiService.getDaftarBarang(
        bearerToken: tokenUser,
        idKelompokBarang: idKategoriBarang,
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseDaftarBarang.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseDaftarBarang.fromJson(result?.data);
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
  Future<ResponseDaftarWilayah?> getDaftarWilayah(
      {required String tokenUser}) async {
    try {
      final result = await _apiService.getDaftarWilayah(bearerToken: tokenUser);

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseDaftarWilayah.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseDaftarWilayah.fromJson(result?.data);
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
  Future<ResponseDaftarPph?> getDaftarPPH({required String tokenUser}) async {
    try {
      final result = await _apiService.getDaftarPPH(bearerToken: tokenUser);

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseDaftarPph.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseDaftarPph.fromJson(result?.data);
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
  Future<ResponseDaftarPpn?> getDaftarPPN({required String tokenUser}) async {
    try {
      final result = await _apiService.getDaftarPPN(bearerToken: tokenUser);

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseDaftarPpn.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseDaftarPpn.fromJson(result?.data);
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
  Future<ResponseDaftarCustomer?> getDaftarCustomer(
      {required String tokenUser, required String idWilayah}) async {
    try {
      final result = await _apiService.getDaftarCustomer(
        bearerToken: tokenUser,
        tWilayahid: idWilayah,
      );

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseDaftarCustomer.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseDaftarCustomer.fromJson(result?.data);
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
  Future<BulkDataGeneral?> getDaftarGeneralCustomer(
      {required String tokenUser}) async {
    try {
      final result_prefix = await _apiService.getDaftarPrefixName(
        bearerToken: tokenUser,
      );

      final resultGroupWilayah = await _apiService.getDaftarGroupWilayah(
        bearerToken: tokenUser,
      );

      final resultWilayahPenagihan = await _apiService.getWilayahPenagihan(
        bearerToken: tokenUser,
      );

      final resultJatuhTempo = await _apiService.getJatuhTempo(
        bearerToken: tokenUser,
      );

      final resultCountry = await _apiService.getDaftarCountry(
        bearerToken: tokenUser,
      );

      final resultProvinsi = await _apiService.getDaftarProvinsi(
        bearerToken: tokenUser,
      );

      final statusCode = result_prefix?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responsePrefix =
              ResponseDataGeneral.fromJson(result_prefix?.data);
          final responseGroupWilayah =
              ResponseDataGeneral.fromJson(resultGroupWilayah?.data);
          final responseWilayahPenagihan =
              ResponseDataGeneral.fromJson(resultWilayahPenagihan?.data);
          final responseJatuhTempo =
              ResponseDataGeneral.fromJson(resultJatuhTempo?.data);
          final responseCountry =
              ResponseDataGeneral.fromJson(resultCountry?.data);
          final responseProvinsi =
              ResponseDataGeneral.fromJson(resultProvinsi?.data);
          return BulkDataGeneral(
            dataPrefix: responsePrefix.data ?? [],
            dataGroupWilayah: responseGroupWilayah.data ?? [],
            dataWilayahPenagihan: responseWilayahPenagihan.data ?? [],
            dataJatuhTempo: responseJatuhTempo.data ?? [],
            dataCountry: responseCountry.data ?? [],
            dataProvinsi: responseProvinsi.data ?? [],
          );
        case 201:
          var message = result_prefix?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan Get Data";
          }
          throw ApiException(message ?? 'Unauthorized');
        case 401:
          var message = result_prefix?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan Get Data";
          }
          throw ApiException(message ?? 'Unauthorized');
        default:
          var message = result_prefix?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan Get Data";
          }

          log('Message null? ${message == null}');
          if (message != null) {
            throw ApiException('${result_prefix?.response.data['message']}');
          } else {
            throw ApiException('${result_prefix?.response.data}');
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
  Future<BulkDataGeneral?> getDaftarCountryProvinsiCity(
      {required String tokenUser}) async {
    try {
      final resultCountry = await _apiService.getDaftarCountry(
        bearerToken: tokenUser,
      );

      final resultProvinsi = await _apiService.getDaftarProvinsi(
        bearerToken: tokenUser,
      );

      final resultCity =
          await _apiService.getDaftarCity(bearerToken: tokenUser);

      final statusCode = resultCountry?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseCountry =
              ResponseDataGeneral.fromJson(resultCountry?.data);
          final responseProvinsi =
              ResponseDataGeneral.fromJson(resultProvinsi?.data);
          final responseCity = ResponseDataGeneral.fromJson(resultCity?.data);
          return BulkDataGeneral(
            dataCountry: responseCountry.data ?? [],
            dataProvinsi: responseProvinsi.data ?? [],
            dataCity: responseCity.data ?? [],
          );
        case 201:
          var message = resultCountry?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan Get Data";
          }
          throw ApiException(message ?? 'Unauthorized');
        case 401:
          var message = resultCountry?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan Get Data";
          }
          throw ApiException(message ?? 'Unauthorized');
        default:
          var message = resultCountry?.response.data['message'];

          if (message == 'Invalid login details') {
            message = "Kesalahan Get Data";
          }

          log('Message null? ${message == null}');
          if (message != null) {
            throw ApiException('${resultCountry?.response.data['message']}');
          } else {
            throw ApiException('${resultCountry?.response.data}');
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
  Future doCreateCustomer(
      {required String token, required RequestCreateCustomer request}) async {
    try {
      final result = await _apiService.doCreateCustomer(
        bearerToken: token,
        request: request,
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
  Future<ResponseDataGeneral?> getDaftarKategoriBarang(
      {required String tokenUser}) async {
    try {
      final result =
          await _apiService.getDataKategoriBarang(bearerToken: tokenUser);

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseDataGeneral.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseDataGeneral.fromJson(result?.data);
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
  Future<ResponseListCalendar?> getDaftarKalender(
      {required String tokenUser,
      required String startDate,
      required String endDate}) async {
    try {
      final result = await _apiService.getDaftarKalender(
          bearerToken: tokenUser, endDate: endDate, startDate: startDate);

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseListCalendar.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseListCalendar.fromJson(result?.data);
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
  Future<ResponseDetailCalendar?> getDetailKalender(
      {required String tokenUser, required String date}) async {
    try {
      final result = await _apiService.getDetailKalender(
          bearerToken: tokenUser, date: date);

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseDetailCalendar.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseDetailCalendar.fromJson(result?.data);
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
  Future<ResponseDetailTagihan?> getDetailTagihan(
      {required String tokenUser, required String id}) async {
    try {
      final result =
          await _apiService.getDetailTagihan(bearerToken: tokenUser, id: id);

      final statusCode = result?.response.statusCode;

      switch (statusCode) {
        case 200:
          final responseData = ResponseDetailTagihan.fromJson(result?.data);
          return responseData;
        case 201:
          final responseData = ResponseDetailTagihan.fromJson(result?.data);
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
