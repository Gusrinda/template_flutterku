part of 'packing_detail_bloc.dart';

@freezed
class PackingDetailEvent with _$PackingDetailEvent {
  const factory PackingDetailEvent.getDataDetail({required String idPacking}) =
      GetDataDetail;

  const factory PackingDetailEvent.updateDataPacking({
    required String idPacking,
    required String qtyKresek,
    required String qtyPeti,
    required String qtyIkat,
  }) = UpdateDataPacking;
}
