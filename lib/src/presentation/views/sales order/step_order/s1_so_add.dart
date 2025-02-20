import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/response/customer/response_daftar_customer.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_wilayah.dart';
import 'package:sulinda_sales/src/presentation/blocs/general/bloc/general_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/so/create/bloc/so_create_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/selector/customer_selector.dart';
import 'package:sulinda_sales/src/presentation/widgets/hero_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class Step1Order extends StatefulWidget {
  const Step1Order({super.key, required this.isEdit});

  final bool isEdit;

  @override
  State<Step1Order> createState() => _Step1OrderState();
}

class _Step1OrderState extends State<Step1Order> {
  List<DataWilayah>? daftarWilayah;
  DataWilayah? selectedWilayah;

  @override
  void initState() {
    final blocWilayah = context.read<GeneralBloc>();

    List<DataWilayah> wilayahs =
        List.from(blocWilayah.state.daftarWilayah ?? []);

    daftarWilayah = [];
    for (var element in wilayahs) {
      daftarWilayah?.add(element);
    }

    var soBloc = context.read<SoCreateBloc>().state;
    if (widget.isEdit) {
      selectedWilayah = soBloc.selectedWilayah;
    } else {
      
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> daftarDropDownWilayah = List.from(daftarWilayah!.map(
        (e) =>
            DropdownMenuItem(value: e.text ?? '', child: Text(e.text ?? ''))));

    return SingleChildScrollView(
      child:
          BlocBuilder<SoCreateBloc, SoCreateState>(builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Hero(
              tag: 'Label-NoSO',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: "No. SO",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Hero(
              tag: 'Form-NoSO',
              flightShuttleBuilder: flightShuttleBuilder,
              child: Material(
                color: Colors.transparent,
                child: FormzTextField(
                  textEditingController:
                      TextEditingController(text: 'SO/123/456/999'),
                  keyboardType: TextInputType.number,
                  enabled: false,
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
              tag: 'Label-Wilayah',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: "Wilayah",
                labelColor: fontColorBold,
                mandatory: true,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Hero(
              tag: 'Form-TypeWilayah',
              flightShuttleBuilder: flightShuttleBuilder,
              child: Material(
                  color: Colors.transparent,
                  child: FormzDropDownField(
                    typeDropdown: 'Wilayah',
                    readOnly: true,
                    daftarString:
                        daftarWilayah!.map((wilayah) => wilayah.text!).toList(),
                    hintText: "Wilayah",
                    textInputAction: TextInputAction.next,
                    currentSelectedValue: selectedWilayah?.text,
                    inputItems: daftarDropDownWilayah,
                    onChanged: (value) {
                      print("Selected Value ${value}");
                      setState(() {
                        DataWilayah wilayah = daftarWilayah!
                            .where((element) => element.text == value)
                            .first;

                        selectedWilayah = wilayah;

                        context
                            .read<SoCreateBloc>()
                            .add(OnSelectWilayahCustomer(wilayah));
                      });
                    },
                  )),
            ),
            SizedBox(
              height: 12,
            ),
            const Hero(
              tag: 'Label-Customer',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: "Customer",
                labelColor: fontColorBold,
                mandatory: true,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Hero(
              tag: 'Form-TypeCustomer',
              flightShuttleBuilder: flightShuttleBuilder,
              child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    readOnly: true,
                    hintText: "Customer",
                    textInputAction: TextInputAction.next,
                    textEditingController: TextEditingController(
                      text: state.selectedCustomer?.mCustName,
                    ),
                    trailing: Icon(
                      Icons.search,
                      color: themeHijau,
                    ),
                    onTap: () async {
                      if (selectedWilayah == null) {
                        EasyLoading.showError('Pilih wilayah dahulu!');
                        return;
                      }

                      List<DataCustomer> daftarCustomer =
                          List.from(state.daftarCustomer ?? []);

                      daftarCustomer.sort((a, b) {
                        // Ambil m_cust_name dari kedua objek
                        final namaA = a.mCustName;
                        final namaB = b.mCustName;

                        // Pisahkan nama dan kode wilayah
                        final regex = RegExp(r'\(([^)]+)\)');
                        final matchA = regex.firstMatch(namaA!);
                        final matchB = regex.firstMatch(namaB!);

                        final namaTanpaKodeA = namaA.split('(')[0].trim();
                        final namaTanpaKodeB = namaB.split('(')[0].trim();
                        final kodeWilayahA =
                            matchA != null ? matchA.group(1) : '';
                        final kodeWilayahB =
                            matchB != null ? matchB.group(1) : '';

                        // Pertama urutkan berdasarkan nama tanpa kode wilayah
                        final result = namaTanpaKodeA.compareTo(namaTanpaKodeB);

                        // Jika nama sama, urutkan berdasarkan kode wilayah
                        if (result == 0) {
                          return kodeWilayahA!.compareTo(kodeWilayahB!);
                        }

                        return result;
                      });

                      daftarCustomer = daftarCustomer.map((customer) {
                        final updatedName = customer.mCustName!
                            .replaceAll(RegExp(r'\(|\)'), '')
                            .trim();
                        return customer.copyWith(mCustName: updatedName);
                      }).toList();

                      final selectedCustomer = await showSearch(
                        context: context,
                        delegate: CustomerSearchDelegate(
                          daftarCustomer,
                        ),
                      );

                      print("SELECTED CUSTOMER ?? ");

                      if (selectedCustomer != null) {
                        context.read<SoCreateBloc>().add(
                              OnSelectCustomer(
                                selectedCustomer,
                              ),
                            );
                      }
                    },
                  )),
            ),
            SizedBox(
              height: 12,
            ),
            const Hero(
              tag: 'Label-NamaCetak',
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
              tag: 'Form-TypeNamaCetak',
              flightShuttleBuilder: flightShuttleBuilder,
              child: Material(
                  color: Colors.transparent,
                  child: FormzTextField(
                    readOnly: true,
                    enabled: false,
                    hintText: "Pilih Customer",
                    textInputAction: TextInputAction.next,
                    textEditingController: TextEditingController(
                      text: state.selectedCustomer?.mCustNameAlias,
                    ),
                  )),
            ),
            SizedBox(
              height: 12,
            ),
            const Hero(
              tag: 'Label-NomorPOCustomer',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: "Nomor PO Customer",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Hero(
              tag: 'Form-NomorPOCustomer',
              flightShuttleBuilder: flightShuttleBuilder,
              child: Material(
                color: Colors.transparent,
                child: FormzTextField(
                  hintText: "Nomor PO",
                  enabled: true,
                  // trailing: Icon(Icons.calendar_month),
                  textInputAction: TextInputAction.next,
                  textEditingController:
                      state.fieldNomorPoCustomer.textEditingController,
                  onChanged: (name) =>
                      context.read<SoCreateBloc>().add(OnNomorPOChanged(name)),
                  errorText: state.fieldNomorPoCustomer.invalid
                      ? 'Silakan Isi Field Ini'
                      : null,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            const Hero(
              tag: 'Label-TanggalPO',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: "Tanggal PO Customer",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Hero(
              tag: 'Form-TanggalPO',
              flightShuttleBuilder: flightShuttleBuilder,
              child: Material(
                color: Colors.transparent,
                child: FormzTextField(
                  hintText: "Pilih Tanggal PO",
                  enabled: true,
                  readOnly: true,
                  trailing: Icon(Icons.calendar_month),
                  textInputAction: TextInputAction.next,
                  textEditingController: TextEditingController(
                      text: kDateFullMonthFormat
                          .format(state.tanggalCreateSO ?? DateTime.now())),
                  onTap: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );

                    if (picked != null) {
                      context.read<SoCreateBloc>().add(OnDatePoChanged(picked));
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            const Hero(
              tag: 'Label-CatatanPO',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: "Catatan",
                labelColor: fontColorBold,
                // mandatory: true,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Hero(
              tag: 'Form-CatatanPO',
              flightShuttleBuilder: flightShuttleBuilder,
              child: Material(
                color: Colors.transparent,
                child: FormzTextField(
                  hintText: "Catatan",
                  enabled: true,
                  // trailing: Icon(Icons.calendar_month),
                  textInputAction: TextInputAction.next,
                  textEditingController:
                      state.fieldCatatanPOCustomer.textEditingController,
                  onChanged: (name) => context
                      .read<SoCreateBloc>()
                      .add(OnCatatanPOChanged(name)),
                  errorText: state.fieldCatatanPOCustomer.invalid
                      ? 'Silakan Isi Field Ini'
                      : null,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
