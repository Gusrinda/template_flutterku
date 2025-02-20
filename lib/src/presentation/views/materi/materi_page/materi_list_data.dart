import 'package:sulinda_sales/src/core/assets/assets.gen.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/config/theme_colors.dart';
import 'package:sulinda_sales/src/core/model/data_materi.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/core/utils/extensions.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_master_general.dart';
import 'package:sulinda_sales/src/presentation/blocs/materi/getData/bloc/get_data_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MateriListDataView extends StatefulWidget {
  const MateriListDataView({super.key, required this.dataMateri});

  static const String routeName = "/materi-list-data-view";

  final DataMateri dataMateri;

  @override
  State<MateriListDataView> createState() => _MateriListDataViewState();
}

class _MateriListDataViewState extends State<MateriListDataView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<GetDataBloc>().add(GetDaftarData());
    });
  }

  @override
  Widget build(BuildContext context) {
    DataMateri dataMateri = widget.dataMateri;

    return BlocListener<GetDataBloc, GetDataState>(
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
          title: Text(dataMateri.judul ?? 'JUDUL MATERI'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dataMateri.deskripsi ?? 'Deskripsi',
                style: TextStyle(
                  fontSize: 10.sp,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Divider(),
              BlocBuilder<GetDataBloc, GetDataState>(
                builder: (context, state) {
                  if (state.statusPage == LoadingPageStatus.loading) {
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  }

                  if (state.statusPage == LoadingPageStatus.success) {
                    List<DataGeneral> daftarData =
                        List.from(state.daftarData ?? []);

                    if (daftarData.isEmpty) {
                      return Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.images.addProduk.path,
                            height: 200,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Daftar Data Kosong",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ThemeColors.blackPrimary,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ));
                    }

                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: daftarData.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Card(
                          margin: EdgeInsets.only(bottom: 20),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: primaryColor.withOpacity(0.5),
                              child: Text(
                                daftarData[index].group?[0] ?? '-',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            title: Text(
                              daftarData[index].value ?? '-',
                            ),
                            subtitle: Text(
                              daftarData[index].group ?? '-',
                            ),
                          ),
                        );
                      },
                    );
                  }

                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                            onPressed: () {
                              context.read<GetDataBloc>().add(GetDaftarData());
                            },
                            icon: Icon(Icons.refresh_rounded)),
                        SizedBox(
                          height: 12,
                        ),
                        Text("Error load data, refresh page."),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
