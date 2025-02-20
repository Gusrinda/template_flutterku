import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:intl/intl.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/utils/dialogs.dart';
import 'package:sulinda_sales/src/core/utils/extensions.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_so.dart';
import 'package:sulinda_sales/src/presentation/blocs/so/create/bloc/so_create_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/step_order/s1_so_add.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/step_order/s2_so_add.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/step_order/s3_so_add.dart';

class SoAddView extends StatefulWidget {
  const SoAddView({super.key, required this.isEdit});

  final bool isEdit;

  static const String routeName = "/so_add_view";

  @override
  State<SoAddView> createState() => _SoAddViewState();
}

class _SoAddViewState extends State<SoAddView> {
  int _currentStep = 0;

  List<Step> getSteps() => [
        Step(
          state: _currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 0,
          title: SizedBox(),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Step3Order(
                isEdit: widget.isEdit,
              );
            }
          ),
        ),
        Step(
          state: _currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 1,
          title: SizedBox(),
          content: Step1Order(
            isEdit: widget.isEdit,
          ),
        ),
        Step(
          state: _currentStep > 2 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 2,
          title: SizedBox(),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Step2Order(
                isEdit: widget.isEdit,
              );
            }
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return BlocListener<SoCreateBloc, SoCreateState>(
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
          backgroundColor: themeHijauBg,
          centerTitle: true,
          title: Text(
            "Sales Order",
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: BlocBuilder<SoCreateBloc, SoCreateState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
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
                                SizedBox(
                                  width: 0,
                                ),
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
                            List<TSoD> daftarBarang =
                                List.from(state.requestCreateSo?.tSoD ?? []);
                            if (daftarBarang.isEmpty) {
                              EasyLoading.showError(
                                  'Anda belum menambahhkan 1 barang!');
                              return;
                            }

                            for (var element in daftarBarang) {
                              if (element.tSoDQty! > element.qtyStock!) {
                                EasyLoading.showError(
                                    'Jumlah Barang ${element.mItemLongdesc} dibeli melebihi batas stok admin : ${element.qtyStock} !');
                                return;
                              }
                            }

                            log("DATA JSON KIRIM\n${jsonEncode(state.requestCreateSo)}");

                            break;

                          case 2:
                            final fieldBiayaKirim = state.fieldBiayaKirim.pure
                                ? state.fieldBiayaKirim
                                    .toDirty(fromTextController: true)
                                : state.fieldBiayaKirim;

                            final statusForm2 = Formz.validate([
                              fieldBiayaKirim,
                            ]);

                            if (!statusForm2.isValid) {
                              EasyLoading.showError('Form 2 belum lengkap !');
                              return;
                            }

                            if (state.selectedPPN == null ||
                                state.selectedPPH1 == null ||
                                state.selectedPPH2 == null) {
                              EasyLoading.showError('PPN & PPH Belum Lengkap!');
                              return;
                            }
                            RequestCreateSo requestCreateSo =
                                state.requestCreateSo ?? RequestCreateSo();

                            context.read<SoCreateBloc>().add(
                                  OnUpdateRequestCreateSO(
                                    requestSO: requestCreateSo.copyWith(
                                      tSoHTipeBykirim: state.selectedTipePengiriman,
                                      tSoHTotalBykirim: double.tryParse(
                                              state.fieldBiayaKirim.value) ??
                                          0,
                                      tSoHDisctype: state.selectedTipeDiskon,
                                      tSoHDiscpct:
                                          state.selectedTipeDiskon == 'P'
                                              ? double.tryParse(state
                                                      .fieldAmountDiskon
                                                      .value) ??
                                                  0
                                              : 0,
                                      tSoHDiscamt:
                                          state.selectedTipeDiskon == 'A'
                                              ? double.tryParse(state
                                                      .fieldAmountDiskon
                                                      .value) ??
                                                  0
                                              : 0,
                                      tSoHTaxtype: state.selectedPPN?.value,
                                      tSoHTaxpct: state.selectedPPN?.valuePct
                                          ?.toDouble(),
                                      tSoHTaxamt: 0,
                                      tSoHPph1Id: int.tryParse(
                                              state.selectedPPH1?.value ??
                                                  '0') ??
                                          0,
                                      tSoHPph1Pct: state.selectedPPH1?.valuePct,
                                      tSoHPph1Amt: 0,
                                      tSoHPph2Id: int.tryParse(
                                              state.selectedPPH2?.value ??
                                                  '0') ??
                                          0,
                                      tSoHPph2Pct: state.selectedPPH2?.valuePct,
                                      tSoHPph2Amt: 0,
                                    ),
                                  ),
                                );

                            break;
                          case 1:
                            final fieldNomorPoCustomer =
                                state.fieldNomorPoCustomer.pure
                                    ? state.fieldNomorPoCustomer
                                        .toDirty(fromTextController: true)
                                    : state.fieldNomorPoCustomer;

                            final statusForm1 = Formz.validate([
                              fieldNomorPoCustomer,
                            ]);

                            if (!statusForm1.isValid) {
                              EasyLoading.showError('Form 1 belum lengkap !');
                              return;
                            }

                            if (state.selectedCustomer == null) {
                              EasyLoading.showError('Customer Belum Dipilih !');
                              return;
                            }

                            RequestCreateSo requestCreateSo =
                                state.requestCreateSo ?? RequestCreateSo();

                            context.read<SoCreateBloc>().add(
                                  OnUpdateRequestCreateSO(
                                    requestSO: requestCreateSo.copyWith(
                                      mCustId: state.selectedCustomer?.mCustId,
                                      tSoHGrupWilayahId: int.tryParse(
                                              state.selectedWilayah?.value ??
                                                  '15') ??
                                          15,
                                      tSoHCustNamacetak: state
                                          .selectedCustomer?.mCustNameAlias,
                                      tSoHCustPoNo:
                                          state.fieldNomorPoCustomer.value,
                                      tSoHCustPoDate: DateFormat(
                                              "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                                          .format(
                                              state.tanggalCreateSO!.toUtc()),
                                      tSoHNote:
                                          state.fieldCatatanPOCustomer.value,
                                    ),
                                  ),
                                );

                            break;
                          default:
                        }

                        final isLastStep =
                            _currentStep == getSteps().length - 1;

                        if (isLastStep) {
                          // EasyLoading.showToast("Kirim Data");
                          final isSimpan = await showVerifikasiDialog(
                              context: context,
                              message: widget.isEdit
                                  ? "Apakah Anda yakin untuk mengubah data?"
                                  : "Apakah Anda yakin untuk menyimpan data?");

                          if (isSimpan != null) {
                            if (isSimpan) {
                              context.read<SoCreateBloc>().add(OnSubmitSO());

                              // Navigator.pop(context);
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
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
