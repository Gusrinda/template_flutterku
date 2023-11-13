import 'package:becca_supir/src/core/model/status_page.dart';
import 'package:becca_supir/src/core/utils/extensions.dart';
import 'package:becca_supir/src/data/models/response/response_list_product/response_list_product.dart';
import 'package:becca_supir/src/presentation/blocs/product/bloc/daftar_product_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPage extends StatefulWidget {
  DetailPage({super.key, required this.titleAppbar});

  static const String routeName = "/detail-page-view";

  String titleAppbar;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DaftarProductBloc>().add(GetListDaftarProduct());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<DaftarProductBloc, DaftarProductState>(
      listener: (context, state) {
        // -- Pindah halaman / Namipilin dialog / nge setState

        if (state.statusPage == LoadingPageStatus.success) {
          context.showToast("BErhasil ambil data");
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.titleAppbar),
        ),
        body: Column(
          children: [
            BlocBuilder<DaftarProductBloc, DaftarProductState>(
              builder: (context, state) {
                if (state.statusPage == LoadingPageStatus.loading) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                if (state.statusPage == LoadingPageStatus.success) {
                  ResponseListProduct responseListProduct =
                      state.responseListProduct!;

                  return Expanded(
                    child: Container(
                      color: Colors.green.withOpacity(0.1),
                      margin: EdgeInsets.only(bottom: 12),
                      child: ListView.builder(
                        itemCount: responseListProduct.products?.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                                responseListProduct.products?[index].brand ??
                                    ''),
                          );
                        },
                      ),
                    ),
                  );
                }

                return Text("Error");
              },
            )
          ],
        ),
      ),
    );
  }
}
