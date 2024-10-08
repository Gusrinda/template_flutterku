import 'dart:math';
import 'dart:developer' as dev;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:soa_jpt/src/core/assets/assets.gen.dart';
import 'package:soa_jpt/src/core/config/constant.dart';
import 'package:soa_jpt/src/core/config/theme_colors.dart';
import 'package:soa_jpt/src/core/model/form_text_input.dart';
import 'package:soa_jpt/src/core/model/status_page.dart';
import 'package:soa_jpt/src/core/utils/extensions.dart';
import 'package:soa_jpt/src/core/utils/generators.dart';
import 'package:soa_jpt/src/data/models/dummy/model_dummy_barang.dart';
import 'package:soa_jpt/src/data/models/response/scan/response_checker_detail.dart';
import 'package:soa_jpt/src/presentation/blocs/scan/bloc/scan_barcode_bloc.dart';
import 'package:soa_jpt/src/presentation/views/scanner/checker_barang_view.dart';
import 'package:soa_jpt/src/presentation/views/scanner/scanner_error_widget.dart';
import 'package:soa_jpt/src/presentation/widgets/custom_decoration.dart';
import 'package:soa_jpt/src/presentation/widgets/custom_dialog_payment.dart';
import 'package:soa_jpt/src/presentation/widgets/text_field_widget.dart';
import 'package:soa_jpt/src/presentation/widgets/text_widget.dart';

class ScanBarcodeView extends StatefulWidget {
  const ScanBarcodeView({super.key});

  static const String routeName = "/scan_barcode_view";

  @override
  State<ScanBarcodeView> createState() => _ScanBarcodeViewState();
}

class _ScanBarcodeViewState extends State<ScanBarcodeView> {
  final GlobalKey _globalKey = GlobalKey();

  FormTextInput fieldBarcode = FormTextInput.pure();

  final MobileScannerController controllerMobile = MobileScannerController(
      torchEnabled: false, returnImage: true, autoStart: false);

  Barcode? result;

  @override
  void dispose() {
    controllerMobile.stop();
    controllerMobile.dispose();
    super.dispose();
  }

  Future<void> _startCamera() async {
    Future.delayed(
        const Duration(seconds: 1), () async => await controllerMobile.start());
  }

  void _handleBarcode(BarcodeCapture barcodes) async {
    if (mounted) {
      context
          .read<ScanBarcodeBloc>()
          .add(ChangeSearchField(search: barcodes.barcodes.first.rawValue!));
      // setState(() {
      //   result = barcodes.barcodes.firstOrNull;
      // });
    }
  }

  @override
  void initState() {
    super.initState();
    _startCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Scan Barcode"),
        ),
        body: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(20),
          child: BlocBuilder<ScanBarcodeBloc, ScanBarcodeState>(
            builder: (context, state) {
              if (state.barcodeString != null) {
                List<DataDetailChecker> daftarBarang =
                    List.from(state.resopnseCheckerDetail?.msgServer ?? []);

                return Column(
                  children: [
                    const Center(
                      child: Text(
                        "HASIL SCAN CODE",
                        style: TextStyle(
                            fontSize: 24,
                            color: ThemeColors.backgroundTheme,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SubHeaderLabel("Result : ${state.barcodeString}"),
                    SizedBox(height: 8),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: daftarBarang.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            // child: Image.asset(image, height: 105, fit: BoxFit.cover),
                            child: CachedNetworkImage(
                              imageUrl: daftarBarang[index].image ?? '',
                              // height: 80,
                              // width: 80,
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
                          title: Text("${daftarBarang[index].itemlongdesc}"),
                          subtitle: Text("${daftarBarang[index].itemcode}"),
                        );
                      },
                    )
                  ],
                );
              }

              return Column(
                children: [
                  SubHeaderLabel(
                      "Scan Barcode SO Plan untuk memulai pengecekan"),
                  const Center(
                    child: Text(
                      "SCAN BARCODE SEKARANG",
                      style: TextStyle(
                          fontSize: 24,
                          color: ThemeColors.backgroundTheme,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FormzTextField(
                          hintText: "Scan Barcode",
                          autofocus: true,
                          // keyboardType: TextInputType.multiline,
                          textEditingController:
                              fieldBarcode.textEditingController,
                          trailing: Icon(Icons.scanner),
                          onSubmitted: (value) {
                            setState(() {
                              fieldBarcode.textEditingController.text = value;
                              context.read<ScanBarcodeBloc>().add(
                                    ChangeSearchField(
                                      search: value,
                                    ),
                                  );
                            });
                          },
                          onChanged: (value) {
                            if (value.contains('\n')) {
                              context.read<ScanBarcodeBloc>().add(
                                    ChangeSearchField(
                                      search: value,
                                    ),
                                  );
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
                            context.read<ScanBarcodeBloc>().add(
                                  ChangeSearchField(
                                    search:
                                        fieldBarcode.textEditingController.text,
                                  ),
                                );
                          },
                        ),
                      ),
                    ],
                  ),
                  // Center(
                  //   child: GestureDetector(
                  //     onTap: () {},
                  //     child: Container(
                  //       width: double.infinity,
                  //       height: 300,
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
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //       horizontal: 54, vertical: 30),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       GestureDetector(
                  //         onTap: () async {
                  //           await controllerMobile.toggleTorch();
                  //         },
                  //         child: Container(
                  //           padding: const EdgeInsets.all(10),
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               color: ThemeColors.backgroundTheme
                  //                   .withOpacity(0.1)),
                  //           child: const Center(
                  //               child: Icon(
                  //             Icons.flash_on_rounded,
                  //             color: ThemeColors.backgroundTheme,
                  //             size: 50,
                  //           )),
                  //         ),
                  //       ),
                  //       GestureDetector(
                  //         onTap: () async {
                  //           await controllerMobile.switchCamera();
                  //         },
                  //         child: Container(
                  //           padding: const EdgeInsets.all(10),
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               color: ThemeColors.backgroundTheme
                  //                   .withOpacity(0.1)),
                  //           child: const Center(
                  //               child: Icon(
                  //             Icons.cameraswitch_rounded,
                  //             color: ThemeColors.backgroundTheme,
                  //             size: 50,
                  //           )),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              );
            },
          ),
        ),
        bottomNavigationBar: BlocBuilder<ScanBarcodeBloc, ScanBarcodeState>(
          builder: (context, state) {
            if (state.barcodeString != null) {
              return SafeArea(
                  minimum: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          fieldBarcode.textEditingController.clear();
                          context.read<ScanBarcodeBloc>().add(RefreshBarcode());
                        },
                        child: Text(
                          "Ambil Ulang Barcode",
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          controllerMobile.stop();
                          controllerMobile.dispose();
                          Navigator.pushNamed(
                              context, CheckerBarangView.routeName,
                              arguments: {
                                "dataHeader":
                                    state.responseCheckerSO!.msgServer!.first,
                                "dataDetail":
                                    state.resopnseCheckerDetail?.msgServer ??
                                        [],

// bisa pakai ??
// artinya kalau null maka ambil yang argument belakang
                              });
                        },
                        child: Text(
                          "Ambil Data",
                        ),
                      ),
                    ],
                  ));
            }

            return SizedBox();
          },
        ));
  }
}
