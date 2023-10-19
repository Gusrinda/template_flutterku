import 'package:becca_supir/src/core/model/status_page.dart';
import 'package:becca_supir/src/data/models/response/response_list_belum_konfirm/response_list_belum_konfirm.dart';
import 'package:becca_supir/src/presentation/blocs/do/bloc/delivery_order_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListKonfirmView extends StatefulWidget {
  const ListKonfirmView({super.key});

  @override
  State<ListKonfirmView> createState() => _ListKonfirmViewState();
}

class _ListKonfirmViewState extends State<ListKonfirmView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DeliveryOrderBloc>().add(FetchDataAwal(mUserName: 'mimin'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeliveryOrderBloc, DeliveryOrderState>(
      listener: (context, state) {
        // EasyLoading.showToast("${state.statusPage}");
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Daftar Konfirm DO"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              BlocBuilder<DeliveryOrderBloc, DeliveryOrderState>(
                builder: (context, state) {
                  if (state.statusPage == LoadingPageStatus.loading) {
                    return CircularProgressIndicator();
                  }

                  if (state.statusPage == LoadingPageStatus.success) {
                    List<ListSelectDO> daftarData = state.daftarSelectDO!;

                    // List<ListSelectDO> = [];

                    return Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: daftarData.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () async {
                              context
                                  .read<DeliveryOrderBloc>()
                                  .add(OnSelectDO(index: index));
                            },
                            title: Text(
                                "${daftarData[index].dataBelumKonfirm?.tDoNo}"),
                            subtitle: Text(
                                "${daftarData[index].dataBelumKonfirm?.mCustName}"),
                            trailing: Checkbox(
                              value: daftarData[index].isSelected,
                              onChanged: (value) async {
                                context
                                    .read<DeliveryOrderBloc>()
                                    .add(OnSelectDO(index: index));
                              },
                            ),
                          );
                        },
                      ),
                    );
                  }

                  return Text("Error");
                },
              ),
              SizedBox(
                height: 20,
              ),
              BlocBuilder<DeliveryOrderBloc, DeliveryOrderState>(
                builder: (context, state) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () async {

                          bool isAdaYangDipilih = false;

                          for (var daftarSelected in state.daftarSelectDO!) {
                            if (daftarSelected.isSelected) {
                              isAdaYangDipilih = true;
                              break;
                            }
                          }

                          if (!isAdaYangDipilih ) {
                            EasyLoading.showError("Tidak ada yang dipilih.");
                            return;
                          }

                          context
                              .read<DeliveryOrderBloc>()
                              .add(OnSimpanKonfirm());
                        },
                        child: Text("Simpan"),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                          vertical: 20,
                        )),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
