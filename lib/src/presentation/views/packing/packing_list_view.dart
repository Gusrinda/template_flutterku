import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sulinda_sales/src/core/assets/assets.gen.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/response/packing/response_list_packing.dart';
import 'package:sulinda_sales/src/presentation/blocs/packing/list/bloc/packing_list_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/packing/packing_scan_view.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class PackingListView extends StatefulWidget {
  const PackingListView({super.key});

  static const String routeName = "/packing_list_view";

  @override
  State<PackingListView> createState() => _PackingListViewState();
}

class _PackingListViewState extends State<PackingListView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PackingListBloc>().add(GetData());
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Packing List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            BlocBuilder<PackingListBloc, PackingListState>(
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
                      child:
                          Text(state.error ?? 'Gagal memuat data list packing'),
                    ),
                  );
                }

      

                if (state.statusPage == LoadingPageStatus.success) {
                  final List<DataListPacking> dataList =
                      List.from(state.responseListPacking?.msgServer ?? []);

                  if (dataList.isEmpty) {
                    return SizedBox(
                      height: screenSize.height * 0.6,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Assets.icons.iconProduk.image(width: 100),
                            const SizedBox(height: 10),
                            const Text('Belum ada daftar packing'),
                          ],
                        ),
                      ),
                    );
                  }

                  return Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: dataList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                    "Nomor SO : ${dataList[index].orderno}"),
                                onTap: () async {
                                  Navigator.pushNamed(
                                      context, PackingScanView.routeName,
                                      arguments: {
                                        'isEditing': true,
                                        'dataHeader': dataList[index]
                                      }).then(
                                    (value) {
                                      context
                                          .read<PackingListBloc>()
                                          .add(GetData());
                                    },
                                  );
                                },
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Expedisi ${dataList[index].expedisi}"),
                                    Text(
                                        "Tanggal : ${dataList[index].trnorderdate!.substring(0, 10)}"),
                                  ],
                                ),
                                leading: Icon(Icons.pin_drop),
                                trailing: Icon(Icons.snippet_folder_rounded),
                              ),
                              Divider()
                            ],
                          ),
                        );
                      },
                    ),
                  );
                }

                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}