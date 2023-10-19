import 'package:becca_supir/src/data/models/request/request_save_konfirm.dart';
import 'package:becca_supir/src/data/models/response/response_list_belum_konfirm/response_list_belum_konfirm.dart';

abstract class DoRepository {
  
  Future<ResponseListBelumKonfirm?> getDaftarDOBelumKonfirm({
    required String username,
  });

  Future<String> simpanKonfirmDO({required RequestSaveKonfirm requestData});

}
