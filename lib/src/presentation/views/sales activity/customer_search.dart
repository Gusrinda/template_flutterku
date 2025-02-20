import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sulinda_sales/src/core/assets/assets.gen.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/config/theme_colors.dart';
import 'package:sulinda_sales/src/core/utils/dialogs.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/response/customer/response_customer_visiting.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class CustomerSearchView extends StatefulWidget {
  const CustomerSearchView({super.key, this.daftarCustomer});

  static const String routeName = "/customer_search_view";

  final List<DataCustomerVisiting>? daftarCustomer;

  @override
  State<CustomerSearchView> createState() => _CustomerSearchViewState();
}

class _CustomerSearchViewState extends State<CustomerSearchView> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    List<DataCustomerVisiting> daftarCustomer =
        List.from(widget.daftarCustomer ?? []);

    final List<DataCustomerVisiting> filteredList =
        daftarCustomer.where((data) {
      final namaBarang = data.mCustName?.toLowerCase() ?? '';
      final codeBarang = data.mCustNameAlias?.toLowerCase() ?? '';
      return namaBarang.contains(_searchText) ||
          codeBarang.contains(_searchText);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Visiting Plan"),
        backgroundColor: themeHijauBg,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SearchFieldGrayBar(
                hintText: "Search ...",
                controller: _searchController,
                fillColor: ThemeColors.grey6,
                onSubmitted: (value) {
                  setState(() {
                    _searchText = value.toLowerCase(); // Update search text
                  });
                }),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: filteredList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10)),
                  child: ExpandablePanel(
                    theme: ExpandableThemeData(
                        headerAlignment: ExpandablePanelHeaderAlignment.center),
                    header: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFc5d8b6),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                              Assets.svg.mingcuteBuilding5Line),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "${daftarCustomer[index].mCustName}",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp),
                        ),
                      ],
                    ),
                    collapsed: SizedBox(),
                    expanded: Container(
                      margin: EdgeInsets.only(
                        top: 12.sp,
                      ),
                      child: InkWell(
                        onTap: () async {
                          final isSimpan = await showVerifikasiDialog(
                              context: context, message: "Pilih customer ini?");
                          if (isSimpan != null) {
                            if (isSimpan == true) {
                              Navigator.pop(context, daftarCustomer[index]);
                            }
                          }
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nama Lokasi',
                              style: const TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '${daftarCustomer[index].mCustDAddrName}',
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Alamat Lokasi',
                              style: const TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '${daftarCustomer[index].mCustDAddrAddress}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Jumlah Piutang',
                              style: const TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '${kRupiahFormat.format(daftarCustomer[index].jumlahPiutang ?? 0)}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 8),
                            ElevatedButton(
                                onPressed: () async {
                                  final isSimpan = await showVerifikasiDialog(
                                      context: context,
                                      message: "Pilih customer ini?");
                                  if (isSimpan != null) {
                                    if (isSimpan == true) {
                                      Navigator.pop(
                                          context, daftarCustomer[index]);
                                    }
                                  }
                                },
                                child: Text("Pilih Customer Ini"))
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
