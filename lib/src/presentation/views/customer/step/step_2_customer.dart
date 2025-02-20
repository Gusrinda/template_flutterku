import 'dart:io';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/config/theme_colors.dart';
import 'package:sulinda_sales/src/core/utils/compress.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_data_general.dart';
import 'package:sulinda_sales/src/presentation/blocs/customer/bloc/customer_create_bloc.dart';
import 'package:sulinda_sales/src/presentation/widgets/chip_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/hero_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class Step2CustomerView extends StatefulWidget {
  const Step2CustomerView({super.key});

  @override
  State<Step2CustomerView> createState() => _Step2CustomerViewState();
}

class _Step2CustomerViewState extends State<Step2CustomerView> {
  List<DataGeneral>? daftarJatuhTempo;

  DataGeneral? selectedJatuhTempo;
  DataGeneral? selectedBJTKhusus;

  @override
  void initState() {
    final blocCustomer = context.read<CustomerCreateBloc>();

    List<DataGeneral> daftarJatuhTT =
        List.from(blocCustomer.state.bulkDataGeneral?.dataJatuhTempo ?? []);

    daftarJatuhTempo = [];

    for (var element in daftarJatuhTT) {
      daftarJatuhTempo?.add(element);
    }

    super.initState();
  }

  final CurrencyTextInputFormatter _formatter =
      CurrencyTextInputFormatter.currency(
    enableNegative: false,
    decimalDigits: 0,
    symbol: '',
  );

  @override
  Widget build(BuildContext context) {
    final blocCustomer = context.read<CustomerCreateBloc>();

    List<DropdownMenuItem> daftarDropdownBJT = List.from(daftarJatuhTempo!.map(
        (e) =>
            DropdownMenuItem(value: e.text ?? '', child: Text(e.text ?? ''))));

    return BlocBuilder<CustomerCreateBloc, CustomerCreateState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Hero(
                tag: 'Label-KreditCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "Kredit Limit",
                  labelColor: fontColorBold,
                  mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-KreditCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    hintText: "0",
                    textAlign: TextAlign.end,
                    inputFormatters: [_formatter],
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    textEditingController:
                        state.fieldKreditLimit.textEditingController,
                    onChanged: (name) => context
                        .read<CustomerCreateBloc>()
                        .add(OnKreditLimitChange(name)),
                    errorText: state.fieldKreditLimit.invalid
                        ? 'Silakan Isi Field Ini'
                        : null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-BatasJatuhTempo',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "Batas Jatuh Tempo",
                  labelColor: fontColorBold,
                  mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-BatasJatuhTempo',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                    color: Colors.transparent,
                    child: FormzDropDownField(
                      typeDropdown: 'BJTempo',
                      readOnly: true,
                      hintText: "Batas Jatuh Tempo",
                      textInputAction: TextInputAction.next,
                      currentSelectedValue: selectedJatuhTempo?.text,
                      daftarString: daftarJatuhTempo!
                          .map((wilayah) => wilayah.text!)
                          .toList(),
                      inputItems: daftarDropdownBJT,
                      onChanged: (value) {
                        print("Selected Value ${value}");
                        setState(() {
                          DataGeneral wilayah = daftarJatuhTempo!
                              .where((element) => element.text == value)
                              .first;

                          selectedJatuhTempo = wilayah;

                          context
                              .read<CustomerCreateBloc>()
                              .add(OnSelectJatuhTempo(wilayah));
                        });
                      },
                    )),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-BatasJatuhTempoBarangKhusus',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "BJT Barang Khusus",
                  labelColor: fontColorBold,
                  mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-BatasJatuhTempoBarangKhusus',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                    color: Colors.transparent,
                    child: FormzDropDownField(
                      typeDropdown: 'BJTempo',
                      readOnly: true,
                      hintText: "BJT Barang Khusus",
                      textInputAction: TextInputAction.next,
                      currentSelectedValue: selectedBJTKhusus?.text,
                      daftarString: daftarJatuhTempo!
                          .map((wilayah) => wilayah.text!)
                          .toList(),
                      inputItems: daftarDropdownBJT,
                      onChanged: (value) {
                        print("Selected Value ${value}");
                        setState(() {
                          DataGeneral wilayah = daftarJatuhTempo!
                              .where((element) => element.text == value)
                              .first;

                          selectedBJTKhusus = wilayah;

                          context
                              .read<CustomerCreateBloc>()
                              .add(OnSelectBJTKhusus(wilayah));
                        });
                      },
                    )),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-NoTelp1',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "No. Telepon 1",
                  labelColor: fontColorBold,
                  mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-NoTelp1',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    hintText: "Tulis No. Telp 1",
                    enabled: true,
                    // trailing: Icon(Icons.calendar_month),
                    textInputAction: TextInputAction.next,
                    textEditingController:
                        state.fieldNomorTelp1.textEditingController,
                    onChanged: (name) => context
                        .read<CustomerCreateBloc>()
                        .add(OnTelp1Changed(name)),
                    errorText: state.fieldNomorTelp1.invalid
                        ? 'Silakan Isi Field Ini'
                        : null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-Hp1',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "No. HP 1",
                  labelColor: fontColorBold,
                  mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-Hp1',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    hintText: "Tulis No. HP 1",
                    enabled: true,
                    // trailing: Icon(Icons.calendar_month),
                    textInputAction: TextInputAction.next,
                    textEditingController:
                        state.fieldNomorHP1.textEditingController,
                    onChanged: (name) => context
                        .read<CustomerCreateBloc>()
                        .add(OnHp1Changed(name)),
                    errorText: state.fieldNomorHP1.invalid
                        ? 'Silakan Isi Field Ini'
                        : null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-NoTelp2',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "No. Telepon 2",
                  labelColor: fontColorBold,
                  // mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-NoTelp2',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    hintText: "Tulis No. Telp 2",
                    enabled: true,
                    // trailing: Icon(Icons.calendar_month),
                    textInputAction: TextInputAction.next,
                    textEditingController:
                        state.fieldNomorTelp2.textEditingController,
                    onChanged: (name) => context
                        .read<CustomerCreateBloc>()
                        .add(OnTelp1Changed(name)),
                    errorText: state.fieldNomorTelp2.invalid
                        ? 'Silakan Isi Field Ini'
                        : null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-Hp2',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "No. HP 2",
                  labelColor: fontColorBold,
                  // mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-Hp2',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    hintText: "Tulis No. HP 2",
                    enabled: true,
                    // trailing: Icon(Icons.calendar_month),
                    textInputAction: TextInputAction.next,
                    textEditingController:
                        state.fieldNomorHP2.textEditingController,
                    onChanged: (name) => context
                        .read<CustomerCreateBloc>()
                        .add(OnHp2Changed(name)),
                    errorText: state.fieldNomorHP2.invalid
                        ? 'Silakan Isi Field Ini'
                        : null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-Fax',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "Fax",
                  labelColor: fontColorBold,
                  // mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-Fax',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    hintText: "Tulis Fax",
                    enabled: true,
                    // trailing: Icon(Icons.calendar_month),
                    textInputAction: TextInputAction.next,
                    textEditingController: state.fieldFax.textEditingController,
                    onChanged: (name) => context
                        .read<CustomerCreateBloc>()
                        .add(OnFieldFaxChanged(name)),
                    errorText:
                        state.fieldFax.invalid ? 'Silakan Isi Field Ini' : null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-Email',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "Email",
                  labelColor: fontColorBold,
                  // mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-Email',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    hintText: "Tulis Email",
                    enabled: true,
                    // trailing: Icon(Icons.calendar_month),
                    textInputAction: TextInputAction.next,
                    textEditingController:
                        state.fieldEmail.textEditingController,
                    onChanged: (name) => context
                        .read<CustomerCreateBloc>()
                        .add(OnFieldEmailChanged(name)),
                    errorText: state.fieldEmail.invalid
                        ? 'Silakan Isi Field Ini'
                        : null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-Website',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "Website",
                  labelColor: fontColorBold,
                  // mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-Website',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    hintText: "Tulis Website",
                    enabled: true,
                    // trailing: Icon(Icons.calendar_month),
                    textInputAction: TextInputAction.next,
                    textEditingController:
                        state.fieldWebsite.textEditingController,
                    onChanged: (name) => context
                        .read<CustomerCreateBloc>()
                        .add(OnFieldWebsiteChanged(name)),
                    errorText: state.fieldWebsite.invalid
                        ? 'Silakan Isi Field Ini'
                        : null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-FileKTP',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "Foto KTP/NPWP/SPPKP",
                  labelColor: fontColorBold,
                  // mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              GestureDetector(
                onTap: () async {
                  if (state.selectedFoto == null) {
                    context
                        .read<CustomerCreateBloc>()
                        .add(OnSelectFotoDokumen());
                  } else {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          content: Container(
                            color: Colors.transparent,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.8,
                            child: PhotoView(
                              backgroundDecoration:
                                  BoxDecoration(color: Colors.transparent),
                              imageProvider: FileImage(state.selectedFoto!),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xFFF1F4FB)),
                  child: Stack(
                    children: [
                      state.selectedFoto == null
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.photo_camera,
                                    size: 40,
                                    color: ThemeColors.greyCaption,
                                  ),
                                  const Text(
                                    "Ketuk untuk ambil KTP / KK / NPWP",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            )
                          : Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                child: FittedBox(
                                  child: Image.file(
                                    state.selectedFoto!,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                      Positioned(
                        left: 12,
                        bottom: 12,
                        child: GestureDetector(
                          onTap: () async {
                            context
                                .read<CustomerCreateBloc>()
                                .add(OnSelectFotoDokumen());
                          },
                          child: IconChip(
                            "Ambil Ulang",
                            textColor: ThemeColors.blackPrimary,
                            icon: Icons.replay_rounded,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        );
      },
    );
  }
}
