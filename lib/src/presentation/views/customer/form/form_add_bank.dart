import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/model/form_text_input.dart';
import 'package:sulinda_sales/src/core/utils/dialogs.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_customer.dart';
import 'package:sulinda_sales/src/presentation/widgets/hero_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class FormAddBank extends StatefulWidget {
  const FormAddBank({super.key, this.dataBank});

  static const String routeName = "/form_add_bank";

  final MCustDBank? dataBank;

  @override
  State<FormAddBank> createState() => _FormAddBankState();
}

class _FormAddBankState extends State<FormAddBank> {
  FormTextInput fieldNamaBank = FormTextInput.pure();
  FormTextInput fieldNomorRekening = FormTextInput.pure();
  FormTextInput fieldNamaRekening = FormTextInput.pure();
  FormTextInput fieldCatatan = FormTextInput.pure();

  @override
  void initState() {
    if (widget.dataBank != null) {
      fieldNamaBank.textEditingController.text =
          widget.dataBank?.mCustDBankName ?? '';
      fieldNomorRekening.textEditingController.text =
          widget.dataBank?.mCustDBankRekeningNomor ?? '';
      fieldNamaRekening.textEditingController.text =
          widget.dataBank?.mCustDBankRekeningName ?? '';
      fieldCatatan.textEditingController.text =
          widget.dataBank?.mCustDBankNote ?? '';
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Form Bank"),
        backgroundColor: themeHijau,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Hero(
              tag: 'Label-NamaBank',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: "Nama Bank",
                labelColor: fontColorBold,
                mandatory: true,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Hero(
              tag: 'Form-NamaBank',
              flightShuttleBuilder: flightShuttleBuilder,
              child: Material(
                color: Colors.transparent,
                child: FormzTextField(
                  textEditingController: fieldNamaBank.textEditingController,
                  hintText: "Nama Bank",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {
                    setState(() {});
                  },
                  errorText: null,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            const Hero(
              tag: 'Label-NomorRekeningBank',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: "Nomor Rekening",
                labelColor: fontColorBold,
                mandatory: true,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Hero(
              tag: 'Form-NomorRekeningBank',
              flightShuttleBuilder: flightShuttleBuilder,
              child: Material(
                color: Colors.transparent,
                child: FormzTextField(
                  textEditingController:
                      fieldNomorRekening.textEditingController,
                  hintText: "Nomor Rekening",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {
                    setState(() {});
                  },
                  errorText: null,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            const Hero(
              tag: 'Label-NamaRekening',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: "Nama Rekening Bank",
                labelColor: fontColorBold,
                mandatory: true,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Hero(
              tag: 'Form-NamaRekening',
              flightShuttleBuilder: flightShuttleBuilder,
              child: Material(
                color: Colors.transparent,
                child: FormzTextField(
                  textEditingController:
                      fieldNamaRekening.textEditingController,
                  hintText: "Nama Rekening Bank",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {
                    setState(() {});
                  },
                  errorText: null,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            const Hero(
              tag: 'Label-CatatanRekening',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: "Catatan",
                labelColor: fontColorBold,
                mandatory: true,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Hero(
              tag: 'Form-CatatanRekening',
              flightShuttleBuilder: flightShuttleBuilder,
              child: Material(
                color: Colors.transparent,
                child: FormzTextField(
                  textEditingController: fieldCatatan.textEditingController,
                  hintText: "Catatan",
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  onChanged: (nama) {
                    setState(() {});
                  },
                  errorText: null,
                ),
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
                    message: "Apakah Anda yakin untuk menambah data bank?");

                if (isSimpan) {
                  MCustDBank dataBank = MCustDBank(
                    mCustDBankName: fieldNamaBank.textEditingController.text,
                    mCustDBankRekeningName:
                        fieldNamaRekening.textEditingController.text,
                    mCustDBankRekeningNomor:
                        fieldNomorRekening.textEditingController.text,
                    mCustDBankNote: fieldCatatan.textEditingController.text,
                  );

                  Navigator.pop(context, dataBank);
                }
              },
              child: Text("Tambah Data"))),
    );
  }
}
