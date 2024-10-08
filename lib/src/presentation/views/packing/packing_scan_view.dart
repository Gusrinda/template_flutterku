import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:soa_jpt/src/core/assets/assets.gen.dart';
import 'package:soa_jpt/src/core/config/constant.dart';
import 'package:soa_jpt/src/core/model/form_text_input.dart';
import 'package:soa_jpt/src/core/model/status_page.dart';
import 'package:soa_jpt/src/core/utils/extensions.dart';
import 'package:soa_jpt/src/core/utils/generators.dart';
import 'package:soa_jpt/src/data/models/dummy/model_dummy_barang.dart';
import 'package:soa_jpt/src/data/models/response/packing/response_detail_packing.dart';
import 'package:soa_jpt/src/data/models/response/packing/response_list_packing.dart';
import 'package:soa_jpt/src/presentation/blocs/packing/detail/bloc/packing_detail_bloc.dart';
import 'package:soa_jpt/src/presentation/views/home/dashboard.dart';
import 'package:soa_jpt/src/presentation/widgets/text_field_widget.dart';

class PackingScanView extends StatefulWidget {
  const PackingScanView(
      {super.key, required this.isEditing, required this.dataHeader});

  static const String routeName = "/packing_scan_view";

  final bool isEditing;
  final DataListPacking dataHeader;

  @override
  State<PackingScanView> createState() => _PackingScanViewState();
}

class _PackingScanViewState extends State<PackingScanView> {
  @override
  void initState() {
    super.initState();
    fieldKresek.textEditingController.text = '0';
    fieldPeti.textEditingController.text = '0';
    fieldIkat.textEditingController.text = '0';
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PackingDetailBloc>().add(
            GetDataDetail(
              idPacking: widget.dataHeader.trnsjjualmstoid.toString(),
            ),
          );
    });
  }

  FormTextInput fieldKresek = FormTextInput.pure();
  FormTextInput fieldPeti = FormTextInput.pure();
  FormTextInput fieldIkat = FormTextInput.pure();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return BlocListener<PackingDetailBloc, PackingDetailState>(
      listener: (context, state) {
        if (state.statusFormz == FormzStatus.submissionFailure) {
          context.showErrorToast(state.error ?? 'Error create data');
          return;
        }

        if (state.statusFormz == FormzStatus.submissionSuccess) {
          context.showOkToast("Berhasil create data");

          // Navigator.pop(context, true);
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Packing Barang"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: BlocBuilder<PackingDetailBloc, PackingDetailState>(
                  builder: (context, state) {
                    if (state.statusPage == LoadingPageStatus.loading) {
                      return SizedBox(
                        height: screenSize.height * 0.6,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    if (state.statusPage == LoadingPageStatus.failure) {
                      return SizedBox(
                        height: screenSize.height * 0.6,
                        child: Center(
                          child: Text(
                              state.error ?? 'Gagal memuat data list packing'),
                        ),
                      );
                    }

                    if (state.statusPage == LoadingPageStatus.success) {
                      final List<DataDetailPacking> dataList = List.from(
                          state.responseDetailPacking?.msgServer ?? []);

                      if (dataList.isEmpty) {
                        return SizedBox(
                          height: screenSize.height * 0.6,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Assets.icons.iconProduk.image(width: 100),
                                const SizedBox(height: 10),
                                const Text('Belum ada detail packing'),
                              ],
                            ),
                          ),
                        );
                      }

                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: dataList.length,
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
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  // child: Image.asset(image, height: 105, fit: BoxFit.cover),
                                  child: CachedNetworkImage(
                                    imageUrl: dataList[index].image ?? '',
                                    height: 64,
                                    width: 64,
                                    fit: BoxFit.cover,
                                    progressIndicatorBuilder: (context, url,
                                            downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                    errorWidget: (context, url, error) {
                                      return Assets.icons.menuBox
                                          .image(width: 64);
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${dataList[index].itemlongdesc}",
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
                                        "${dataList[index].itemcode}",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          color: fontColorThin,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "QTY : ${dataList[index].salesdeliveryqty}",
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        color: fontColorThin,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Lokasi : ${dataList[index].location}",
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        color: fontColorThin,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }

                    return const SizedBox.shrink();
                  },
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text("Kresek",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 4,
              ),
              FormzTextField(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                minLines: 1,
                enabled: widget.isEditing,
                hintText: "Input Jumlah Kresek",
                keyboardType: TextInputType.number,
                textEditingController: fieldKresek.textEditingController,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Ikat",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 4,
              ),
              FormzTextField(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                minLines: 1,
                enabled: widget.isEditing,
                hintText: "Input Jumlah Ikat",
                keyboardType: TextInputType.number,
                textEditingController: fieldIkat.textEditingController,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Peti",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 4,
              ),
              FormzTextField(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                minLines: 1,
                enabled: widget.isEditing,
                hintText: "Input Jumlah Peti",
                keyboardType: TextInputType.number,
                textEditingController: fieldPeti.textEditingController,
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        bottomNavigationBar: SafeArea(
            minimum: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            child: widget.isEditing
                ? ElevatedButton(
                    onPressed: () async {
                      final isOke = await context.showConfirmationBottomSheet(
                          image: Assets.icons.printer.path,
                          title: "Konfirmasi",
                          message: "Simpan Update?");

                      if (isOke != null) {
                        if (isOke) {
                          context
                              .read<PackingDetailBloc>()
                              .add(UpdateDataPacking(
                                idPacking: widget.dataHeader.trnsjjualmstoid
                                    .toString(),
                                qtyKresek:
                                    fieldKresek.textEditingController.text,
                                qtyPeti: fieldPeti.textEditingController.text,
                                qtyIkat: fieldIkat.textEditingController.text,
                              ));
                        }
                      }
                    },
                    child: Text("Simpan Update"),
                  )
                : ElevatedButton(
                    onPressed: () async {
                      final isOke = await context.showConfirmationBottomSheet(
                          image: Assets.icons.printer.path,
                          title: "Konfirmasi",
                          message: "Cetak Surat Jalan?");

                      if (isOke != null) {
                        if (isOke) {
                          Navigator.pop(context);
                        }
                      }
                    },
                    child: Text("Cetak Surat Jalan"),
                  )),
      ),
    );
  }
}
