import 'dart:convert';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:soa_jpt/src/core/assets/assets.gen.dart';
import 'package:soa_jpt/src/core/config/constant.dart';
import 'package:soa_jpt/src/core/model/form_text_input.dart';
import 'package:soa_jpt/src/core/utils/extensions.dart';
import 'package:soa_jpt/src/data/models/dummy/model_dummy_barang.dart';
import 'package:soa_jpt/src/data/models/request/request_save_checker.dart';
import 'package:soa_jpt/src/data/models/response/scan/response_checker_detail.dart';
import 'package:soa_jpt/src/data/models/response/scan/response_checker_so.dart';
import 'package:soa_jpt/src/presentation/blocs/auth/auth_bloc.dart';
import 'package:soa_jpt/src/presentation/blocs/scan/bloc/scan_barcode_bloc.dart';
import 'package:soa_jpt/src/presentation/views/home/dashboard.dart';
import 'package:soa_jpt/src/presentation/views/packing/packing_list_view.dart';
import 'package:soa_jpt/src/presentation/views/scanner/scanner_error_widget.dart';
import 'package:soa_jpt/src/presentation/widgets/text_field_widget.dart';
import 'package:soa_jpt/src/presentation/widgets/text_widget.dart';

class CheckerBarangView extends StatefulWidget {
  const CheckerBarangView(
      {super.key, required this.dataHeader, required this.dataDetail});

  static const String routeName = "/checker_barang_view";

  final DataCheckerSO dataHeader;
  final List<DataDetailChecker> dataDetail;

  @override
  State<CheckerBarangView> createState() => _CheckerBarangViewState();
}

class _CheckerBarangViewState extends State<CheckerBarangView> {
  List<DataCheckingScan> daftarSelectedBarang = [];

  String selectedFilter = '';

  final GlobalKey _globalKey = GlobalKey();

  final MobileScannerController controllerMobile = MobileScannerController(
      torchEnabled: false, returnImage: true, autoStart: false);

  Barcode? result;

  Future<void> _startCamera() async {
    Future.delayed(
        const Duration(seconds: 1), () async => await controllerMobile.start());
  }

  void _handleBarcode(BarcodeCapture barcodes) async {
    if (mounted) {
      controllerMobile.stop();
      // controllerMobile.dispose();
      doUpdateListData(barcodes.barcodes.first.rawValue);
      _startCamera();
    }
  }

  void doUpdateListData(String? barcode) async {
    DataCheckingScan? item = findItemByBarcode(daftarSelectedBarang, barcode!);

    if (item != null) {
      int qtyTambah = 1;

      if (barcode == item.dataDetailChecker?.itembarcode1) {
        qtyTambah = item.dataDetailChecker?.konvbarcode1 ?? 1;
      } else if (barcode == item.dataDetailChecker?.itembarcode2) {
        qtyTambah = item.dataDetailChecker?.konvbarcode2 ?? 1;
      } else if (barcode == item.dataDetailChecker?.itembarcode3) {
        qtyTambah = item.dataDetailChecker?.konvbarcode3 ?? 1;
      }

      var qtyAkhir = item.qtySekarang! + qtyTambah;

      log("QTY TAMBAH ${qtyTambah}");
      log("QTY AKHIR ${qtyAkhir}");

      var index;

      for (var i = 0; i < daftarSelectedBarang.length; i++) {
        if (item.dataDetailChecker?.itemcode ==
            daftarSelectedBarang[i].dataDetailChecker?.itemcode) {
          index = i;
        }
      }

      if (qtyAkhir > daftarSelectedBarang[index].dataDetailChecker!.maxqty!) {
        EasyLoading.showInfo("Barang sudah mencapai batas maximal");
        return;
      }

      daftarSelectedBarang[index] = daftarSelectedBarang[index].copyWith(
        qtySekarang: qtyAkhir,
        isChecked:
            qtyAkhir == daftarSelectedBarang[index].dataDetailChecker!.maxqty!,
      );

      log("HASIL AKHIR BARANG INI ${daftarSelectedBarang[index]}");

      EasyLoading.showSuccess(
          "Tambah barang ${item.dataDetailChecker?.itemlongdesc}");
      setState(() {});
    } else {
      EasyLoading.showError('Tidak ada barang tersebut di daftar.');
    }

    fieldBarcode.textEditingController.clear();
  }

  DataCheckingScan? findItemByBarcode(
      List<DataCheckingScan> items, String barcode) {
    for (var item in items) {
      if (item.dataDetailChecker!.itembarcode1 == barcode ||
          item.dataDetailChecker!.itembarcode2 == barcode ||
          item.dataDetailChecker!.itembarcode3 == barcode) {
        return item;
      }
    }
    return null; // Mengembalikan null jika tidak ada item yang cocok
  }

  @override
  void dispose() {
    controllerMobile.stop();
    controllerMobile.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // controllerMobile.stop();
    // controllerMobile.dispose();
    daftarSelectedBarang = widget.dataDetail.map(
      (e) {
        return DataCheckingScan(
          dataDetailChecker: e,
          qtySekarang: 0,
          isChecked: false,
        );
      },
    ).toList();

    super.initState();
    // _startCamera();
  }

  final focus = FocusNode();
  FormTextInput fieldBarcode = FormTextInput.pure();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ScanBarcodeBloc, ScanBarcodeState>(
      listener: (context, state) {
        if (state.statusForm == FormzStatus.submissionFailure) {
          context.showErrorToast(state.error ?? 'Error create data');
          return;
        }

        if (state.statusForm == FormzStatus.submissionSuccess) {
          context.showOkToast("Berhasil create data");

          // Navigator.pop(context, true);
          Navigator.popUntil(
            context,
            (route) => route.settings.name == DashboardPage.routeName,
          );
          Navigator.pushNamed(
            context,
            PackingListView.routeName,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Checker Scan Barang"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            children: [
              // Center(
              //   child: GestureDetector(
              //     onTap: () {},
              //     child: Container(
              //       decoration:
              //           BoxDecoration(borderRadius: BorderRadius.circular(12)),
              //       width: double.infinity,
              //       height: 100,
              //       child: MobileScanner(
              //         controller: controllerMobile,
              //         // onDetect:
              //         //     state.statusSearch != LoadingPageStatus.loading
              //         //         ? _handleBarcode
              //         //         : null,

              //         onDetect: _handleBarcode,
              //         errorBuilder: (context, error, child) {
              //           print("ERROR ${error}");
              //           controllerMobile.stop();
              //           controllerMobile.start();
              //           return ScannerErrorWidget(error: error);
              //         },
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //   ),
              // ),
              Row(
                children: [
                  Expanded(
                    child: FormzTextField(
                      hintText: "Scan Barang",
                      focustNode: focus,
                      autofocus: true,
                      textEditingController: fieldBarcode.textEditingController,
                      trailing: Icon(Icons.scanner),
                      onSubmitted: (value) {
                        setState(() {
                          fieldBarcode.textEditingController.text = value;
                          doUpdateListData(
                              fieldBarcode.textEditingController.text);
                          FocusScope.of(context).requestFocus(focus);
                        });
                      },
                      onChanged: (value) {
                        if (value.contains('\n')) {
                          doUpdateListData(
                              fieldBarcode.textEditingController.text);
                          FocusScope.of(context).requestFocus(focus);
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: primaryColor,
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 18,
                      ),
                      onPressed: () {
                        doUpdateListData(
                            fieldBarcode.textEditingController.text);
                        FocusScope.of(context).requestFocus(focus);
                      },
                    ),
                  ),
                ],
              ),

              // FormzTextField(
              //   hintText: "Scan Barang",
              //   autofocus: true,
              //   textEditingController: fieldBarcode.textEditingController,
              //   trailing: Icon(Icons.scanner),
              //   onChanged: (value) {
              //     Future.delayed(const Duration(milliseconds: 1000), () {
              //       print("SCAN BARCODE SEKARANG ${value}");
              //     });
              //   },
              // ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: HeaderLabel("Daftar Barang"),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  DropdownButton(
                    items: List.from([
                      "OK",
                      "NOT OK",
                      "ALL"
                    ].map((e) => DropdownMenuItem(value: e, child: Text(e)))),
                    onChanged: (value) {
                      setState(() {
                        selectedFilter = value! as String;

                        if (selectedFilter == 'OK') {
                          // Urutkan isSelected yang true terlebih dahulu
                          daftarSelectedBarang.sort((a, b) {
                            if (a.isChecked && !b.isChecked) return -1;
                            if (!a.isChecked && b.isChecked) return 1;
                            return 0;
                          });
                        } else if (selectedFilter == 'NOT OK') {
                          // Urutkan isSelected yang false terlebih dahulu
                          daftarSelectedBarang.sort((a, b) {
                            if (!a.isChecked && b.isChecked) return -1;
                            if (a.isChecked && !b.isChecked) return 1;
                            return 0;
                          });
                        } else if (selectedFilter == 'ALL') {
                          // Urutkan berdasarkan id
                          daftarSelectedBarang.sort((a, b) => a
                              .dataDetailChecker!.itemoid!
                              .compareTo(b.dataDetailChecker!.itemoid!));
                        }
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: daftarSelectedBarang.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(8),
                          //   child: Image.asset(
                          //     Assets.images.produk1.path,
                          //     height: 64,
                          //     width: 64,
                          //   ),
                          // ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            // child: Image.asset(image, height: 105, fit: BoxFit.cover),
                            child: CachedNetworkImage(
                              imageUrl: daftarSelectedBarang[index]
                                      .dataDetailChecker
                                      ?.image ??
                                  '',
                              height: 64,
                              width: 64,
                              fit: BoxFit.cover,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                          value: downloadProgress.progress),
                              errorWidget: (context, url, error) {
                                return Assets.icons.menuBox.image(width: 64);
                              },
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${daftarSelectedBarang[index].dataDetailChecker?.itemlongdesc}",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    color: fontColorBold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "${daftarSelectedBarang[index].dataDetailChecker?.itemcode}",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: fontColorThin,
                                  ),
                                ),
                                // SizedBox(
                                //   height: 4,
                                // ),
                                // Text(
                                //   "QTY SEKARANG : ${daftarSelectedBarang[index].qtySekarang}",
                                //   style: TextStyle(
                                //     fontSize: 10.sp,
                                //     color: fontColorThin,
                                //   ),
                                // )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Checkbox(
                            value: daftarSelectedBarang[index].isChecked,
                            onChanged: null,
                          ),
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
            vertical: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final isOke = await context.showConfirmDialog(
                            title: "Konfirmasi",
                            message: "Yakin untuk cancel SO plan ini?",
                            negativeButton: "Tidak",
                            positiveButton: "Ya");

                        if (isOke != null) {
                          if (isOke) {
                            Navigator.popUntil(
                              context,
                              (route) =>
                                  route.settings.name ==
                                  DashboardPage.routeName,
                            );
                          }
                        }
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          // border: Border.all(
                          //   color: Colors.black26,
                          // ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.close_rounded,
                              size: 24,
                              color: Colors.red,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "CANCEL",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        bool isChecked = true;
                        int countBarang = 0;

                        for (var element in daftarSelectedBarang) {
                          if (!element.isChecked) {
                            isChecked = false;
                            countBarang++;
                          }
                        }

                        // if (!isChecked) {
                        //   EasyLoading.showError(
                        //       "${countBarang} Barang belum di check!");
                        //   return;
                        // }

                        final isOke = await context.showConfirmDialog(
                            title: "Konfirmasi",
                            message: !isChecked
                                ? "Submit SO Plan belum lengkap?"
                                : "Yakin untuk submit SO plan ini?",
                            negativeButton: "Tidak",
                            positiveButton: "Ya");

                        if (isOke != null) {
                          if (isOke) {
                            final authBloc = context.read<AuthBloc>();
                            final user = authBloc.state.userModel;
                            final userLogin = authBloc.state.loginUser;
                            final tokenUser = authBloc.state.tokenUser;

                            JsonHdr jsonHdr = JsonHdr(
                              ekspedisioid:
                                  widget.dataHeader.ekspedisioid.toString(),
                              orderno: widget.dataHeader.orderno.toString(),
                              trnordernote: widget.dataHeader.trnordernote,
                              userid: userLogin!.userid,
                            );

                            List<JsonDtl> daftarJsonDtl = [];

                            for (var data in daftarSelectedBarang) {
                              daftarJsonDtl.add(
                                JsonDtl(
                                  itemoid: data.dataDetailChecker!.itemoid
                                      .toString(),
                                  orderdtloid: data
                                      .dataDetailChecker!.trnorderdtloid
                                      .toString(),
                                  salesdeliveryqty: data.qtySekarang.toString(),
                                  trnordermstoid: data
                                      .dataDetailChecker!.trnordermstoid
                                      .toString(),
                                  trnorderdtlunitoid: data
                                      .dataDetailChecker!.trnorderdtlunitoid
                                      .toString(),
                                ),
                              );
                            }

                            RequestSaveChecker requestSaveChecker =
                                RequestSaveChecker(
                              jsonHdr: [jsonHdr],
                              jsonDtl: daftarJsonDtl,
                            );

                            log("POST DATA ${jsonEncode(requestSaveChecker)}");

                            context
                                .read<ScanBarcodeBloc>()
                                .add(SaveChecker(request: requestSaveChecker));
                            // Navigator.popUntil(
                            //   context,
                            //   (route) =>
                            //       route.settings.name == DashboardPage.routeName,
                            // );
                          }
                        }
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          // border: Border.all(
                          //   color: Colors.black26,
                          // ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.upload,
                              size: 24,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "SUBMIT",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w700,
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 12,
                  // ),
                  // Expanded(
                  //   child: GestureDetector(
                  //     onTap: () async {
                  //       final isOke = await context.showConfirmDialog(
                  //           title: "Konfirmasi",
                  //           message: "Yakin untuk ambil ulang data ini?",
                  //           negativeButton: "Tidak",
                  //           positiveButton: "Ya");

                  //       if (isOke != null) {
                  //         if (isOke) {
                  //           setState(() {
                  //             for (var i = 0;
                  //                 i < daftarSelectedBarang.length;
                  //                 i++) {
                  //               ModelDummySelectedBarang
                  //                   modelDummySelectedBarang =
                  //                   daftarSelectedBarang[i].copyWith(
                  //                 modelBarang:
                  //                     daftarSelectedBarang[i].modelBarang,
                  //                 isSelected: false,
                  //               );

                  //               daftarSelectedBarang[i] =
                  //                   modelDummySelectedBarang;
                  //             }
                  //           });
                  //         }
                  //       }
                  //     },
                  //     child: Container(
                  //       padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  //       decoration: BoxDecoration(
                  //         color: Colors.black12,
                  //         borderRadius: BorderRadius.circular(
                  //           10,
                  //         ),
                  //         // border: Border.all(
                  //         //   color: Colors.black26,
                  //         // ),
                  //       ),
                  //       child: Column(
                  //         children: [
                  //           Icon(
                  //             Icons.replay_outlined,
                  //             size: 24,
                  //             color: Colors.orange,
                  //           ),
                  //           SizedBox(
                  //             height: 3,
                  //           ),
                  //           Text(
                  //             "RETRY",
                  //             style: TextStyle(
                  //               color: Colors.orange,
                  //               fontWeight: FontWeight.w700,
                  //               fontSize: 12.sp,
                  //             ),
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
