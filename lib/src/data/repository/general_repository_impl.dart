import 'package:soa_jpt/src/data/models/response/general/response_master_general.dart';
import 'package:soa_jpt/src/data/source/api_service.dart';
import 'package:soa_jpt/src/domain/exception/api_exception.dart';
import 'package:soa_jpt/src/domain/repository/general_repository.dart';
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
      final result = await _apiService.getDaftarDataGeneral(
          bearerToken: token,
          filterKategori: filterKategori,
          search: search,
          page: page,
          searchfield: searchfield,
          paginate: paginate);

      if (result?.data != null) {
        return result;
      } else {
        return null;
      }
    } catch (e) {
      throw ApiException("Error catch : ${e.toString()}");
    }
  }
}
