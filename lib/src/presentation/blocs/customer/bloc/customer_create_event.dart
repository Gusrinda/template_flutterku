part of 'customer_create_bloc.dart';

abstract class CustomerCreateEvent extends Equatable {
  const CustomerCreateEvent();
}

class OnSetupDataAwal extends CustomerCreateEvent {
  const OnSetupDataAwal();

  @override
  List<Object?> get props => [];
}

class OnUpdateRequestCreateCustomer extends CustomerCreateEvent {
  const OnUpdateRequestCreateCustomer({required this.requestCreateCustomer});
  final RequestCreateCustomer requestCreateCustomer;
  @override
  List<Object?> get props => [requestCreateCustomer];
}

class OnSelectTipeCustomer extends CustomerCreateEvent {
  const OnSelectTipeCustomer(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnSelectPrefixName extends CustomerCreateEvent {
  const OnSelectPrefixName(this.data);
  final DataGeneral data;
  @override
  List<Object?> get props => [data];
}

class OnLokasiCustomerDetermined extends CustomerCreateEvent {
  const OnLokasiCustomerDetermined(this.lokasi);
  final LatLng lokasi;
  @override
  List<Object?> get props => [lokasi];
}

class OnSelectGroupWilayah extends CustomerCreateEvent {
  const OnSelectGroupWilayah(this.data);
  final DataGeneral data;
  @override
  List<Object?> get props => [data];
}

class OnSelectPembayaranWilayah extends CustomerCreateEvent {
  const OnSelectPembayaranWilayah(this.data);
  final DataGeneral data;
  @override
  List<Object?> get props => [data];
}

class OnNamaChanged extends CustomerCreateEvent {
  const OnNamaChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnNamaCetakChanged extends CustomerCreateEvent {
  const OnNamaCetakChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnNIKChanged extends CustomerCreateEvent {
  const OnNIKChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnNPWPChanged extends CustomerCreateEvent {
  const OnNPWPChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnKarakterCHanged extends CustomerCreateEvent {
  const OnKarakterCHanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnCatatanChanged extends CustomerCreateEvent {
  const OnCatatanChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnKreditLimitChange extends CustomerCreateEvent {
  const OnKreditLimitChange(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnSelectJatuhTempo extends CustomerCreateEvent {
  const OnSelectJatuhTempo(this.data);
  final DataGeneral data;
  @override
  List<Object?> get props => [data];
}

class OnSelectBJTKhusus extends CustomerCreateEvent {
  const OnSelectBJTKhusus(this.data);
  final DataGeneral data;
  @override
  List<Object?> get props => [data];
}

class OnTelp1Changed extends CustomerCreateEvent {
  const OnTelp1Changed(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnHp1Changed extends CustomerCreateEvent {
  const OnHp1Changed(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnTelp2Changed extends CustomerCreateEvent {
  const OnTelp2Changed(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnHp2Changed extends CustomerCreateEvent {
  const OnHp2Changed(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnFieldFaxChanged extends CustomerCreateEvent {
  const OnFieldFaxChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnFieldEmailChanged extends CustomerCreateEvent {
  const OnFieldEmailChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnFieldWebsiteChanged extends CustomerCreateEvent {
  const OnFieldWebsiteChanged(this.text);
  final String text;
  @override
  List<Object?> get props => [text];
}

class OnSelectFotoDokumen extends CustomerCreateEvent {
  const OnSelectFotoDokumen();

  @override
  List<Object?> get props => [];
}

class OnListAlamatChanged extends CustomerCreateEvent {
  const OnListAlamatChanged(this.daftarAlamat);
  final List<MCustDAddress> daftarAlamat;
  @override
  List<Object?> get props => [daftarAlamat];
}

class OnListPenagihanChanged extends CustomerCreateEvent {
  const OnListPenagihanChanged(this.daftarPenagihan);
  final List<MCustDTagihan> daftarPenagihan;
  @override
  List<Object?> get props => [daftarPenagihan];
}

class OnListBankChanged extends CustomerCreateEvent {
  const OnListBankChanged(this.daftarBank);
  final List<MCustDBank> daftarBank;
  @override
  List<Object?> get props => [daftarBank];
}

class OnSubmitCustomer extends CustomerCreateEvent {
  const OnSubmitCustomer();
  // final DataPPH text;
  @override
  List<Object?> get props => [];
}
