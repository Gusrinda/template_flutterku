import 'package:soa_jpt/src/core/assets/assets.gen.dart';
import 'package:soa_jpt/src/core/config/constant.dart';
import 'package:soa_jpt/src/core/config/theme_colors.dart';
import 'package:soa_jpt/src/core/model/data_materi.dart';
import 'package:soa_jpt/src/core/model/status_page.dart';
import 'package:soa_jpt/src/core/utils/extensions.dart';
import 'package:soa_jpt/src/data/models/response/general/response_master_general.dart';
import 'package:soa_jpt/src/presentation/blocs/materi/searchData/search_data_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MateriSearchDataView extends StatefulWidget {
  const MateriSearchDataView({super.key, required this.dataMateri});

  static const String routeName = "/materi-search-data-view";

  final DataMateri dataMateri;

  @override
  State<MateriSearchDataView> createState() => _MateriSearchDataViewState();
}

class _MateriSearchDataViewState extends State<MateriSearchDataView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SearchDataBloc>().add(GetDaftarData());
    });
  }

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    DataMateri dataMateri = widget.dataMateri;

    return BlocListener<SearchDataBloc, SearchDataState>(
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
          child: BlocBuilder<SearchDataBloc, SearchDataState>(
            builder: (context, state) {
              List<String> daftarKategori = List.from(state.daftarGroup ?? []);

              return Column(
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
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 16.sp,
                        color: Colors.black38,
                      ),
                      prefixIconConstraints: const BoxConstraints(minWidth: 48),
                      hintText: "Cari",
                      hintStyle: const TextStyle(color: Colors.black38),
                      filled: true,
                      fillColor: Colors.grey[100],
                      // isCollapsed: true,
                      contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    textInputAction: TextInputAction.search,
                    onSubmitted: (value) {
                      context.read<SearchDataBloc>().add(GetDaftarSearch(
                          searchText: searchController.text,
                          selectedGroup: state.selectedFilter));
                    },
                    controller: searchController,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 48,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: daftarKategori.map((e) {
                        return GestureDetector(
                          onTap: () {
                            context.read<SearchDataBloc>().add(GetDaftarSearch(
                                  searchText: searchController.text,
                                  selectedGroup: e,
                                ));
                          },
                          child: ChipFilterKategori(
                            title: e,
                            isSelected: e == state.selectedFilter,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  BlocBuilder<SearchDataBloc, SearchDataState>(
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
                          return Center(
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
                            ),
                          );
                        }

                        return Column(
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: daftarData.length,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Card(
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
                          ],
                        );
                      }

                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            IconButton(
                                onPressed: () {
                                  context
                                      .read<SearchDataBloc>()
                                      .add(GetDaftarData());
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
              );
            },
          ),
        ),
      ),
    );
  }
}

class ChipFilterKategori extends StatelessWidget {
  const ChipFilterKategori({
    super.key,
    required this.title,
    required this.isSelected,
  });

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: isSelected ? primaryColor : Colors.white),
            color: isSelected ? primaryColor.withOpacity(0.1) : Colors.white),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 12.sp,
                  color: isSelected ? primaryColor : fontColorThin),
            ),
          ],
        ));
  }
}
