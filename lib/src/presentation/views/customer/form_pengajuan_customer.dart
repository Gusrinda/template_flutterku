import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:sulinda_sales/src/core/assets/assets.gen.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/core/utils/dialogs.dart';
import 'package:sulinda_sales/src/core/utils/extensions.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_customer.dart';
import 'package:sulinda_sales/src/presentation/blocs/customer/bloc/customer_create_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/customer/step/step_1_customer.dart';
import 'package:sulinda_sales/src/presentation/views/customer/step/step_2_customer.dart';
import 'package:sulinda_sales/src/presentation/views/customer/step/step_3_customer.dart';
import 'package:sulinda_sales/src/presentation/widgets/hero_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class FormPengajuanCustomerView extends StatefulWidget {
  const FormPengajuanCustomerView({super.key});

  static const String routeName = "/form_pengajuan_customer";

  @override
  State<FormPengajuanCustomerView> createState() =>
      _FormPengajuanCustomerViewState();
}

class _FormPengajuanCustomerViewState extends State<FormPengajuanCustomerView> {
  int _currentStep = 0;

  List<Step> getSteps() => [
        Step(
          state: _currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 0,
          title: SizedBox(),
          content: Step1CustomerView(),
        ),
        Step(
          state: _currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 1,
          title: SizedBox(),
          content: Step2CustomerView(),
        ),
        Step(
          state: _currentStep > 2 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 2,
          title: SizedBox(),
          content: Step3CustomerView(),
        ),
      ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CustomerCreateBloc>().add(OnSetupDataAwal());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerCreateBloc, CustomerCreateState>(
      listener: (context, state) {
        if (state.formUpload == FormzStatus.submissionFailure) {
          context.showErrorToast(state.error ?? 'Error create data');
          return;
        }

        if (state.formUpload == FormzStatus.submissionSuccess) {
          context.showOkToast("Berhasil create data");
          Navigator.pop(context, true);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: themeHijauBg,
          title: Text("Form Pengajuan Customer"),
        ),
        body: Column(
          children: [
            BlocBuilder<CustomerCreateBloc, CustomerCreateState>(
              builder: (context, state) {
                if (state.statusPage == LoadingPageStatus.loading) {
                  return Expanded(
                      child: Center(
                    child: CupertinoActivityIndicator(),
                  ));
                }

                if (state.statusPage == LoadingPageStatus.success) {
                  return Expanded(
                    child: Theme(
                      data: ThemeData(
                        colorScheme: Theme.of(context).colorScheme.copyWith(
                              primary: themeHijau,
                              // secondary: Colors.green,
                            ),
                      ),
                      child: Stepper(
                        type: StepperType.horizontal,
                        steps: getSteps(),
                        currentStep: _currentStep,
                        controlsBuilder: (context, details) {
                          final isLastStep =
                              _currentStep == getSteps().length - 1;

                          return Container(
                              margin: EdgeInsets.only(top: 24),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: details.onStepCancel,
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red,
                                      ),
                                      child: Text(
                                        "Kembali",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: themeHijauBg),
                                      onPressed: details.onStepContinue,
                                      child: Text(
                                        isLastStep ? "Simpan" : "Lanjut",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ));
                        },
                        onStepTapped: (step) {
                          setState(() {
                            _currentStep = step;
                          });
                        },
                        onStepContinue: () async {
                          switch (_currentStep) {
                            case 0:
                              final fieldNamaCustomer =
                                  state.fieldNamaCustomer.pure
                                      ? state.fieldNamaCustomer
                                          .toDirty(fromTextController: true)
                                      : state.fieldNamaCustomer;

                              final fieldNamaCetak = state.fieldNamaCetak.pure
                                  ? state.fieldNamaCetak
                                      .toDirty(fromTextController: true)
                                  : state.fieldNamaCetak;

                              final fieldNIK = state.fieldNIK.pure
                                  ? state.fieldNIK
                                      .toDirty(fromTextController: true)
                                  : state.fieldNIK;

                              final fieldNPWP = state.fieldNPWP.pure
                                  ? state.fieldNPWP
                                      .toDirty(fromTextController: true)
                                  : state.fieldNPWP;

                              final fieldKarakter = state.fieldKarakter.pure
                                  ? state.fieldKarakter
                                      .toDirty(fromTextController: true)
                                  : state.fieldKarakter;

                              final statusForm1 = Formz.validate([
                                fieldNamaCustomer,
                                fieldNamaCetak,
                                fieldNIK,
                                fieldNPWP,
                                // fieldKarakter,
                              ]);

                              if (!statusForm1.isValid) {
                                EasyLoading.showError('Form 1 belum lengkap !');
                                return;
                              }

                              if (state.selectedTipeCustoner == null ||
                                  state.selectedGroupWilayah == null ||
                                  state.selectedWilayahPenagihan == null) {
                                EasyLoading.showError(
                                    'Tipe / Wilayah Belum Dipilih !');
                                return;
                              }

                              RequestCreateCustomer requestCreateCustomer =
                                  state.requestCreateCustomer ??
                                      RequestCreateCustomer();

                              context.read<CustomerCreateBloc>().add(
                                    OnUpdateRequestCreateCustomer(
                                      requestCreateCustomer:
                                          requestCreateCustomer.copyWith(
                                        mCustType: state.selectedTipeCustoner,
                                        mCustPrefixId: int.tryParse(
                                                state.selectedFixed?.value ??
                                                    '0') ??
                                            0,
                                        mCustName:
                                            state.fieldNamaCustomer.value,
                                        mCustNameAlias:
                                            state.fieldNamaCetak.value,
                                        mCustGrupWilayahId: int.tryParse(state
                                                    .selectedGroupWilayah
                                                    ?.value ??
                                                '0') ??
                                            0,
                                        mCustWilayahPenagihanId: int.tryParse(
                                                state.selectedWilayahPenagihan
                                                        ?.value ??
                                                    '0') ??
                                            0,
                                        mCustNpwp: state.fieldNPWP.value,
                                        mCustNik: state.fieldNIK.value,
                                        mCustKarakter:
                                            state.fieldKarakter.value,
                                        mCustNote: state.fieldCatatan.value,
                                        latitude: state.lokasiCustomer?.latitude
                                            .toString(),
                                        longitude: state
                                            .lokasiCustomer?.longitude
                                            .toString(),
                                      ),
                                    ),
                                  );

                              log("DATA JSON KIRIM\n${jsonEncode(state.requestCreateCustomer)}");

                              break;
                            case 1:
                              // final fieldKreditLimit =
                              //     state.fieldKreditLimit.pure
                              //         ? state.fieldKreditLimit
                              //             .toDirty(fromTextController: true)
                              //         : state.fieldKreditLimit;

                              // final fieldNomorTelp1 = state.fieldNomorTelp1.pure
                              //     ? state.fieldNomorTelp1
                              //         .toDirty(fromTextController: true)
                              //     : state.fieldNomorTelp1;

                              // final fieldNomorHP1 = state.fieldNomorHP1.pure
                              //     ? state.fieldNomorHP1
                              //         .toDirty(fromTextController: true)
                              //     : state.fieldNomorHP1;

                              // final statusForm1 = Formz.validate([
                              //   fieldKreditLimit,
                              //   fieldNomorTelp1,
                              //   fieldNomorHP1,
                              // ]);

                              // if (!statusForm1.isValid) {
                              //   EasyLoading.showError(
                              //       'Form 2 mandatory field belum lengkap !');
                              //   return;
                              // }

                              if (state.selectedJatuhTempo == null ||
                                  state.selectedBJTKhusus == null) {
                                EasyLoading.showError(
                                    'Data Jatuh Tempo Belum Dipilih !');
                                return;
                              }

                              if (state.selectedFoto == null) {
                                EasyLoading.showError(
                                    'Foto Dokumen belum diambil !');
                                return;
                              }

                              RequestCreateCustomer requestCreateCustomer =
                                  state.requestCreateCustomer ??
                                      RequestCreateCustomer();

                              // Handle the quantity change
                              double nilaiQty = double.tryParse(state
                                      .fieldKreditLimit.value
                                      .replaceAll('.', '')
                                      .replaceAll(',', '.')) ??
                                  0;
                              int? newQty = nilaiQty.toInt() ?? 0;

                              context.read<CustomerCreateBloc>().add(
                                    OnUpdateRequestCreateCustomer(
                                      requestCreateCustomer:
                                          requestCreateCustomer.copyWith(
                                        mCustCreditLimit: newQty,
                                        mCustJatuhtempo1Id: int.tryParse(state
                                                    .selectedJatuhTempo
                                                    ?.value ??
                                                '0') ??
                                            0,
                                        mCustJatuhtempo2Id: int.tryParse(state
                                                    .selectedBJTKhusus?.value ??
                                                '0') ??
                                            0,
                                        mCustPhone1:
                                            state.fieldNomorTelp1.value,
                                        mCustPhone2:
                                            state.fieldNomorTelp2.value,
                                        mCustMobile1: state.fieldNomorHP1.value,
                                        mCustMobile2: state.fieldNomorHP2.value,
                                        mCustFax: state.fieldFax.value,
                                        mCustEmail: state.fieldEmail.value,
                                        mCustWebsite: state.fieldWebsite.value,
                                        mCustImgBase64: state.string64Foto,
                                      ),
                                    ),
                                  );

                              log("DATA JSON KIRIM\n${jsonEncode(state.requestCreateCustomer)}");

                              break;
                            case 2:
                              RequestCreateCustomer requestCreateCustomer =
                                  state.requestCreateCustomer ??
                                      RequestCreateCustomer();

                              List<MCustDTagihan> daftarPenagihan =
                                  List.from(state.daftarPenagihan ?? []);
                              List<MCustDBank> daftarBank =
                                  List.from(state.daftarBank ?? []);
                              List<MCustDAddress> daftarAlamat =
                                  List.from(state.daftarAlamat ?? []);

                              if (daftarPenagihan.isEmpty
                                  // daftarBank.isEmpty ||
                                  // daftarAlamat.isEmpty
                                  ) {
                                EasyLoading.showError(
                                    "Isi minimal 1 data di data penagihan");
                                return;
                              }

                              context.read<CustomerCreateBloc>().add(
                                    OnUpdateRequestCreateCustomer(
                                      requestCreateCustomer:
                                          requestCreateCustomer.copyWith(
                                              mCustDAddress: daftarAlamat,
                                              mCustDTagihan: daftarPenagihan,
                                              mCustDBank: daftarBank),
                                    ),
                                  );

                              log("DATA JSON KIRIM\n${jsonEncode(state.requestCreateCustomer)}");

                              break;
                            default:
                          }

                          final isLastStep =
                              _currentStep == getSteps().length - 1;

                          if (isLastStep) {
                            // EasyLoading.showToast("Kirim Data");
                            final isSimpan = await showVerifikasiDialog(
                                context: context,
                                message:
                                    "Apakah Anda yakin untuk menyimpan data?");

                            if (isSimpan != null) {
                              if (isSimpan) {
                                context
                                    .read<CustomerCreateBloc>()
                                    .add(OnSubmitCustomer());
                              }
                            }
                          } else {
                            setState(() {
                              _currentStep += 1;
                            });
                          }
                        },
                        onStepCancel: () async {
                          log("STEP CANCEL ${_currentStep}");

                          if (_currentStep == 0) {
                            Navigator.pop(context);
                          } else {
                            setState(() {
                              _currentStep -= 1;
                            });
                          }

                          // if (_currentStep > 0) {}
                        },
                      ),
                    ),
                  );
                }

                return Expanded(
                    child: Center(
                  child: Text("Error load data, refresh page."),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<bool?> handleFormSuccess(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Container(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
            constraints: const BoxConstraints(minWidth: 340),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Pengajuan Berhasil Dikirim",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 48,
                ),
                SvgPicture.asset(Assets.svg.undrawAcceptRequestReD81h1),
                const SizedBox(
                  height: 48,
                ),
                Text(
                  "Data customer sudah terdaftar di list customer Sulinda",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: themeHijauBg),
                    child: Text(
                      "Tutup",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: themeHijau),
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
