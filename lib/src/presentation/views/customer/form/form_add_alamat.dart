import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/model/form_text_input.dart';
import 'package:sulinda_sales/src/core/utils/dialogs.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_customer.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_data_general.dart';
import 'package:sulinda_sales/src/presentation/blocs/general/bloc/general_bloc.dart';
import 'package:sulinda_sales/src/presentation/widgets/hero_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class FormAddAlamat extends StatefulWidget {
  const FormAddAlamat({super.key, this.mCustDAddress});

  static const String routeName = "/form_add_alamat";
  final MCustDAddress? mCustDAddress;

  @override
  State<FormAddAlamat> createState() => _FormAddAlamatState();
}

class _FormAddAlamatState extends State<FormAddAlamat> {
  List<DataGeneral>? daftarCountry;
  List<DataGeneral>? daftarProvinsi;
  List<DataGeneral>? daftarCity;

  DataGeneral? selectedCountry;
  DataGeneral? selectedProvinsi;
  DataGeneral? selectedCity;

  FormTextInput fieldNamaLokasi = FormTextInput.pure();
  FormTextInput fieldAlamatLokasi = FormTextInput.pure();
  FormTextInput fieldKodePos = FormTextInput.pure();
  FormTextInput fieldLattitude = FormTextInput.pure();
  FormTextInput fieldLongitude = FormTextInput.pure();
  FormTextInput fieldNamaCP1 = FormTextInput.pure();
  FormTextInput fieldNomorCP1 = FormTextInput.pure();
  FormTextInput fieldEmailCP1 = FormTextInput.pure();
  FormTextInput fieldNamaCP2 = FormTextInput.pure();
  FormTextInput fieldNomorCP2 = FormTextInput.pure();
  FormTextInput fieldEmailCP2 = FormTextInput.pure();
  FormTextInput fieldFax = FormTextInput.pure();
  FormTextInput fieldCatatan = FormTextInput.pure();

  DateTime? ultahCP1;
  DateTime? ultahCP2;

  @override
  void initState() {
    final blocWilayah = context.read<GeneralBloc>();

    List<DataGeneral> countrys =
        List.from(blocWilayah.state.daftarDataBulk?.dataCountry ?? []);

    List<DataGeneral> provinsis =
        List.from(blocWilayah.state.daftarDataBulk?.dataProvinsi ?? []);

    List<DataGeneral> citys =
        List.from(blocWilayah.state.daftarDataBulk?.dataCity ?? []);

    daftarCountry = [];
    daftarProvinsi = [];
    daftarCity = [];

    // Urutkan berdasarkan text
    countrys.sort((a, b) => a.text!.compareTo(b.text!));
    provinsis.sort((a, b) => a.text!.compareTo(b.text!));
    citys.sort((a, b) => a.text!.compareTo(b.text!));

    for (var element in countrys) {
      daftarCountry?.add(element);
    }

    for (var element in provinsis) {
      daftarProvinsi?.add(element);
    }

    for (var element in citys) {
      daftarCity?.add(element);
    }

    if (widget.mCustDAddress != null) {
      fieldNamaLokasi.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrName ?? '';
      fieldAlamatLokasi.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrAddress ?? '';
      fieldKodePos.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrZipcode ?? '';
      fieldLattitude.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrGeoLatitude ?? '';
      fieldLongitude.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrGeoLongitude ?? '';
      fieldNamaCP1.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrCp1Name ?? '';
      fieldNomorCP1.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrCp1Phone ?? '';
      fieldEmailCP1.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrCp1Email ?? '';
      fieldNamaCP2.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrCp2Name ?? '';
      fieldNomorCP2.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrCp2Phone ?? '';
      fieldEmailCP2.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrCp2Email ?? '';
      fieldFax.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrFax ?? '';
      fieldCatatan.textEditingController.text =
          widget.mCustDAddress?.mCustDAddrNote ?? '';

      DataGeneral country = daftarCountry!
          .where((element) =>
              element.text == widget.mCustDAddress?.mCustDAddrCountry)
          .first;

      DataGeneral provinsi = daftarProvinsi!
          .where((element) =>
              element.text == widget.mCustDAddress?.mCustDAddrProvince)
          .first;

      DataGeneral city = daftarCity!
          .where(
              (element) => element.text == widget.mCustDAddress?.mCustDAddrCity)
          .first;

      selectedCountry = country;
      selectedProvinsi = provinsi;
      selectedCity = city;

      ultahCP1 = kMySqlDateFormat
          .parse(widget.mCustDAddress?.mCustDAddrCp1Birthdate ?? '2024-12-12');
      ultahCP2 = kMySqlDateFormat
          .parse(widget.mCustDAddress?.mCustDAddrCp2Birthdate ?? '2024-12-12');
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> daftarDropdownCountry = List.from(daftarCountry!.map(
        (e) =>
            DropdownMenuItem(value: e.text ?? '', child: Text(e.text ?? ''))));

    List<DropdownMenuItem> daftarDropdownProvinsi = List.from(daftarProvinsi!
        .map((e) =>
            DropdownMenuItem(value: e.text ?? '', child: Text(e.text ?? ''))));

    List<DropdownMenuItem> daftarDropdownCity = List.from(daftarCity!.map((e) =>
        DropdownMenuItem(value: e.text ?? '', child: Text(e.text ?? ''))));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Form Alamat"),
        backgroundColor: themeHijau,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
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
                textEditingController: fieldNamaLokasi.textEditingController,
                hintText: "Nama Lokasi",
                enabled: true,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
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
                  hintText: "Nama Negara",
                  textInputAction: TextInputAction.next,
                  currentSelectedValue: selectedCountry?.text,
                  daftarString:
                      daftarCountry!.map((wilayah) => wilayah.text!).toList(),
                  inputItems: daftarDropdownCountry,
                  onChanged: (value) {
                    print("Selected Value ${value}");
                    setState(() {
                      DataGeneral wilayah = daftarCountry!
                          .where((element) => element.text == value)
                          .first;

                      selectedCountry = wilayah;
                    });
                  },
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
                  hintText: "Nama Provinsi",
                  textInputAction: TextInputAction.next,
                  currentSelectedValue: selectedProvinsi?.text,
                  daftarString:
                      daftarProvinsi!.map((wilayah) => wilayah.text!).toList(),
                  inputItems: daftarDropdownProvinsi,
                  onChanged: (value) {
                    print("Selected Value ${value}");
                    setState(() {
                      DataGeneral wilayah = daftarProvinsi!
                          .where((element) => element.text == value)
                          .first;

                      selectedProvinsi = wilayah;
                    });
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
                  hintText: "Nama Kota",
                  textInputAction: TextInputAction.next,
                  currentSelectedValue: selectedCity?.text,
                  daftarString:
                      daftarCity!.map((wilayah) => wilayah.text!).toList(),
                  inputItems: daftarDropdownCity,
                  onChanged: (value) {
                    print("Selected Value ${value}");
                    setState(() {
                      DataGeneral wilayah = daftarCity!
                          .where((element) => element.text == value)
                          .first;

                      selectedCity = wilayah;
                    });
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
                textEditingController: fieldAlamatLokasi.textEditingController,
                hintText: "Alamat Lokasi",
                enabled: true,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
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
                textEditingController: fieldKodePos.textEditingController,
                hintText: "Kode Pos",
                enabled: true,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
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
                textEditingController: fieldLattitude.textEditingController,
                hintText: "Lattitude",
                enabled: false,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
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
                textEditingController: fieldLongitude.textEditingController,
                hintText: "Longitude",
                enabled: false,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
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
                textEditingController: fieldNamaCP1.textEditingController,
                hintText: "Nama CP 1",
                enabled: true,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
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
                textEditingController: fieldNomorCP1.textEditingController,
                hintText: "No. Telp 1",
                enabled: true,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
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
                textEditingController: fieldEmailCP1.textEditingController,
                hintText: "Email CP 1",
                enabled: true,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
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
                textEditingController: TextEditingController(
                  text: ultahCP1 != null
                      ? kDateFullMonthFormat.format(
                          ultahCP1 ?? DateTime.now(),
                        )
                      : null,
                ),
                hintText: "Ultah CP 1",
                enabled: true,
                textInputAction: TextInputAction.next,
                readOnly: true,
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );

                  if (picked != null) {
                    setState(() {
                      ultahCP1 = picked;
                    });
                  }
                },
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
                textEditingController: fieldNamaCP2.textEditingController,
                hintText: "Nama CP 2",
                enabled: true,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
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
                textEditingController: fieldNomorCP2.textEditingController,
                hintText: "No. Telp 2",
                enabled: true,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
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
                textEditingController: fieldEmailCP2.textEditingController,
                hintText: "Email CP 2",
                enabled: true,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
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
                textEditingController: TextEditingController(
                  text: ultahCP2 != null
                      ? kDateFullMonthFormat.format(
                          ultahCP2 ?? DateTime.now(),
                        )
                      : null,
                ),
                hintText: "Ultah CP 2",
                enabled: true,
                textInputAction: TextInputAction.next,
                readOnly: true,
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );

                  if (picked != null) {
                    setState(() {
                      ultahCP2 = picked;
                    });
                  }
                },
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
                textEditingController: fieldFax.textEditingController,
                hintText: "Fax",
                enabled: true,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
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
                textEditingController: fieldCatatan.textEditingController,
                hintText: "Catatan Alamat",
                enabled: true,
                textInputAction: TextInputAction.next,
                onChanged: (nama) {
                  setState(() {});
                },
                errorText: null,
              ),
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
          minimum: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          child: ElevatedButton(
              onPressed: () async {
                final isSimpan = await showVerifikasiDialog(
                    context: context,
                    message: "Apakah Anda yakin untuk menambah data alamat?");

                if (isSimpan) {
                  MCustDAddress dataAlamat = MCustDAddress(
                    mCustDAddrName: fieldNamaLokasi.textEditingController.text,
                    mCustDAddrAddress:
                        fieldAlamatLokasi.textEditingController.text,
                    mCustDAddrCity: selectedCity?.text ?? '',
                    mCustDAddrCountry: selectedCountry?.text ?? '',
                    mCustDAddrProvince: selectedProvinsi?.text ?? '',
                    mCustDAddrCityId:
                        int.tryParse(selectedCity?.text ?? '0') ?? 0,
                    mCustDAddrProvinceId:
                        int.tryParse(selectedProvinsi?.text ?? '0') ?? 0,
                    mCustDAddrCountryId:
                        int.tryParse(selectedCountry?.text ?? '0') ?? 0,
                    mCustDAddrZipcode: fieldKodePos.textEditingController.text,
                    mCustDAddrFax: fieldFax.textEditingController.text,
                    mCustDAddrNote: fieldCatatan.textEditingController.text,
                    mCustDAddrGeoLatitude:
                        fieldLattitude.textEditingController.text,
                    mCustDAddrGeoLongitude:
                        fieldLongitude.textEditingController.text,
                    mCustDAddrCp1Name: fieldNamaCP1.textEditingController.text,
                    mCustDAddrCp1Email:
                        fieldEmailCP1.textEditingController.text,
                    mCustDAddrCp1Phone:
                        fieldNomorCP1.textEditingController.text,
                    mCustDAddrCp1Birthdate: ultahCP1 != null
                        ? kMySqlDateFormat.format(ultahCP1 ?? DateTime.now())
                        : null,
                    mCustDAddrCp2Name: fieldNamaCP2.textEditingController.text,
                    mCustDAddrCp2Email:
                        fieldEmailCP2.textEditingController.text,
                    mCustDAddrCp2Phone:
                        fieldNomorCP2.textEditingController.text,
                    mCustDAddrCp2Birthdate: ultahCP2 != null
                        ? kMySqlDateFormat.format(ultahCP2 ?? DateTime.now())
                        : null,
                  );

                  log("DATA MCUST ADDRESS\n${jsonEncode(dataAlamat)}");

                  Navigator.pop(context, dataAlamat);
                }
              },
              child: Text("Tambah Data"))),
    );
  }
}
