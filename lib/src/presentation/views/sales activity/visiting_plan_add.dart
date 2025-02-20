import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:formz/formz.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/model/dummy/dummy_daftar_activity.dart';
import 'package:sulinda_sales/src/core/model/form_text_input.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/core/utils/dialogs.dart';
import 'package:sulinda_sales/src/core/utils/extensions.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_customer.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_plan.dart';
import 'package:sulinda_sales/src/data/models/response/customer/response_customer_visiting.dart';
import 'package:sulinda_sales/src/presentation/blocs/visiting/bloc/visiting_plan_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/customer_search.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class VisitingPlanAdd extends StatefulWidget {
  const VisitingPlanAdd({super.key});

  static const String routeName = "/visiting_plan_add";

  @override
  State<VisitingPlanAdd> createState() => _VisitingPlanAddState();
}

class _VisitingPlanAddState extends State<VisitingPlanAdd> {
  List<String> daftarDrop = [
    'Tagihan',
    'Order',
  ];

  List<String> daftarTipeVisiting = [
    'Plan',
    'Unplan',
  ];

  String? _selectedDrop;
  String? _selectedTipeVisiting;

  DataCustomerVisiting? selectedCustomer;

  DateTime? startDate;
  DateTime? endDate;
  TimeOfDay? startTime;
  TimeOfDay? endTime;
  FormTextInput fieldCatatanPlan = FormTextInput.pure();

  @override
  void initState() {
    super.initState();
    startTime = TimeOfDay.now();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<VisitingPlanBloc>().add(GetData());
    });
  }

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> daftarDropdown = List.from(
        daftarDrop.map((e) => DropdownMenuItem(value: e, child: Text(e))));

    List<DropdownMenuItem> daftarDropdownTipeVisiting = List.from(
        daftarTipeVisiting
            .map((e) => DropdownMenuItem(value: e, child: Text(e))));

    return BlocListener<VisitingPlanBloc, VisitingPlanState>(
      listener: (context, state) {
        if (state.statusForm == FormzStatus.submissionFailure) {
          context.showErrorToast(state.error ?? 'Error create data');
          return;
        }

        if (state.statusForm == FormzStatus.submissionSuccess) {
          context.showOkToast("Berhasil create data");
          Navigator.pop(context, state.responseSavePlan);
        }
      },
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Form Visiting"),
          backgroundColor: themeHijauBg,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: BlocBuilder<VisitingPlanBloc, VisitingPlanState>(
            builder: (context, state) {
              if (state.statusPage == LoadingPageStatus.loading) {
                return Column(
                  children: [
                    Expanded(
                        child: Center(
                      child: CupertinoActivityIndicator(),
                    )),
                  ],
                );
              }

              if (state.statusPage == LoadingPageStatus.success) {
                return ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FormTextLabel(
                      label: "No. Draft",
                      labelColor: fontColorBold,
                      // mandatory: true,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Material(
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
                    SizedBox(
                      height: 12,
                    ),
                    FormTextLabel(
                      label: "Visiting",
                      labelColor: fontColorBold,
                      mandatory: true,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: FormzDropDownField(
                        typeDropdown: 'KUNJUNGAN',
                        readOnly: true,
                        daftarString: daftarTipeVisiting,
                        hintText: "Plan / Unplan",
                        textInputAction: TextInputAction.next,
                        currentSelectedValue: _selectedTipeVisiting,
                        inputItems: daftarDropdownTipeVisiting,
                        onChanged: (value) {
                          print("Selected Value ${value}");
                          setState(() {
                            _selectedTipeVisiting = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    if (_selectedTipeVisiting == 'Plan') ...{
                      FormTextLabel(
                        label: "Range Tanggal",
                        labelColor: fontColorBold,
                        mandatory: true,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Material(
                              color: Colors.transparent,
                              child: FormzTextField(
                                hintText: "Pilih Tanggal Mulai",
                                textEditingController: startDate != null
                                    ? TextEditingController(
                                        text: kDateForm.format(startDate!),
                                      )
                                    : null,
                                readOnly: true,
                                trailing: Icon(Icons.calendar_month),
                                textInputAction: TextInputAction.next,
                                onTap: () async {
                                  final picked = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime(2030),
                                  );

                                  if (picked != null) {
                                    setState(() {
                                      startDate = picked;
                                    });
                                  }
                                },
                                errorText: null,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Material(
                              color: Colors.transparent,
                              child: FormzTextField(
                                hintText: "Pilih Tanggal Selesai",
                                textEditingController: endDate != null
                                    ? TextEditingController(
                                        text: kDateForm.format(endDate!),
                                      )
                                    : null,
                                readOnly: true,
                                trailing: Icon(Icons.calendar_month),
                                textInputAction: TextInputAction.next,
                                onTap: () async {
                                  final picked = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime(2030),
                                  );

                                  if (picked != null) {
                                    setState(() {
                                      endDate = picked;
                                    });
                                  }
                                },
                                errorText: null,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    },
                    FormTextLabel(
                      label: "Tipe Visiting",
                      labelColor: fontColorBold,
                      mandatory: true,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: FormzDropDownField(
                        typeDropdown: 'PT',
                        readOnly: true,
                        daftarString: daftarDrop,
                        hintText: "Tipe",
                        textInputAction: TextInputAction.next,
                        currentSelectedValue: _selectedDrop,
                        inputItems: daftarDropdown,
                        onChanged: (value) {
                          print("Selected Value ${value}");
                          setState(() {
                            _selectedDrop = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    FormTextLabel(
                      label: "Customer",
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
                            text: selectedCustomer?.mCustName),
                        hintText: "Pilih Customer",
                        // enabled: false,
                        readOnly: true,
                        trailing: Icon(Icons.search),
                        textInputAction: TextInputAction.next,
                        onChanged: (nama) {},
                        onTap: () async {
                          Navigator.pushNamed(
                                  context, CustomerSearchView.routeName,
                                  arguments:
                                      state.repsonseCustomerVisiting?.data)
                              .then(
                            (value) {
                              if (value != null) {
                                setState(() {
                                  selectedCustomer =
                                      value as DataCustomerVisiting?;
                                });
                              }
                            },
                          );
                        },
                        errorText: null,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    FormTextLabel(
                      label: "Lokasi Customer",
                      labelColor: fontColorBold,
                      // mandatory: true,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: FormzTextField(
                        // hintText: "Pilih Customer",
                        textEditingController: TextEditingController(
                            text: selectedCustomer?.mCustDAddrName),

                        enabled: false,
                        readOnly: true,
                        // trailing: Icon(Icons.search),
                        textInputAction: TextInputAction.next,
                        onChanged: (nama) {},
                        errorText: null,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    FormTextLabel(
                      label: "Alamat Customer",
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
                            text: selectedCustomer?.mCustDAddrAddress),
                        enabled: false,
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
                      label: "Catatan Visiting",
                      labelColor: fontColorBold,
                      // mandatory: true,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: FormzTextField(
                        hintText: "Isi catatan tambahan",
                        minLines: 1,
                        maxLines: 3,
                        textEditingController:
                            fieldCatatanPlan.textEditingController,
                        onChanged: (value) {
                          setState(() {
                            fieldCatatanPlan =
                                fieldCatatanPlan.toDirty(value: value);
                          });
                        },
                        textInputAction: TextInputAction.next,
                        errorText: null,
                      ),
                    ),
                    SizedBox(
                      height: 78,
                    )
                  ],
                );
              }

              return Column(
                children: [
                  Expanded(
                      child: Center(
                    child: Text("Error load data, refresh page."),
                  )),
                ],
              );
            },
          ),
        ),
        bottomNavigationBar: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: ElevatedButton(
            onPressed: () async {
              if (_selectedTipeVisiting == 'Plan') {
                if (startDate == null || endDate == null) {
                  EasyLoading.showError("Range tanggal belum dipilih!");
                  return;
                }
              } else {
                startDate = DateTime.now();
                endDate = DateTime.now();
              }

              if (selectedCustomer == null) {
                EasyLoading.showError("Customer belum dipilih!");
                return;
              }

              if (_selectedDrop == null) {
                EasyLoading.showError("Tipe visiting belum dipilih!");
                return;
              }

              startTime = TimeOfDay.now();

              RequestCreatePlan requestCreateCustomer = RequestCreatePlan(
                activityType: _selectedDrop,
                tSalesActivityNote: fieldCatatanPlan.valueIfNotEmpty ?? '',
                isPlanning: _selectedTipeVisiting == 'Plan',
                mCustId: selectedCustomer?.mCustId,
                mCustDAddrId: selectedCustomer?.mCustDAddrId,
                planEnd: kMySqlDateFormat.format(endDate!),
                planStart: kMySqlDateFormat.format(startDate!),
                planStartTime: kMySqlDateFullFormat.format(
                  DateTime(
                    startDate!.year,
                    startDate!.month,
                    startDate!.day,
                    startTime!.hour,
                    startTime!.minute,
                  ),
                ),
              );

              log("QUEST CREATE ${jsonEncode(requestCreateCustomer)}");

              final isSimpan = await showVerifikasiDialog(
                  context: context, message: "Simpan data visiting plan?");
              if (isSimpan != null) {
                if (isSimpan == true) {
                  context.read<VisitingPlanBloc>().add(
                        SaveChecker(
                          request: requestCreateCustomer,
                        ),
                      );
                }
              }
            },
            child: Text("Simpan"),
          ),
        ),
      ),
    );
  }
}
