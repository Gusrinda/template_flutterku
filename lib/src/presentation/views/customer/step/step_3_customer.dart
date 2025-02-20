import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/utils/dialogs.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_customer.dart';
import 'package:sulinda_sales/src/presentation/blocs/customer/bloc/customer_create_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/customer/form/form_add_alamat.dart';
import 'package:sulinda_sales/src/presentation/views/customer/form/form_add_bank.dart';
import 'package:sulinda_sales/src/presentation/views/customer/form/form_add_penagihan.dart';
import 'package:sulinda_sales/src/presentation/widgets/hero_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_widget.dart';

class Step3CustomerView extends StatefulWidget {
  const Step3CustomerView({super.key});

  @override
  State<Step3CustomerView> createState() => _Step3CustomerViewState();
}

class _Step3CustomerViewState extends State<Step3CustomerView> {
  String? _selectedDrop;

  List<DataPenagihan> daftarPenagihan = [];
  List<MCustDBank> daftarBank = [];

  List<MCustDAddress> daftarAlamatUser = [];

  @override
  void initState() {
    daftarPenagihan = [];
    daftarAlamatUser = [];
    daftarBank = [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: HeaderLabel("Data Penagihan"),
              ),
              Expanded(
                child: SizedBox(),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    FormAddPenagihan.routeName,
                    arguments: daftarPenagihan.isEmpty ? null : daftarPenagihan,
                  ).then(
                    (value) {
                      if (value != null) {
                        if (value is List<DataPenagihan>) {
                          setState(() {
                            daftarPenagihan = value;
                            context
                                .read<CustomerCreateBloc>()
                                .add(OnListPenagihanChanged(daftarPenagihan.map(
                                  (e) {
                                    return MCustDTagihan(
                                        mCustDTagihanDay: e.mCustDTagihanDay,
                                        mCustDTagihanNote: e.mCustDTagihanNote);
                                  },
                                ).toList()));
                          });
                        }
                      }
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  decoration: BoxDecoration(
                      color: themeHijau,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline_rounded,
                        color: Colors.white,
                        size: 10.sp,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Tambah Data",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: daftarPenagihan.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              if (daftarPenagihan[index].isSelected != true) {
                return SizedBox();
              }

              return CardPenagihan(
                dataPenagihan: daftarPenagihan[index],
                onDeletePenagihan: () async {
                  final isSimpan = await showVerifikasiDialog(
                      context: context, message: "Hapus data tagihan?");

                  if (isSimpan) {
                    daftarPenagihan.removeAt(index);
                    setState(() {});
                    context
                        .read<CustomerCreateBloc>()
                        .add(OnListPenagihanChanged(daftarPenagihan.map(
                          (e) {
                            return MCustDTagihan(
                                mCustDTagihanDay: e.mCustDTagihanDay,
                                mCustDTagihanNote: e.mCustDTagihanNote);
                          },
                        ).toList()));
                  }
                },
                onUbahPenagihan: () async {
                  final isSimpan = await showVerifikasiDialog(
                      context: context, message: "Ubah data penagihan?");

                  if (isSimpan == false) {
                    return;
                  }

                  Navigator.pushNamed(context, FormAddPenagihan.routeName,
                          arguments: daftarPenagihan)
                      .then(
                    (value) {
                      if (value != null) {
                        if (value is List<DataPenagihan>) {
                          daftarPenagihan = value;
                          setState(() {});
                          context
                              .read<CustomerCreateBloc>()
                              .add(OnListPenagihanChanged(daftarPenagihan.map(
                                (e) {
                                  return MCustDTagihan(
                                      mCustDTagihanDay: e.mCustDTagihanDay,
                                      mCustDTagihanNote: e.mCustDTagihanNote);
                                },
                              ).toList()));
                        }
                      }
                    },
                  );
                },
              );
            },
          ),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.black12,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: HeaderLabel("Data Alamat"),
              ),
              Expanded(
                child: SizedBox(),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    FormAddAlamat.routeName,
                  ).then(
                    (value) {
                      if (value != null) {
                        if (value is MCustDAddress) {
                          setState(() {
                            daftarAlamatUser.add(value);
                            context
                                .read<CustomerCreateBloc>()
                                .add(OnListAlamatChanged(daftarAlamatUser));
                          });
                        }
                      }
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  decoration: BoxDecoration(
                      color: themeHijau,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline_rounded,
                        color: Colors.white,
                        size: 10.sp,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Tambah Data",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: daftarAlamatUser.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return CardAlamat(
                dataAlamat: daftarAlamatUser[index],
                onEditAlamat: () async {
                  final isSimpan = await showVerifikasiDialog(
                      context: context, message: "Ubah data alamat?");

                  if (isSimpan == false) {
                    return;
                  }

                  Navigator.pushNamed(context, FormAddAlamat.routeName,
                          arguments: daftarAlamatUser[index])
                      .then(
                    (value) {
                      if (value != null) {
                        if (value is MCustDAddress) {
                          daftarAlamatUser[index] = value;
                          setState(() {});
                          context
                              .read<CustomerCreateBloc>()
                              .add(OnListAlamatChanged(daftarAlamatUser));
                        }
                      }
                    },
                  );
                },
                onHapusAlamat: () async {
                  final isSimpan = await showVerifikasiDialog(
                      context: context, message: "Hapus data alamat?");

                  if (isSimpan) {
                    daftarAlamatUser.removeAt(index);
                    setState(() {});
                    context
                        .read<CustomerCreateBloc>()
                        .add(OnListAlamatChanged(daftarAlamatUser));
                  }
                },
              );
            },
          ),
          Divider(
            color: Colors.black12,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: HeaderLabel("Data Bank"),
              ),
              Expanded(
                child: SizedBox(),
              ),
              InkWell(
                onTap: () async {
                  Navigator.pushNamed(
                    context,
                    FormAddBank.routeName,
                  ).then(
                    (value) {
                      if (value != null) {
                        if (value is MCustDBank) {
                          daftarBank.add(value);
                          setState(() {});
                          context
                              .read<CustomerCreateBloc>()
                              .add(OnListBankChanged(daftarBank));
                        }
                      }
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  decoration: BoxDecoration(
                      color: themeHijau,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline_rounded,
                        color: Colors.white,
                        size: 10.sp,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Tambah Data",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: daftarBank.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return CardBank(
                dataBank: daftarBank[index],
                onDeleteItem: () async {
                  final isSimpan = await showVerifikasiDialog(
                      context: context,
                      message: "Apakah Anda yakin untuk hapus data ini?");

                  if (isSimpan) {
                    daftarBank.removeAt(index);
                    setState(() {});
                    context
                        .read<CustomerCreateBloc>()
                        .add(OnListBankChanged(daftarBank));
                  }
                },
                onEditItem: () {
                  Navigator.pushNamed(context, FormAddBank.routeName,
                          arguments: daftarBank[index])
                      .then(
                    (value) {
                      if (value != null) {
                        if (value is MCustDBank) {
                          daftarBank.add(value);
                          setState(() {});
                          context
                              .read<CustomerCreateBloc>()
                              .add(OnListBankChanged(daftarBank));
                        }
                      }
                    },
                  );
                },
              );
            },
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}

class CardBank extends StatelessWidget {
  const CardBank({
    super.key,
    required this.dataBank,
    required this.onDeleteItem,
    required this.onEditItem,
  });

  final MCustDBank dataBank;
  final VoidCallback onDeleteItem;
  final VoidCallback onEditItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(10)),
      child: ExpandablePanel(
        theme: ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center),
        header: Text(
          "${dataBank.mCustDBankName}",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 12.sp),
        ),
        collapsed: SizedBox(),
        expanded: Container(
          margin: EdgeInsets.only(
            top: 12.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormTextLabel(
                label: "Nama Bank",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  textEditingController:
                      TextEditingController(text: dataBank.mCustDBankName),
                  hintText: "Nama Bank",
                  readOnly: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Nomor Rekening",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  textEditingController: TextEditingController(
                      text: dataBank.mCustDBankRekeningNomor),
                  hintText: "Nomor Rekening",
                  readOnly: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Nama Rekening Bank",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  textEditingController: TextEditingController(
                      text: dataBank.mCustDBankRekeningName),
                  hintText: "Nama Rekening Bank",
                  readOnly: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Catatan",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  textEditingController:
                      TextEditingController(text: dataBank.mCustDBankNote),
                  hintText: "Catatan",
                  readOnly: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: onEditItem,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            color: themeHijau,
                            size: 12.sp,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Ubah",
                            style: TextStyle(
                              color: themeHijau,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color: themeHijau,
                              ))),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: onDeleteItem,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delete_forever_rounded,
                            color: Colors.red,
                            size: 12.sp,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Hapus",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color: Colors.red,
                              ))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardPenagihan extends StatelessWidget {
  const CardPenagihan({
    Key? key,
    required this.dataPenagihan,
    required this.onDeletePenagihan,
    required this.onUbahPenagihan,
  }) : super(key: key);

  final DataPenagihan dataPenagihan;
  final VoidCallback onDeletePenagihan;
  final VoidCallback onUbahPenagihan;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(10)),
      child: ExpandablePanel(
        theme: ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center),
        header: Text(
          "PENAGIHAN ${dataPenagihan.mCustDTagihanDay}",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 12.sp),
        ),
        collapsed: SizedBox(),
        expanded: Container(
          margin: EdgeInsets.only(
            top: 12.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormTextLabel(
                label: "Hari Penagihan",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  textEditingController: TextEditingController(
                      text: dataPenagihan.mCustDTagihanDay),
                  hintText: "Hari Penagihan",
                  readOnly: true,
                  trailing: Icon(Icons.more_time_outlined),
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Catatan Penagihan",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  textEditingController: TextEditingController(
                      text: dataPenagihan.mCustDTagihanNote),
                  hintText: "Catatan Penagihan",
                  readOnly: true,
                  trailing: Icon(Icons.more_time_outlined),
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: onUbahPenagihan,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            color: themeHijau,
                            size: 12.sp,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Ubah",
                            style: TextStyle(
                              color: themeHijau,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color: themeHijau,
                              ))),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: onDeletePenagihan,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delete_forever_rounded,
                            color: Colors.red,
                            size: 12.sp,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Hapus",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color: Colors.red,
                              ))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardAlamat extends StatelessWidget {
  const CardAlamat(
      {Key? key,
      required this.dataAlamat,
      required this.onHapusAlamat,
      required this.onEditAlamat})
      : super(key: key);

  final MCustDAddress dataAlamat;
  final VoidCallback onHapusAlamat;
  final VoidCallback onEditAlamat;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(10)),
      child: ExpandablePanel(
        theme: ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center),
        header: Text(
          "${dataAlamat.mCustDAddrName}",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 12.sp),
        ),
        collapsed: SizedBox(),
        expanded: Container(
          margin: EdgeInsets.only(
            top: 12.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormTextLabel(
                label: "Nama Lokasi",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController:
                      TextEditingController(text: dataAlamat.mCustDAddrName),
                  hintText: "Nama Lokasi",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Nama Negara",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                  color: Colors.transparent,
                  child: FormzDropDownField(
                    typeDropdown: 'NamaNegara',
                    readOnly: true,
                    daftarString: [dataAlamat.mCustDAddrCountry!],
                    hintText: "Nama Negara",
                    textInputAction: TextInputAction.next,
                    currentSelectedValue: dataAlamat.mCustDAddrCountry,
                    inputItems: null,
                    onSelectedValue: (value) {},
                  )),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Nama Provinsi",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                  color: Colors.transparent,
                  child: FormzDropDownField(
                    typeDropdown: 'NamaProvinsi',
                    readOnly: true,
                    daftarString: [dataAlamat.mCustDAddrProvince!],
                    hintText: "Nama Provinsi",
                    textInputAction: TextInputAction.next,
                    currentSelectedValue: dataAlamat.mCustDAddrProvince,
                    inputItems: null,
                    onSelectedValue: (value) {
                      print("Selected Value ${value}");
                    },
                  )),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Nama Kota",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                  color: Colors.transparent,
                  child: FormzDropDownField(
                    typeDropdown: 'NamaKota',
                    readOnly: true,
                    daftarString: [dataAlamat.mCustDAddrCity!],
                    hintText: "Nama Kota",
                    textInputAction: TextInputAction.next,
                    currentSelectedValue: dataAlamat.mCustDAddrCity,
                    inputItems: null,
                    onSelectedValue: (value) {
                      print("Selected Value ${value}");
                    },
                  )),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Alamat Lokasi",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController:
                      TextEditingController(text: dataAlamat.mCustDAddrAddress),
                  hintText: "Alamat Lokasi",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Kode Pos",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController:
                      TextEditingController(text: dataAlamat.mCustDAddrZipcode),
                  hintText: "Kode Pos",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Lattitude",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController: TextEditingController(
                      text: dataAlamat.mCustDAddrGeoLatitude),
                  hintText: "Lattitude",
                  enabled: false,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Longitude",
                labelColor: fontColorBold,
                mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController: TextEditingController(
                      text: dataAlamat.mCustDAddrGeoLongitude),
                  hintText: "Longitude",
                  enabled: false,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Nama CP 1",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController:
                      TextEditingController(text: dataAlamat.mCustDAddrCp1Name),
                  hintText: "Nama CP 1",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "No. Telp 1",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController: TextEditingController(
                      text: dataAlamat.mCustDAddrCp1Phone),
                  hintText: "No. Telp 1",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Email CP 1",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController: TextEditingController(
                      text: dataAlamat.mCustDAddrCp1Email),
                  hintText: "Email CP 1",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Ultah CP 1",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController: TextEditingController(
                      text: dataAlamat.mCustDAddrCp1Birthdate),
                  hintText: "Ultah CP 1",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Nama CP 2",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController:
                      TextEditingController(text: dataAlamat.mCustDAddrCp2Name),
                  hintText: "Nama CP 2",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "No. Telp 2",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController: TextEditingController(
                      text: dataAlamat.mCustDAddrCp2Phone),
                  hintText: "No. Telp 2",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Email CP 2",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController: TextEditingController(
                      text: dataAlamat.mCustDAddrCp2Email),
                  hintText: "Email CP 2",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Ultah CP 2",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController: TextEditingController(
                      text: dataAlamat.mCustDAddrCp2Birthdate),
                  hintText: "Ultah CP 2",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Fax",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController:
                      TextEditingController(text: dataAlamat.mCustDAddrFax),
                  hintText: "Fax",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FormTextLabel(
                label: "Catatan Alamat",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Material(
                color: Colors.transparent,
                child: FormzTextField(
                  readOnly: true,
                  textEditingController:
                      TextEditingController(text: dataAlamat.mCustDAddrNote),
                  hintText: "Catatan Alamat",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {},
                  errorText: null,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: onEditAlamat,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            color: themeHijau,
                            size: 12.sp,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Ubah",
                            style: TextStyle(
                              color: themeHijau,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color: themeHijau,
                              ))),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: onHapusAlamat,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delete_forever_rounded,
                            color: Colors.red,
                            size: 12.sp,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Hapus",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color: Colors.red,
                              ))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
