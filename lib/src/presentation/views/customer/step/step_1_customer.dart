import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_data_general.dart';
import 'package:sulinda_sales/src/presentation/blocs/customer/bloc/customer_create_bloc.dart';
import 'package:sulinda_sales/src/presentation/widgets/hero_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class Step1CustomerView extends StatefulWidget {
  const Step1CustomerView({super.key});

  @override
  State<Step1CustomerView> createState() => _Step1CustomerViewState();
}

class _Step1CustomerViewState extends State<Step1CustomerView> {
  List<DataGeneral>? daftarFixedName;
  List<DataGeneral>? daftarGroupWilayah;
  List<DataGeneral>? daftarWilayahPenagihan;

  DataGeneral? selectedFixedName;
  DataGeneral? selectedGroupWilayah;
  DataGeneral? selectedWilayahPenagihan;

  List<String> daftarTipe = [
    'CASHKU',
    'TERMIN',
  ];

  String? _selectedTipe;

  @override
  void initState() {
    // _determinePosition();
    final blocCustomer = context.read<CustomerCreateBloc>();

    List<DataGeneral> daftarPrefix =
        List.from(blocCustomer.state.bulkDataGeneral?.dataPrefix ?? []);

    List<DataGeneral> daftarGroup =
        List.from(blocCustomer.state.bulkDataGeneral?.dataGroupWilayah ?? []);

    List<DataGeneral> daftarPenagihan = List.from(
        blocCustomer.state.bulkDataGeneral?.dataWilayahPenagihan ?? []);

// Urutkan berdasarkan text
    daftarPenagihan.sort((a, b) => a.text!.compareTo(b.text!));

    daftarFixedName = [];
    daftarGroupWilayah = [];
    daftarWilayahPenagihan = [];

    for (var element in daftarPrefix) {
      daftarFixedName?.add(element);
    }

    for (var element in daftarGroup) {
      daftarGroupWilayah?.add(element);
    }

    for (var element in daftarPenagihan) {
      daftarWilayahPenagihan?.add(element);
    }

    super.initState();
  }

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Future<Position?> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    try {
      print("MASUK DETERMINE");

      serviceEnabled = await Geolocator.isLocationServiceEnabled();

      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      print("SERVICE ENABLED");

      permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }

      print("PERMISSION GET");

      if (permission == LocationPermission.deniedForever) {
        print("PERMISSION ERROR DENIED FGORVER GET");
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }

      Position locationData = await Geolocator.getCurrentPosition();

      print("END LOCATION");

      return locationData;
    } catch (e) {
      print("ERROR :: " + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> daftarDropdown = List.from(
        daftarTipe.map((e) => DropdownMenuItem(value: e, child: Text(e))));

    List<DropdownMenuItem> daftarDropdownFixed = List.from(daftarFixedName!.map(
        (e) =>
            DropdownMenuItem(value: e.text ?? '', child: Text(e.text ?? ''))));

    List<DropdownMenuItem> daftarDropdownGroup = List.from(daftarGroupWilayah!
        .map((e) =>
            DropdownMenuItem(value: e.text ?? '', child: Text(e.text ?? ''))));

    List<DropdownMenuItem> daftarDropdownPenagihan = List.from(
        daftarWilayahPenagihan!.map((e) =>
            DropdownMenuItem(value: e.text ?? '', child: Text(e.text ?? ''))));

    return BlocBuilder<CustomerCreateBloc, CustomerCreateState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Hero(
                tag: 'Label-NomorDraftCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "No. Draft",
                  labelColor: fontColorBold,
                  // mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-NomorDraftCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    textEditingController:
                        TextEditingController(text: "Draft-001"),
                    // hintText: "0",
                    enabled: false,
                    // trailing: Icon(Icons.calendar_month),
                    textInputAction: TextInputAction.next,
                    onChanged: (nama) {},
                    errorText: null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-TipeCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "Tipe Customer",
                  labelColor: fontColorBold,
                  mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-TipeCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                    color: Colors.transparent,
                    child: FormzDropDownField(
                      typeDropdown: 'TipeCustomer',
                      readOnly: true,
                      hintText: "Tipe Customer",
                      textInputAction: TextInputAction.next,
                      currentSelectedValue: _selectedTipe,
                      daftarString: daftarTipe,
                      inputItems: daftarDropdown,
                      onChanged: (value) {
                        print("Selected Value ${value}");
                        setState(() {
                          _selectedTipe = value!;
                          context
                              .read<CustomerCreateBloc>()
                              .add(OnSelectTipeCustomer(_selectedTipe!));
                        });
                      },
                    )),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Hero(
                            tag: 'Label-PT',
                            flightShuttleBuilder: flightShuttleBuilder,
                            child: FormTextLabel(
                              label: "Nama",
                              labelColor: fontColorBold,
                              mandatory: true,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Hero(
                            tag: 'Form-TypeTipeDiskon',
                            flightShuttleBuilder: flightShuttleBuilder,
                            child: Material(
                              color: Colors.transparent,
                              child: FormzDropDownField(
                                typeDropdown: 'PT',
                                readOnly: true,
                                hintText: "Tipe",
                                textInputAction: TextInputAction.next,
                                daftarString: daftarFixedName!
                                    .map((wilayah) => wilayah.text!)
                                    .toList(),
                                currentSelectedValue: selectedFixedName?.text,
                                inputItems: daftarDropdownFixed,
                                onChanged: (value) {
                                  print("Selected Value ${value}");
                                  setState(() {
                                    DataGeneral wilayah = daftarFixedName!
                                        .where(
                                            (element) => element.text == value)
                                        .first;

                                    selectedFixedName = wilayah;

                                    context
                                        .read<CustomerCreateBloc>()
                                        .add(OnSelectPrefixName(wilayah));
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Hero(
                            tag: 'Label-NamaCustomerA',
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
                            tag: 'Form-NamaCustomerA',
                            flightShuttleBuilder: flightShuttleBuilder,
                            child: Material(
                              color: Colors.transparent,
                              child: FormzTextField(
                                textAlign: TextAlign.end,
                                hintText: "Isi Nama Customer",
                                enabled: true,
                                // trailing: Icon(Icons.calendar_month),
                                textInputAction: TextInputAction.next,
                                textEditingController: state
                                    .fieldNamaCustomer.textEditingController,
                                onChanged: (name) => context
                                    .read<CustomerCreateBloc>()
                                    .add(OnNamaChanged(name)),
                                errorText: state.fieldNamaCustomer.invalid
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
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Hero(
                            tag: 'Label-NamaCetakCustomer',
                            flightShuttleBuilder: flightShuttleBuilder,
                            child: FormTextLabel(
                              label: "Nama Cetak",
                              labelColor: fontColorBold,
                              mandatory: true,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Hero(
                            tag: 'Form-NamCetakCustomer',
                            flightShuttleBuilder: flightShuttleBuilder,
                            child: Material(
                                color: Colors.transparent,
                                child: FormzDropDownField(
                                  typeDropdown: 'NamaCetakCustomer',
                                  readOnly: true,
                                  hintText: "Pilih Tipe",
                                  enabled: false,
                                  textInputAction: TextInputAction.next,
                                  daftarString: daftarFixedName!
                                      .map((wilayah) => wilayah.text!)
                                      .toList(),
                                  currentSelectedValue: selectedFixedName?.text,
                                  inputItems: daftarDropdownFixed,
                                  onChanged: (value) {
                                    print("Selected Value ${value}");
                                    setState(() {
                                      // DataGeneral wilayah = daftarFixedName!
                                      //     .where((element) =>
                                      //         element.text == value)
                                      //     .first;

                                      // selectedFixedName = wilayah;

                                      // context
                                      //     .read<SoCreateBloc>()
                                      //     .add(OnSelectWilayahCustomer(wilayah));
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
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Hero(
                            tag: 'Label-NamaCustomerB',
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
                            tag: 'Form-NamaCustomer',
                            flightShuttleBuilder: flightShuttleBuilder,
                            child: Material(
                              color: Colors.transparent,
                              child: FormzTextField(
                                textAlign: TextAlign.end,
                                hintText: "Isi Nama Cetak",
                                enabled: true,
                                // trailing: Icon(Icons.calendar_month),
                                textInputAction: TextInputAction.next,
                                textEditingController:
                                    state.fieldNamaCetak.textEditingController,
                                onChanged: (name) => context
                                    .read<CustomerCreateBloc>()
                                    .add(OnNamaCetakChanged(name)),
                                errorText: state.fieldNamaCetak.invalid
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
              const Hero(
                tag: 'Label-GroupWilayah',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "Group Wilayah",
                  labelColor: fontColorBold,
                  mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-GroupWilayah',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                    color: Colors.transparent,
                    child: FormzDropDownField(
                      typeDropdown: 'WilayahPenagihan',
                      readOnly: true,
                      hintText: "Pilih Group Wilayah",
                      textInputAction: TextInputAction.next,
                      daftarString: daftarGroupWilayah!
                          .map((wilayah) => wilayah.text!)
                          .toList(),
                      currentSelectedValue: selectedGroupWilayah?.text,
                      inputItems: daftarDropdownGroup,
                      onChanged: (value) {
                        print("Selected Value ${value}");
                        setState(() {
                          DataGeneral wilayah = daftarGroupWilayah!
                              .where((element) => element.text == value)
                              .first;

                          selectedGroupWilayah = wilayah;

                          context
                              .read<CustomerCreateBloc>()
                              .add(OnSelectGroupWilayah(wilayah));
                        });
                      },
                    )),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-WilayahPenagihan',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "Wilayah Penagihan",
                  labelColor: fontColorBold,
                  mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-WilayahPenagihan',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                    color: Colors.transparent,
                    child: FormzDropDownField(
                      typeDropdown: 'WilayahPenagihan',
                      readOnly: true,
                      hintText: "Pilih Wilayah Penagihan",
                      textInputAction: TextInputAction.next,
                      daftarString: daftarWilayahPenagihan!
                          .map((wilayah) => wilayah.text!)
                          .toList(),
                      currentSelectedValue: selectedWilayahPenagihan?.text,
                      inputItems: daftarDropdownPenagihan,
                      onChanged: (value) {
                        print("Selected Value ${value}");
                        setState(() {
                          DataGeneral wilayah = daftarWilayahPenagihan!
                              .where((element) => element.text == value)
                              .first;

                          selectedWilayahPenagihan = wilayah;
                          context
                              .read<CustomerCreateBloc>()
                              .add(OnSelectPembayaranWilayah(wilayah));
                        });
                      },
                    )),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-NIKCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "NIK",
                  labelColor: fontColorBold,
                  mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-NIKCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    hintText: "Isi NIK",
                    enabled: true,
                    // trailing: Icon(Icons.calendar_month),
                    textInputAction: TextInputAction.next,
                    textEditingController: state.fieldNIK.textEditingController,
                    onChanged: (name) => context
                        .read<CustomerCreateBloc>()
                        .add(OnNIKChanged(name)),
                    errorText:
                        state.fieldNIK.invalid ? 'Silakan Isi Field Ini' : null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-NpwpCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "NPWP",
                  labelColor: fontColorBold,
                  mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-NpwpCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    hintText: "Isi NPWP",
                    enabled: true,
                    // trailing: Icon(Icons.calendar_month),
                    textEditingController:
                        state.fieldNPWP.textEditingController,
                    onChanged: (name) => context
                        .read<CustomerCreateBloc>()
                        .add(OnNPWPChanged(name)),
                    errorText: state.fieldNPWP.invalid
                        ? 'Silakan Isi Field Ini'
                        : null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-KarakterCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "Karakter",
                  labelColor: fontColorBold,
                  // mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-KarakterCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    hintText: "Isi Karater",
                    enabled: true,
                    // trailing: Icon(Icons.calendar_month),
                    textInputAction: TextInputAction.next,
                    textEditingController:
                        state.fieldKarakter.textEditingController,
                    onChanged: (name) => context
                        .read<CustomerCreateBloc>()
                        .add(OnKarakterCHanged(name)),
                    errorText: state.fieldKarakter.invalid
                        ? 'Silakan Isi Field Ini'
                        : null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-CatatanCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "Catatan Customer",
                  labelColor: fontColorBold,
                  // mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(
                tag: 'Form-CatatanCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    hintText: "Isi Catatan",
                    enabled: true,
                    // trailing: Icon(Icons.calendar_month),
                    textInputAction: TextInputAction.next,
                    textEditingController:
                        state.fieldCatatan.textEditingController,
                    onChanged: (name) => context
                        .read<CustomerCreateBloc>()
                        .add(OnCatatanChanged(name)),
                    errorText: state.fieldCatatan.invalid
                        ? 'Silakan Isi Field Ini'
                        : null,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              const Hero(
                tag: 'Label-LokasiCustomer',
                flightShuttleBuilder: flightShuttleBuilder,
                child: FormTextLabel(
                  label: "Pin Lokasi Customer",
                  labelColor: fontColorBold,
                  // mandatory: true,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 150,
                width: double.infinity,
                child: FutureBuilder<Position?>(
                    future: _determinePosition(),
                    builder: (BuildContext context,
                        AsyncSnapshot<dynamic> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      if (snapshot.hasData) {
                        final Position locationData = snapshot.data;

                        print(
                            "LOKASI KAMU SEKARANG : ${locationData.latitude} & ${locationData.longitude}");

                        LatLng latLng = LatLng(
                            locationData.latitude, locationData.longitude);

                        context
                            .read<CustomerCreateBloc>()
                            .add(OnLokasiCustomerDetermined(latLng));

                        return ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: GoogleMap(
                            mapType: MapType.normal,
                            rotateGesturesEnabled: false,
                            zoomControlsEnabled: false,
                            buildingsEnabled: true,
                            initialCameraPosition: CameraPosition(
                              target: latLng,
                              zoom: 14.4746,
                            ),
                            onMapCreated:
                                (GoogleMapController controller) async {
                              _controller.complete(controller);
                            },
                            // onTap: (argument) {},
                            markers: {
                              Marker(
                                markerId: const MarkerId("marker2"),
                                position: latLng,
                              ),
                            },
                          ),
                        );
                      } else {
                        return const Center(
                          child: Text("Error . . ."),
                        );
                      }
                    }),
              ),
            ],
          ),
        );
      },
    );
  }
}
