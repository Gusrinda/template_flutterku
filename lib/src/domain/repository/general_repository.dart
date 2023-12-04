import 'package:becca_supir/src/data/models/response/general/response_master_general.dart';

abstract class GeneralRepository {
  Future<ResponseMasterGeneral?> getDaftarDataGeneral({
    required String token,
    String? filterKategori,
    String? search,
    String? searchfield,
    String? paginate,
    String? page,
  });
}
