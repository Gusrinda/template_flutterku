part of 'so_create_bloc.dart';

abstract class SoCreateEvent extends Equatable {
  const SoCreateEvent();
}

class OnSetupDataAwal extends SoCreateEvent {
  const OnSetupDataAwal();

  @override
  List<Object?> get props => [];
}

class OnSelectWilayahCustomer extends SoCreateEvent {
  const OnSelectWilayahCustomer(this.dataWilayah);
  final DataWilayah dataWilayah;
  @override
  List<Object?> get props => [dataWilayah];
}

class OnSelectCustomer extends SoCreateEvent {
  const OnSelectCustomer(this.dataCustomer);
  final DataCustomer dataCustomer;
  @override
  List<Object?> get props => [dataCustomer];
}

class OnUpdateRequestCreateSO extends SoCreateEvent {
  const OnUpdateRequestCreateSO({required this.requestSO});
  final RequestCreateSo requestSO;
  @override
  List<Object?> get props => [requestSO];
}

class OnNomorPOChanged extends SoCreateEvent {
  const OnNomorPOChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnCatatanPOChanged extends SoCreateEvent {
  const OnCatatanPOChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnDatePoChanged extends SoCreateEvent {
  const OnDatePoChanged(this.tanggal);
  final DateTime tanggal;
  @override
  List<Object?> get props => [tanggal];
}

class OnBiayaKirimChanged extends SoCreateEvent {
  const OnBiayaKirimChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnAmountDiskonChanged extends SoCreateEvent {
  const OnAmountDiskonChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}


class OnTipePengirimanChanged extends SoCreateEvent {
  const OnTipePengirimanChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}


class OnTipeDiskonChanged extends SoCreateEvent {
  const OnTipeDiskonChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class ONSelectedPPNChanged extends SoCreateEvent {
  const ONSelectedPPNChanged(this.text);
  final DataPPN text;
  @override
  List<Object?> get props => [text];
}

class OnSelectedPPH1Changed extends SoCreateEvent {
  const OnSelectedPPH1Changed(this.text);
  final DataPPH text;
  @override
  List<Object?> get props => [text];
}

class OnSelectedPPH2Changed extends SoCreateEvent {
  const OnSelectedPPH2Changed(this.text);
  final DataPPH text;
  @override
  List<Object?> get props => [text];
}

class OnSubmitSO extends SoCreateEvent {
  const OnSubmitSO();
  // final DataPPH text;
  @override
  List<Object?> get props => [];
}

class SetupEditSO extends SoCreateEvent {
  SetupEditSO({required this.request, required this.editingData});
  final RequestCreateSo request;
  final EditingDataSO editingData;
  @override
  List<Object?> get props => [];
}

class OnPostingSO extends SoCreateEvent {
  OnPostingSO({required this.idSO});
  final String idSO;
  @override
  List<Object?> get props => [];
}
