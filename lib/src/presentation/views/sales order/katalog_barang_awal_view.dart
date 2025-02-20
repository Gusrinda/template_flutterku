import 'dart:convert';
import 'dart:developer';

import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sulinda_sales/src/core/assets/assets.gen.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/config/theme_colors.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/core/utils/extensions.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_so.dart';
import 'package:sulinda_sales/src/data/models/response/barang/response_daftar_barang.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_data_general.dart';
import 'package:sulinda_sales/src/presentation/blocs/barang/bloc/katalog_barang_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/general/bloc/general_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/so_add_view.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class KatalogBarangAwalView extends StatefulWidget {
  const KatalogBarangAwalView({super.key});

  static const String routeName = "/katalog_barang_awal_view";

  @override
  State<KatalogBarangAwalView> createState() => _KatalogBarangAwalViewState();
}

class _KatalogBarangAwalViewState extends State<KatalogBarangAwalView> {
  List<DataGeneral>? daftarKategoriBarang;
  DataGeneral? selectedKategoriBarang;
  @override
  void initState() {
    final blocCustomer = context.read<GeneralBloc>();

    List<DataGeneral> daftarKategori =
        List.from(blocCustomer.state.daftarKategoriBarang ?? []);

    daftarKategoriBarang = [];

    for (var element in daftarKategori) {
      daftarKategoriBarang?.add(element);
    }

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<KatalogBarangBloc>().add(GetDaftarData());
    });
  }

  final TextEditingController _searchController = TextEditingController();
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> daftarDropdown = List.from(daftarKategoriBarang!.map(
        (e) => DropdownMenuItem(value: e.text, child: Text(e.text ?? ''))));

    double widhtGrid = (MediaQuery.of(context).size.width / 2);

    double heightGrid = (MediaQuery.of(context).size.height / 2);

    print("WIDHT => ${widhtGrid}");
    print("HEIGHT => ${heightGrid}");
    final screenSize = MediaQuery.of(context).size;

    return BlocListener<KatalogBarangBloc, KatalogBarangState>(
      listener: (context, state) {
        if (state.statusPage == LoadingPageStatus.failure) {
          context.showErrorToast("Error load data!.");
          Navigator.pop(context);
          return;
        }

        if (state.statusPage == LoadingPageStatus.success) {
          context.showOkToast("Berhasil load data.");
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: themeHijauBg,
          title: Text("View Barang"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 30, 32, 0),
              child: SearchFieldGrayBar(
                  hintText: "Search ...",
                  controller: _searchController,
                  fillColor: ThemeColors.grey6,
                  onSubmitted: (value) {
                    setState(() {
                      _searchText = value.toLowerCase(); // Update search text
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 12, 32, 0),
              child: FormzDropDownField(
                typeDropdown: 'WilayahPenagihan',
                readOnly: true,
                hintText: "Pilih Kategori",
                textInputAction: TextInputAction.next,
                daftarString: daftarKategoriBarang!
                    .map((wilayah) => wilayah.text!)
                    .toList(),
                currentSelectedValue: selectedKategoriBarang?.text,
                inputItems: daftarDropdown,
                onChanged: (value) {
                  print("Selected Value ${value}");
                  setState(() {
                    DataGeneral wilayah = daftarKategoriBarang!
                        .where((element) => element.text == value)
                        .first;

                    selectedKategoriBarang = wilayah;

                    _searchController.clear();
                    _searchText = '';
                    context.read<KatalogBarangBloc>().add(GetDaftarData(
                        idBarang: selectedKategoriBarang?.value ?? '0'));
                  });
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: BlocBuilder<KatalogBarangBloc, KatalogBarangState>(
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
                        child: Text(state.errorMessage ??
                            'Gagal memuat data list packing'),
                      ),
                    );
                  }

                  if (state.statusPage == LoadingPageStatus.success) {
                    final List<DataBarang> fullDataList =
                        List.from(state.daftarData ?? []);
                    final List<DataBarang> filteredList =
                        fullDataList.where((data) {
                      final namaBarang =
                          data.mItemLongdesc?.toLowerCase() ?? '';
                      final codeBarang = data.mItemCode?.toLowerCase() ?? '';
                      return namaBarang.contains(_searchText) ||
                          codeBarang.contains(_searchText);
                    }).toList();

                    if (filteredList.isEmpty) {
                      return SizedBox(
                        height: screenSize.height * 0.6,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.icons.iconProduk.image(width: 100),
                              const SizedBox(height: 10),
                              const Text('Belum ada daftar PO'),
                            ],
                          ),
                        ),
                      );
                    }

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 10),
                      child: DynamicHeightGridView(
                          itemCount: filteredList.length,
                          crossAxisCount: 1,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          builder: (ctx, index) {
                            // return Column(
                            //   children: [
                            //     Container(
                            //       padding: EdgeInsets.all(16),
                            //       margin: EdgeInsets.only(bottom: 12),
                            //       decoration: BoxDecoration(
                            //         color: Colors.white,
                            //         borderRadius: BorderRadius.circular(
                            //           10,
                            //         ),
                            //         border: Border.all(
                            //           color: Colors.white,
                            //         ),
                            //       ),
                            //       child: Container(
                            //         child: Text(jsonEncode(filteredList[index])),
                            //       ),
                            //     ),
                            //     Divider(),
                            //   ],
                            // );

                            return CardListProduct(
                              dataBarang: filteredList[index],
                              flagKhusus: false,
                              color:
                                  index.isEven ? Colors.black12 : Colors.white,
                              onTapCart: () async {
                                Navigator.pushNamed(
                                  context,
                                  SoAddView.routeName,
                                );
                              },
                            );
                          }),
                    );
                  }

                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk mengecek tag produk
  bool isCheckoutValid(List<DataBarang> cart) {
    if (cart.isEmpty) return false; // Cart kosong dianggap tidak valid
    String firstFlag = cart.first.jtFlag!; // Ambil jtFlag produk pertama
    return cart.every((product) => product.jtFlag == firstFlag);
  }
}

class CardCartProduct extends StatelessWidget {
  const CardCartProduct({
    super.key,
    required this.dataBarang,
    required this.flagKhusus,
    required this.onTapCart,
    required this.onDeleteCart,
    required this.onChanged,
  });

  final DataBarang dataBarang;
  final bool flagKhusus;
  final VoidCallback onTapCart;
  final VoidCallback onDeleteCart;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCart,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 86,
                width: 86,
                child: Stack(
                  children: [
                    // Image(
                    //   image: AssetImage(Assets.images.produk4.path),
                    //   height: 86,
                    //   width: 86,
                    //   fit: BoxFit.cover,
                    // ),
                    if (dataBarang.jtFlag == 'KHUSUS') ...{
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.folder_special,
                          color: Colors.red,
                        ),
                      )
                    },
                  ],
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        "${dataBarang.mItemLongdesc}",
                        maxLines: 2,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      '${kRupiahFormat.format(dataBarang.tSoDPrice)}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        "Stock : ${dataBarang.qtyStock}",
                        style: TextStyle(
                          fontSize: 12,
                          color: ThemeColors.greyCaption,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  initialValue:
                      "${dataBarang.tSoDQty ?? '0'}", //         initialValue: "0", // Initial quantity
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: '  QTY',
                    labelStyle:
                        TextStyle(fontSize: 10.sp, color: fontColorThin),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors.grey, // Custom border color
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors.blue, // Color when focused
                        width: 1.5,
                      ),
                    ),
                  ),
                  onChanged: onChanged,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              IconButton(
                  onPressed: onDeleteCart,
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class CardListProduct extends StatelessWidget {
  const CardListProduct({
    super.key,
    required this.dataBarang,
    required this.flagKhusus,
    required this.onTapCart,
    required this.color,
  });

  final DataBarang dataBarang;
  final bool flagKhusus;
  final VoidCallback onTapCart;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {},
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          color: color,
          margin: EdgeInsets.only(bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   height: 150,
              //   child: Stack(
              //     children: [
              //       // Image(
              //       //   image: AssetImage(Assets.images.produk4.path),
              //       //   height: double.infinity,
              //       //   width: double.infinity,
              //       //   fit: BoxFit.cover,
              //       // ),
              //       if (dataBarang.jtFlag == 'KHUSUS') ...{
              //         Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Icon(
              //             Icons.folder_special,
              //             color: Colors.red,
              //           ),
              //         )
              //       },
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 6,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  "${dataBarang.mItemLongdesc}",
                  maxLines: 2,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 6),
                        //   child: Row(
                        //     children: [
                        //       RichText(
                        //         text: TextSpan(
                        //           text: '',
                        //           style: TextStyle(
                        //             fontSize: 12,
                        //             color: Colors.black,
                        //             fontWeight: FontWeight.w400,
                        //           ),
                        //           children: [
                        //             TextSpan(
                        //               text:
                        //                   '${kRupiahFormat.format(dataBarang.tSoDPrice)}',
                        //               style: TextStyle(
                        //                 fontSize: 14,
                        //                 color: Colors.black,
                        //                 fontWeight: FontWeight.w600,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //       SizedBox(
                        //         width: 8,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                child: Text(
                                  "Stock : ${dataBarang.qtyStock}",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                child: Text(
                                  "Berat : ${dataBarang.mItemKonversi}",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                child: Text(
                                  "Satuan : ${dataBarang.tSoDUnit}",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                child: Text(
                                  "Warna : ${dataBarang.mItemWarna ?? '-'}",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                child: Text(
                                  "Sket : ${dataBarang.mItemSket ?? '-'}",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                child: Text(
                                  "",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // IconButton(
                  //     onPressed: onTapCart,
                  //     icon: Icon(
                  //       Icons.shopping_cart_checkout_sharp,
                  //       color: themeHijau,
                  //     ))
                  // SizedBox(
                  //   width: 80,
                  //   child: TextFormField(
                  //     initialValue: "0", // Initial quantity
                  //     keyboardType: TextInputType.number,
                  //     textAlign: TextAlign.center,
                  //     decoration: InputDecoration(
                  //       labelText: '  QTY',
                  //       labelStyle:
                  //           TextStyle(fontSize: 10.sp, color: fontColorThin),
                  //       contentPadding: EdgeInsets.symmetric(vertical: 8),
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(8),
                  //         borderSide: BorderSide(
                  //           color: Colors.grey, // Custom border color
                  //           width: 1.5,
                  //         ),
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(8),
                  //         borderSide: BorderSide(
                  //           color: Colors.grey,
                  //           width: 1.5,
                  //         ),
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(8),
                  //         borderSide: BorderSide(
                  //           color: Colors.blue, // Color when focused
                  //           width: 1.5,
                  //         ),
                  //       ),
                  //     ),
                  //     onChanged: (value) {
                  //       int? newQty = int.tryParse(value) ?? 0;
                  //       if (newQty != null) {}
                  //     },
                  //   ),
                  // ),
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
