import 'package:becca_supir/src/data/models/response/general/response_master_general.dart';
import 'package:becca_supir/src/data/source/api_service.dart';
import 'package:becca_supir/src/domain/exception/api_exception.dart';
import 'package:becca_supir/src/domain/repository/general_repository.dart';
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
      String? searchfield,
      String? paginate}) async {
    try {
      final result = await _apiService.getDaftarDataGeneral(
          bearerToken: token,
          filterKategori: filterKategori,
          search: search,
          searchfield: searchfield,
          paginate: paginate ?? '100');

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
