import 'package:becca_supir/src/data/models/request/request_save_konfirm.dart';
import 'package:becca_supir/src/data/models/response/response_list_belum_konfirm/response_list_belum_konfirm.dart';
import 'package:becca_supir/src/data/source/api_service.dart';
import 'package:becca_supir/src/domain/exception/api_exception.dart';
import 'package:becca_supir/src/domain/repository/doRepository.dart';

class DoRepositoryImpl implements DoRepository {
  DoRepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<ResponseListBelumKonfirm?> getDaftarDOBelumKonfirm(
      {required String username}) async {
    try {
      final result =
          await _apiService.getDaftarDO(request: {'m_user_name': username});

      if (result?.msg == '') {
        return result;
      }
      throw ApiException(result?.msg ?? '');
    } catch (e) {
      print(e.toString());
      throw ApiException("Error catch : ${e.toString()}");
    }
  }

  @override
  Future<String> simpanKonfirmDO(
      {required RequestSaveKonfirm requestData}) async {
    try {
      final result =
          await _apiService.simpanKonfirmDO(requestData: requestData);

      if (result == 'Data berhasil disimpan!') {
        return result;
      }
      throw ApiException(result ?? '');
    } catch (e) {
      print(e.toString());
      throw ApiException("Error catch : ${e.toString()}");
    }
  }
}
