import 'package:becca_supir/src/core/assets/assets.gen.dart';
import 'package:becca_supir/src/core/config/constant.dart';
import 'package:becca_supir/src/core/config/theme_colors.dart';
import 'package:becca_supir/src/core/model/data_materi.dart';
import 'package:becca_supir/src/core/model/status_page.dart';
import 'package:becca_supir/src/core/utils/extensions.dart';
import 'package:becca_supir/src/data/models/response/general/response_master_general.dart';
import 'package:becca_supir/src/presentation/blocs/materi/paginateData/paginate_data_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MateriPaginateDataView extends StatefulWidget {
  const MateriPaginateDataView({super.key, required this.dataMateri});

  static const String routeName = "/materi-paginate-data-view";

  final DataMateri dataMateri;

  @override
  State<MateriPaginateDataView> createState() => _MateriPaginateDataViewState();
}

class _MateriPaginateDataViewState extends State<MateriPaginateDataView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PaginateDataBloc>().add(GetDaftarData());
    });
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (currentScroll == maxScroll) {
      print("REACHED MAX LOADING");
      context.read<PaginateDataBloc>().add(const PagenationData());
    }
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DataMateri dataMateri = widget.dataMateri;

    return BlocListener<PaginateDataBloc, PaginateDataState>(
      listener: (context, state) {
        if (state.statusPage == LoadingPageStatus.failure) {
          context.showErrorToast("Error load data!.");
          Navigator.pop(context);
          return;
        }

        print(
            "HAS REACHED MAX ? ${state.currentPage} : ${state.totalPage} : ${state.hasReachedMax} ");
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(dataMateri.judul ?? 'JUDUL MATERI'),
        ),
        body: Column(
          children: [
            Text(
              dataMateri.deskripsi ?? 'Deskripsi',
              style: TextStyle(
                fontSize: 10.sp,
                fontStyle: FontStyle.italic,
              ),
            ),
            Divider(),
            BlocBuilder<PaginateDataBloc, PaginateDataState>(
              builder: (context, state) {
                if (state.statusPage == LoadingPageStatus.loading) {
                  return Expanded(
                    child: Center(
                      child: CupertinoActivityIndicator(),
                    ),
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

                  return Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all(20),
                      controller:
                          state.hasReachedMax ? null : _scrollController,
                      itemCount: state.hasReachedMax
                          ? daftarData.length
                          : daftarData.length + 1,
                      itemBuilder: (context, index) {
                        return index >= daftarData.length
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Card(
                                margin: EdgeInsets.only(bottom: 20),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor:
                                        primaryColor.withOpacity(0.5),
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
                    ),
                  );
                }

                return Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                            onPressed: () {
                              context
                                  .read<PaginateDataBloc>()
                                  .add(GetDaftarData());
                            },
                            icon: Icon(Icons.refresh_rounded)),
                        SizedBox(
                          height: 12,
                        ),
                        Text("Error load data, refresh page."),
                      ],
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
