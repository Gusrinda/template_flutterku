import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/utils/dialogs.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_customer.dart';
import 'package:sulinda_sales/src/presentation/widgets/hero_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_widget.dart';

class FormAddPenagihan extends StatefulWidget {
  const FormAddPenagihan({super.key, this.daftarPenagihanAwal});

  static const String routeName = "/form_add_penagihan";

  final List<DataPenagihan>? daftarPenagihanAwal;

  @override
  State<FormAddPenagihan> createState() => _FormAddPenagihanState();
}

class _FormAddPenagihanState extends State<FormAddPenagihan> {
  List<DataPenagihan> defaultDataPenagihan = [
    DataPenagihan(mCustDTagihanDay: "Senin", mCustDTagihanNote: ""),
    DataPenagihan(mCustDTagihanDay: "Selasa", mCustDTagihanNote: ""),
    DataPenagihan(mCustDTagihanDay: "Rabu", mCustDTagihanNote: ""),
    DataPenagihan(mCustDTagihanDay: "Kamis", mCustDTagihanNote: ""),
    DataPenagihan(mCustDTagihanDay: "Jumat", mCustDTagihanNote: ""),
    DataPenagihan(mCustDTagihanDay: "Sabtu", mCustDTagihanNote: ""),
    DataPenagihan(mCustDTagihanDay: "Minggu", mCustDTagihanNote: ""),
  ];

  List<DataPenagihan> daftarTagihan = [];

  @override
  void initState() {
    if (widget.daftarPenagihanAwal != null) {
      daftarTagihan =
          List.from(widget.daftarPenagihanAwal ?? defaultDataPenagihan);
    } else {
      daftarTagihan = List.from(defaultDataPenagihan);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Form Penagihan"),
        backgroundColor: themeHijau,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: daftarTagihan.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  TextEditingController controllerNote = TextEditingController(
                      text: daftarTagihan[index].mCustDTagihanNote);

                  return Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: daftarTagihan[index].isSelected,
                              onChanged: (value) {
                                setState(() {
                                  controllerNote.clear();
                                  daftarTagihan[index] =
                                      daftarTagihan[index].copyWith(
                                    isSelected: value ?? false,
                                    mCustDTagihanNote: null,
                                  );
                                });
                              },
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            HeaderLabel(
                                "${daftarTagihan[index].mCustDTagihanDay}"),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        FormzTextField(
                          textEditingController: controllerNote,
                          hintText:
                              "Note Hari ${daftarTagihan[index].mCustDTagihanDay}",
                          minLines: 1,
                          maxLines: 5,
                          enabled: daftarTagihan[index].isSelected ?? false,
                          textInputAction: TextInputAction.next,
                          onChanged: (nama) {
                            daftarTagihan[index] = daftarTagihan[index]
                                .copyWith(mCustDTagihanNote: nama);
                          },
                          errorText: null,
                        ),
                        Divider(
                          color: Colors.black12,
                        )
                      ],
                    ),
                  );
                },
              ),
            )
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
                    message:
                        "Apakah Anda yakin untuk menambah data penagihan?");

                if (isSimpan) {
                  log("DATA PENAGIHAN \n${jsonEncode(daftarTagihan)}");

                  Navigator.pop(context, daftarTagihan);
                }
              },
              child: Text("Tambah Data"))),
    );
  }
}
