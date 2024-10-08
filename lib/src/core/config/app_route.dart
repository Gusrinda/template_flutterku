import 'package:soa_jpt/main.dart';
import 'package:soa_jpt/src/core/model/data_materi.dart';
import 'package:soa_jpt/src/presentation/blocs/auth/auth_bloc.dart';
import 'package:soa_jpt/src/presentation/blocs/materi/getData/bloc/get_data_bloc.dart';
import 'package:soa_jpt/src/presentation/blocs/materi/paginateData/paginate_data_bloc.dart';
import 'package:soa_jpt/src/presentation/blocs/materi/searchData/search_data_bloc.dart';
import 'package:soa_jpt/src/presentation/blocs/packing/detail/bloc/packing_detail_bloc.dart';
import 'package:soa_jpt/src/presentation/blocs/packing/list/bloc/packing_list_bloc.dart';
import 'package:soa_jpt/src/presentation/blocs/scan/bloc/scan_barcode_bloc.dart';
import 'package:soa_jpt/src/presentation/views/home/dashboard.dart';
import 'package:soa_jpt/src/presentation/views/lokasi/lokasi_barang_view.dart';
import 'package:soa_jpt/src/presentation/views/materi/materi_page/materi_list_data.dart';
import 'package:soa_jpt/src/presentation/views/materi/materi_page/materi_paginate_data.dart';
import 'package:soa_jpt/src/presentation/views/materi/materi_page/materi_search_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soa_jpt/src/presentation/views/packing/menu_packing_view.dart';
import 'package:soa_jpt/src/presentation/views/packing/packing_history_view.dart';
import 'package:soa_jpt/src/presentation/views/packing/packing_list_view.dart';
import 'package:soa_jpt/src/presentation/views/packing/packing_scan_view.dart';
import 'package:soa_jpt/src/presentation/views/scanner/checker_barang_view.dart';
import 'package:soa_jpt/src/presentation/views/scanner/scan_barcode_view.dart';

import '../../presentation/blocs/login/login_bloc.dart';
import '../../presentation/views/auth/login_page.dart';
import '../../presentation/views/splashscreen.dart';

class AppRoute {
  const AppRoute._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late WidgetBuilder builder;
    bool fullScreenDialog = false;

    switch (settings.name) {
      case LoginPage.routeName:
        builder = (context) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => LoginBloc(
                    userRepository: context.read(),
                  ),
                ),
              ],
              child: const LoginPage(),
            );
        fullScreenDialog = true;
        break;
      case DashboardPage.routeName:
        print("ARGUMENT ? => ${settings.arguments}");

        builder = (context) => DashboardPage(
              page: pageSelectController.stream,
            );
        break;
      case MateriListDataView.routeName:
        DataMateri dataMateri = settings.arguments as DataMateri;

        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;
                return GetDataBloc(
                  repository: context.read(),
                  token: tokenUser,
                );
              },
              child: MateriListDataView(
                dataMateri: dataMateri,
              ),
            );
        break;
      case MateriSearchDataView.routeName:
        DataMateri dataMateri = settings.arguments as DataMateri;

        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;
                return SearchDataBloc(
                  repository: context.read(),
                  token: tokenUser,
                );
              },
              child: MateriSearchDataView(
                dataMateri: dataMateri,
              ),
            );
        break;
      case MateriPaginateDataView.routeName:
        DataMateri dataMateri = settings.arguments as DataMateri;

        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;
                return PaginateDataBloc(
                  repository: context.read(),
                  token: tokenUser,
                );
              },
              child: MateriPaginateDataView(
                dataMateri: dataMateri,
              ),
            );
        break;
      case MenuPackingView.routeName:
        builder = (context) => MenuPackingView();
        break;
      case PackingListView.routeName:
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;

                return PackingListBloc(
                  packingRepository: context.read(),
                  userId: userLogin!.idSales.toString(),
                );
              },
              child: PackingListView(),
            );
        break;
      case PackingScanView.routeName:
        Map<String, dynamic> map = settings.arguments as Map<String, dynamic>;

        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;
                return PackingDetailBloc(
                  packingRepository: context.read(),
                  userId: userLogin!.idSales.toString(),
                );
              },
              child: PackingScanView(
                isEditing: map['isEditing'],
                dataHeader: map['dataHeader'],
              ),
            );
        break;
      case PackingHistoryView.routeName:
        builder = (context) => PackingHistoryView();
        break;
      case ScanBarcodeView.routeName:
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;
                return ScanBarcodeBloc(
                  scanRepository: context.read(),
                  idUser: userLogin!.idSales.toString(),
                );
              },
              child: ScanBarcodeView(),
            );
        break;
      case CheckerBarangView.routeName:
        Map<String, dynamic> map = settings.arguments as Map<String, dynamic>;

        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;
                return ScanBarcodeBloc(
                  scanRepository: context.read(),
                  idUser: userLogin!.idSales.toString(),
                );
              },
              child: CheckerBarangView(
                dataHeader: map['dataHeader'],
                dataDetail: map['dataDetail'],
              ),
            );
        break;
      case LokasiBarangView.routeName:
        builder = (context) => LokasiBarangView();
        break;
      default:
        builder = (context) => const SplashScreen();
        break;
    }

    return MaterialPageRoute<void>(
        settings: settings,
        builder: builder,
        fullscreenDialog: fullScreenDialog,
        maintainState: true);
  }
}
