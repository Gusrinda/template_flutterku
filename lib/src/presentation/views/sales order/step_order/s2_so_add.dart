import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_so.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_pph.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_ppn.dart';
import 'package:sulinda_sales/src/presentation/blocs/general/bloc/general_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/so/create/bloc/so_create_bloc.dart';
import 'package:sulinda_sales/src/presentation/widgets/hero_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class Step2Order extends StatefulWidget {
  const Step2Order({super.key, required this.isEdit});

  final bool isEdit;

  @override
  State<Step2Order> createState() => _Step2OrderState();
}

class _Step2OrderState extends State<Step2Order> {
  List<String> daftarTipePengiriman = ['Per Truck', 'Per KG'];
  List<String> daftarTipeDiskon = ['A', 'P'];

  List<DataPPH>? daftarPPH;
  List<DataPPN>? daftarPPN;

  String? _selectedTipeDiskon;
  String? _selectedTipePengiriman;
  DataPPH? selectedPPH1;
  DataPPH? selectedPPH2;
  DataPPN? selectedPPN;

  String? biayaKirim = '0';

  bool _isFirstTime = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isFirstTime) {
      var soBloc = context.read<SoCreateBloc>().state;
      _hitungTotalan(soBloc);
      _isFirstTime = false;
    }
  }

  @override
  void initState() {
    _selectedTipeDiskon = daftarTipeDiskon.first;
    _selectedTipePengiriman = daftarTipePengiriman.first;

    final blocWilayah = context.read<GeneralBloc>();

    List<DataPPH> pphs = List.from(blocWilayah.state.daftarPPH ?? []);

    daftarPPH = [];

    for (var element in pphs) {
      daftarPPH?.add(element);
    }

    log("DAFTAR PPH ${daftarPPH}");

    List<DataPPN> ppns = List.from(blocWilayah.state.daftarPPN ?? []);

    daftarPPN = [];

    for (var element in ppns) {
      daftarPPN?.add(element);
    }

    var soBloc = context.read<SoCreateBloc>().state;
    _hitungTotalan(soBloc);
    if (widget.isEdit) {
      _selectedTipeDiskon = soBloc.selectedTipeDiskon;
      _selectedTipePengiriman = soBloc.selectedTipePengiriman;
      selectedPPH1 = soBloc.selectedPPH1;
      selectedPPH2 = soBloc.selectedPPH2;
      selectedPPN = soBloc.selectedPPN;
    }

    super.initState();
    setState(() {
      _hitungTotalan(soBloc);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isFirstTime) {
      log("IS FIRST TIME! ${_isFirstTime}");
      var soBloc = context.read<SoCreateBloc>().state;
      _hitungTotalan(soBloc);
      _isFirstTime = false;
    }

    List<DropdownMenuItem> daftarDropDiskon = List.from(daftarTipeDiskon
        .map((e) => DropdownMenuItem(value: e, child: Text(e))));
    List<DropdownMenuItem> daftarDropPengiriman = List.from(daftarTipePengiriman
        .map((e) => DropdownMenuItem(value: e, child: Text(e))));

    List<DropdownMenuItem> daftarDropDownPPH = List.from(daftarPPH!.map((e) =>
        DropdownMenuItem(value: e.text ?? '', child: Text(e.text ?? ''))));

    List<DropdownMenuItem> daftarDropDownPPN = List.from(daftarPPN!.map((e) =>
        DropdownMenuItem(value: e.text ?? '', child: Text(e.text ?? ''))));

    return SingleChildScrollView(
      child: BlocBuilder<SoCreateBloc, SoCreateState>(
        builder: (context, state) {
          var daftarBarangSO = List.from(state.requestCreateSo?.tSoD ?? []);
          // if (daftarBarangSO.isNotEmpty) {
          //   _hitungTotalan(state);
          // }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Hero(
                        tag: 'Label-TipePengiriman',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: FormTextLabel(
                          label: "Tipe Pengiriman",
                          labelColor: fontColorBold,
                          // mandatory: true,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Hero(
                        tag: 'Form-TipePengirimanBarang',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: Material(
                            color: Colors.transparent,
                            child: FormzDropDownField(
                              typeDropdown: 'TipePengiriman',
                              readOnly: true,
                              enabled: true,
                              daftarString: daftarTipePengiriman,
                              hintText: "Tipe Pengiriman",
                              textInputAction: TextInputAction.next,
                              currentSelectedValue: _selectedTipePengiriman,
                              inputItems: daftarDropPengiriman,
                              onChanged: (value) {
                                print("Selected Value ${value}");
                                setState(() {
                                  _selectedTipePengiriman = value;
                                  context
                                      .read<SoCreateBloc>()
                                      .add(OnTipePengirimanChanged(value!));
                                  Timer(
                                      // ignore: prefer_const_constructors
                                      const Duration(seconds: 2), () async {
                                    setState(() {
                                      _hitungTotalan(state);
                                    });
                                  });
                                });
                              },
                            )),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Hero(
                          tag: 'Label-BiayaKirimPO',
                          flightShuttleBuilder: flightShuttleBuilder,
                          child: FormTextLabel(
                            label: "Biaya Kirim",
                            labelColor: fontColorBold,
                            // mandatory: true,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Hero(
                          tag: 'Form-BiayaKirimPO',
                          flightShuttleBuilder: flightShuttleBuilder,
                          child: Material(
                            color: Colors.transparent,
                            child: FormzTextField(
                              hintText: "0", textAlign: TextAlign.end,
                              enabled: true,
                              // trailing: Icon(Icons.calendar_month),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.number,
                              textEditingController:
                                  state.fieldBiayaKirim.textEditingController,
                              onChanged: (name) async {
                                context
                                    .read<SoCreateBloc>()
                                    .add(OnBiayaKirimChanged(name));
                                Timer(
                                    // ignore: prefer_const_constructors
                                    const Duration(seconds: 2), () async {
                                  setState(() {
                                    biayaKirim = name;

                                    _hitungTotalan(state);
                                  });
                                });
                              },
                              errorText: state.fieldBiayaKirim.invalid
                                  ? 'Silakan Isi Field Ini'
                                  : null,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Hero(
                        tag: 'Label-TipeDiskon',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: FormTextLabel(
                          label: "Tipe Diskon",
                          labelColor: fontColorBold,
                          // mandatory: true,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Hero(
                        tag: 'Form-TipeDiksonBarang',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: Material(
                            color: Colors.transparent,
                            child: FormzDropDownField(
                              typeDropdown: 'TipeDiskon',
                              readOnly: true,
                              enabled: true,
                              daftarString: daftarTipeDiskon,
                              hintText: "Tipe Diskon",
                              textInputAction: TextInputAction.next,
                              currentSelectedValue: _selectedTipeDiskon,
                              inputItems: daftarDropDiskon,
                              onChanged: (value) {
                                print("Selected Value ${value}");
                                setState(() {
                                  _selectedTipeDiskon = value;
                                  context
                                      .read<SoCreateBloc>()
                                      .add(OnTipeDiskonChanged(value!));
                                });
                              },
                            )),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Hero(
                        tag: 'Label-AmountTipeDiskon',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: FormTextLabel(
                          label: "",
                          labelColor: fontColorBold,
                          // mandatory: true,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Hero(
                        tag: 'Form-AmountTipeDiskon',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: Material(
                          color: Colors.transparent,
                          child: FormzTextField(
                            textAlign: TextAlign.end,
                            hintText: "0",
                            enabled: true,
                            keyboardType: TextInputType.number,
                            // trailing: Icon(Icons.calendar_month),
                            textInputAction: TextInputAction.next,
                            textEditingController:
                                state.fieldAmountDiskon.textEditingController,
                            onChanged: (name) => context
                                .read<SoCreateBloc>()
                                .add(OnAmountDiskonChanged(name)),
                            errorText: state.fieldAmountDiskon.invalid
                                ? 'Silakan Isi Field Ini'
                                : null,
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Hero(
                        tag: 'Label-PPN',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: FormTextLabel(
                          label: "PPN",
                          labelColor: fontColorBold,
                          // mandatory: true,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Hero(
                        tag: 'Form-TypePPN',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: Material(
                            color: Colors.transparent,
                            child: FormzDropDownField(
                              typeDropdown: 'PPN',
                              readOnly: true,
                              hintText: "PPN",
                              textInputAction: TextInputAction.next,
                              daftarString: daftarPPN!
                                  .map((wilayah) => wilayah.text!)
                                  .toList(),
                              currentSelectedValue: selectedPPN?.text,
                              inputItems: daftarDropDownPPN,
                              onChanged: (value) {
                                print("Selected Value ${value}");
                                setState(() {
                                  DataPPN wilayah = daftarPPN!
                                      .where((element) => element.text == value)
                                      .first;

                                  selectedPPN = wilayah;

                                  context
                                      .read<SoCreateBloc>()
                                      .add(ONSelectedPPNChanged(wilayah));
                                });
                              },
                            )),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Hero(
                        tag: 'Label-AmountPPN',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: FormTextLabel(
                          label: "",
                          labelColor: fontColorBold,
                          // mandatory: true,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Hero(
                        tag: 'Form-AmountPPN',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: Material(
                          color: Colors.transparent,
                          child: FormzTextField(
                            textEditingController: TextEditingController(
                              text: state.selectedPPN?.valuePct.toString(),
                            ),
                            textAlign: TextAlign.end,
                            hintText: "-",
                            enabled: false,
                            trailing: Icon(Icons.percent),
                            textInputAction: TextInputAction.next,
                            onChanged: (nama) {},
                            errorText: null,
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Hero(
                        tag: 'Label-PPH1',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: FormTextLabel(
                          label: "PPH 1",
                          labelColor: fontColorBold,
                          // mandatory: true,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Hero(
                        tag: 'Form-TypePPH1',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: Material(
                            color: Colors.transparent,
                            child: FormzDropDownField(
                              typeDropdown: 'PPH1',
                              readOnly: true,
                              hintText: "PPH 1",
                              textInputAction: TextInputAction.next,
                              daftarString: daftarPPH!
                                  .map((wilayah) => wilayah.text!)
                                  .toList(),
                              currentSelectedValue: selectedPPH1?.text,
                              inputItems: daftarDropDownPPH,
                              onChanged: (value) {
                                print("Selected Value ${value}");
                                setState(() {
                                  DataPPH wilayah = daftarPPH!
                                      .where((element) => element.text == value)
                                      .first;

                                  selectedPPH1 = wilayah;

                                  context
                                      .read<SoCreateBloc>()
                                      .add(OnSelectedPPH1Changed(wilayah));
                                });
                              },
                            )),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Hero(
                        tag: 'Label-AmountPPH1',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: FormTextLabel(
                          label: "",
                          labelColor: fontColorBold,
                          // mandatory: true,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Hero(
                        tag: 'Form-AmountPPH1',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: Material(
                          color: Colors.transparent,
                          child: FormzTextField(
                            trailing: Icon(Icons.percent),
                            textEditingController: TextEditingController(
                              text: state.selectedPPH1?.valuePct.toString(),
                            ),
                            textAlign: TextAlign.end,
                            hintText: "-",
                            enabled: false,
                            // trailing: Icon(Icons.calendar_month),
                            textInputAction: TextInputAction.next,
                            onChanged: (nama) {},
                            errorText: null,
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Hero(
                        tag: 'Label-PPH2',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: FormTextLabel(
                          label: "PPH 2",
                          labelColor: fontColorBold,
                          // mandatory: true,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Hero(
                        tag: 'Form-TypePPH2',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: Material(
                            color: Colors.transparent,
                            child: FormzDropDownField(
                              typeDropdown: 'PPH2',
                              readOnly: true,
                              hintText: "PPH 2",
                              textInputAction: TextInputAction.next,
                              daftarString: daftarPPH!
                                  .map((wilayah) => wilayah.text!)
                                  .toList(),
                              currentSelectedValue: selectedPPH2?.text,
                              inputItems: daftarDropDownPPH,
                              onChanged: (value) {
                                print("Selected Value ${value}");
                                setState(() {
                                  DataPPH wilayah = daftarPPH!
                                      .where((element) => element.text == value)
                                      .first;

                                  selectedPPH2 = wilayah;

                                  context
                                      .read<SoCreateBloc>()
                                      .add(OnSelectedPPH2Changed(wilayah));
                                });
                              },
                            )),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Hero(
                        tag: 'Label-AmountPPH2',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: FormTextLabel(
                          label: "",
                          labelColor: fontColorBold,
                          // mandatory: true,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Hero(
                        tag: 'Form-AmountPPH2',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: Material(
                          color: Colors.transparent,
                          child: FormzTextField(
                            textEditingController: TextEditingController(
                                text: state.selectedPPH2?.valuePct.toString()),
                            textAlign: TextAlign.end,
                            hintText: "-",
                            enabled: false,
                            trailing: Icon(Icons.percent),
                            textInputAction: TextInputAction.next,
                            onChanged: (nama) {},
                            errorText: null,
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                color: Colors.black12,
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Total Sebelum Diskon",
                      style: TextStyle(
                          color: fontColorBold, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${kRupiahFormat.format(totalSebelumDiskon)}",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: fontColorBold, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Total DPP",
                      style: TextStyle(
                          color: fontColorBold, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${kRupiahFormat.format(totalDPP)}",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: fontColorBold, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Total Diskon",
                      style: TextStyle(
                          color: fontColorBold, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${kRupiahFormat.format(totalDiskon)}",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: fontColorBold, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Total PPN",
                      style: TextStyle(
                          color: fontColorBold, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${kRupiahFormat.format(totalPPN)}",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: fontColorBold, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Total PPH 1",
                      style: TextStyle(
                          color: fontColorBold, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${kRupiahFormat.format(totalPPH1)}",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: fontColorBold, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Total PPH 2",
                      style: TextStyle(
                          color: fontColorBold, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${kRupiahFormat.format(totalPPH2)}",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: fontColorBold, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Total Setelah Pajak",
                      style: TextStyle(
                          color: fontColorBold, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${kRupiahFormat.format(totalSetelahPajak)}",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: fontColorBold, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  double totalSebelumDiskon = 0;
  double totalDiskon = 0;
  double persenDiskon = 0;
  double totalDPP = 0;
  double totalPPN = 0;
  double totalPPH1 = 0;
  double totalPPH2 = 0;
  double totalSetelahPajak = 0;

  void _hitungTotalan(SoCreateState soCreateState) {
    log("TOTALAN S2 SO!");
    totalSebelumDiskon = 0;
    totalDiskon = 0;
    persenDiskon = 0;
    totalDPP = 0;
    totalPPN = 0;
    totalPPH1 = 0;
    totalPPH2 = 0;
    totalSetelahPajak = 0;

    double nilaiPPN = soCreateState.selectedPPN?.valuePct?.toDouble() ?? 0;
    double nilaiPPH1 = soCreateState.selectedPPH1?.valuePct?.toDouble() ?? 0;
    double nilaiPPH2 = soCreateState.selectedPPH2?.valuePct?.toDouble() ?? 0;

    List<TSoD> daftarBarang =
        List.from(soCreateState.requestCreateSo?.tSoD ?? []);

    log("DAFTAR BARANG ${daftarBarang}");

    String tipePengiriman = soCreateState.selectedTipePengiriman ?? 'Per Truck';
    int totalBiayaPengiriman = int.tryParse(biayaKirim ?? '0') ?? 0;

    double totalBerat = 0;

    for (var element in daftarBarang) {
      totalBerat += element.tsoDBerat ?? 0;
    }

    for (var i = 0; i < daftarBarang.length; i++) {
      int biayaKirim = 0;
      int biayaAmoutAwal = daftarBarang[i].tSoDQty! * daftarBarang[i].tSoDPrice!;

      if (tipePengiriman == 'Per KG') {
        biayaKirim = daftarBarang[i].tsoDBerat! * totalBiayaPengiriman;
      } else if (tipePengiriman == 'Per Truck') {
        biayaKirim = ((totalBiayaPengiriman / totalBerat.toInt()) *
                daftarBarang[i].tsoDBerat!)
            .toInt();
      } else {
        biayaKirim = 0;
      }

      log("VALUE BIAYA KIRIM ${biayaKirim}");
      log("VALUE BIAYA AMOUNT AWAL ${biayaAmoutAwal}");

      daftarBarang[i] = daftarBarang[i].copyWith(
        tSoDBykirim: biayaKirim,
        tSoDAmt: biayaAmoutAwal + biayaKirim,
      );
    }

    for (var barang in daftarBarang) {
      // totalSebelumDiskon += barang.tSoDQty! * barang.tSoDPrice!;

      int totalBarang = barang.tSoDQty! * barang.tSoDPrice!;
      totalBarang += barang.tSoDBykirim!;
      totalSebelumDiskon += totalBarang;
    }

    totalDPP = totalSebelumDiskon / (nilaiPPN == 11 ? 1.11 : 1);

    persenDiskon = 0;

    log("SELCTED TIPE DISKON ${soCreateState.selectedTipeDiskon}");

    if (soCreateState.selectedTipeDiskon == 'P') {
      persenDiskon =
          double.tryParse(soCreateState.fieldAmountDiskon.value) ?? 0;

      totalDiskon = totalDPP * persenDiskon / 100;
      log("MASUK A ${totalDiskon} : ${persenDiskon}");
    } else {
      totalDiskon = double.tryParse(soCreateState.fieldAmountDiskon.value) ?? 0;

      persenDiskon = totalDiskon * 100 / totalDPP;
      log("MASUK B ${totalDiskon} : ${persenDiskon}");
    }

    totalDPP -= totalDiskon;

    totalPPN = totalDPP * nilaiPPN / 100;

    totalPPH1 = totalDPP * nilaiPPH1 / 100;
    totalPPH2 = totalDPP * nilaiPPH2 / 100;

    totalSetelahPajak = totalDPP + totalPPN;

    RequestCreateSo requestCreateSo =
        soCreateState.requestCreateSo ?? RequestCreateSo();

    context.read<SoCreateBloc>().add(OnUpdateRequestCreateSO(
          requestSO: requestCreateSo.copyWith(
            tSoHDiscamt: totalDiskon,
            tSoHTipeBykirim: tipePengiriman,
            tstatus: 'In Process',
            tSoHDiscpct: persenDiskon,
            tSoHPph1Amt: totalPPH1,
            tSoHPph2Amt: totalPPH2,
            tSoHTaxamt: totalPPN,
            tSoHTotaldpp: totalDPP,
            tSoHTotalamt: totalSebelumDiskon,
            tSoHTotalnetto: totalSetelahPajak,
            tSoD: daftarBarang,
          ),
        ));
  }
}
