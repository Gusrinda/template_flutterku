import 'dart:developer';

import 'package:sulinda_sales/main.dart';
import 'package:sulinda_sales/src/core/model/data_materi.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_customer.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_so.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_absensi.dart';
import 'package:sulinda_sales/src/data/models/response/customer/response_customer_visiting.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_detail_calendar.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_detail_so.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_list_so.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_detail_plan.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_list_plan.dart';
import 'package:sulinda_sales/src/presentation/blocs/auth/auth_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/barang/bloc/katalog_barang_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/customer/bloc/customer_create_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/kalender/bloc/calendar_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/kalender/bloc/detail_tagihan_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/materi/getData/bloc/get_data_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/materi/paginateData/paginate_data_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/materi/searchData/search_data_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/packing/detail/bloc/packing_detail_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/packing/list/bloc/packing_list_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/scan/bloc/scan_barcode_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/so/create/bloc/so_create_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/so/list/bloc/so_list_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/visiting/bloc/visiting_plan_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/visiting/list/bloc/visiting_list_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/calendar/detail_tagihan_view.dart';
import 'package:sulinda_sales/src/presentation/views/calendar/monthly_calendar_view.dart';
import 'package:sulinda_sales/src/presentation/views/customer/form/form_add_alamat.dart';
import 'package:sulinda_sales/src/presentation/views/customer/form/form_add_bank.dart';
import 'package:sulinda_sales/src/presentation/views/customer/form/form_add_penagihan.dart';
import 'package:sulinda_sales/src/presentation/views/customer/form_pengajuan_customer.dart';
import 'package:sulinda_sales/src/presentation/views/home/dashboard.dart';
import 'package:sulinda_sales/src/presentation/views/lokasi/lokasi_barang_view.dart';
import 'package:sulinda_sales/src/presentation/views/materi/materi_page/materi_list_data.dart';
import 'package:sulinda_sales/src/presentation/views/materi/materi_page/materi_paginate_data.dart';
import 'package:sulinda_sales/src/presentation/views/materi/materi_page/materi_search_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/packing/menu_packing_view.dart';
import 'package:sulinda_sales/src/presentation/views/packing/packing_history_view.dart';
import 'package:sulinda_sales/src/presentation/views/packing/packing_list_view.dart';
import 'package:sulinda_sales/src/presentation/views/packing/packing_scan_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/activity_list_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/customer_search.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/realisasi/check_in_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/realisasi/check_out_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/realisasi/realisasi_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/visiting_plan_add.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/katalog_barang_awal_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/katalog_barang_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/so_add_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/so_detail_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/so_list_view.dart';
import 'package:sulinda_sales/src/presentation/views/scanner/checker_barang_view.dart';
import 'package:sulinda_sales/src/presentation/views/scanner/scan_barcode_view.dart';

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
      case DetailTagihanView.routeName:
        DataEventKalender dataEventKalender =
            settings.arguments as DataEventKalender;

        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;
                return DetailTagihanBloc(
                    repository: context.read(), token: tokenUser);
              },
              child: DetailTagihanView(
                dataEventKalender: dataEventKalender,
              ),
            );
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
                  userId: userLogin!.userId.toString(),
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
                  userId: userLogin!.userId.toString(),
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
                  idUser: userLogin!.userId.toString(),
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
                  idUser: userLogin!.userId.toString(),
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
//SINI BATAS BARU
      case SalesOrderListView.routeName:
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;

                return SoListBloc(
                  repository: context.read(),
                  token: tokenUser,
                );
              },
              child: SalesOrderListView(),
            );
        break;
      case SoAddView.routeName:
        EditingDataSO? requestCreateSo = settings.arguments as EditingDataSO?;
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;

                return SoCreateBloc(
                  request: requestCreateSo,
                  bearerToken: tokenUser ?? '',
                  generalRepository: context.read(),
                  soRepository: context.read(),
                  userID: userLogin!.userId.toString(),
                );
              },
              child: SoAddView(
                isEdit: requestCreateSo != null,
              ),
            );
        break;
      case KatalogBarangView.routeName:
        List<TSoD> daftarBarang = settings.arguments as List<TSoD>;

        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;

                return KatalogBarangBloc(
                  repository: context.read(),
                  token: tokenUser,
                );
              },
              child: KatalogBarangView(
                daftarBarangSO: daftarBarang,
              ),
            );
        break;
      case KatalogBarangAwalView.routeName:
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;

                return KatalogBarangBloc(
                  repository: context.read(),
                  token: tokenUser,
                );
              },
              child: KatalogBarangAwalView(),
            );
        break;
      case SoDetailView.routeName:
        Map<String, dynamic> map = settings.arguments as Map<String, dynamic>;

        // DataListSO dataHeader = map['header'];
        ResponseDetailSo dataBody = map['body'];

        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;

                return SoCreateBloc(
                  request: null,
                  bearerToken: tokenUser ?? '',
                  generalRepository: context.read(),
                  soRepository: context.read(),
                  userID: userLogin!.userId.toString(),
                );
              },
              child: SoDetailView(
                dataBody: dataBody,
                // dataHeader: dataHeader,
              ),
            );
        break;
      case SalesActivityListView.routeName:
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;
                return VisitingListBloc(
                  repository: context.read(),
                  token: tokenUser,
                );
              },
              child: SalesActivityListView(),
            );
        break;
      case FormPengajuanCustomerView.routeName:
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;

                return CustomerCreateBloc(
                  bearerToken: tokenUser ?? '',
                  generalRepository: context.read(),
                );
              },
              child: FormPengajuanCustomerView(),
            );
        break;
      case FormAddPenagihan.routeName:
        List<DataPenagihan>? dataAlamat =
            settings.arguments as List<DataPenagihan>?;

        builder = (context) => FormAddPenagihan(
              daftarPenagihanAwal: dataAlamat,
            );
        break;
      case FormAddAlamat.routeName:
        MCustDAddress? dataAlamat = settings.arguments as MCustDAddress?;

        builder = (context) => FormAddAlamat(
              mCustDAddress: dataAlamat,
            );
        break;
      case FormAddBank.routeName:
        MCustDBank? dataAlamat = settings.arguments as MCustDBank?;

        builder = (context) => FormAddBank(
              dataBank: dataAlamat,
            );
        break;
      case VisitingPlanAdd.routeName:
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;

                return VisitingPlanBloc(
                  token: tokenUser ?? '',
                  visitingRepository: context.read(),
                );
              },
              child: VisitingPlanAdd(),
            );
        break;
      case CustomerSearchView.routeName:
        List<DataCustomerVisiting>? daftarCustomer =
            settings.arguments as List<DataCustomerVisiting>?;
        builder = (context) => CustomerSearchView(
              daftarCustomer: daftarCustomer,
            );
        break;
      case CheckInView.routeName:
        Map<String, dynamic> map = settings.arguments as Map<String, dynamic>;

        DataListPlan dataHeader = map['header'];
        ResponseDetailPlan dataBody = map['body'];

        log("DATA LIST PLAN ${dataHeader}");
        log("DATA DETAIL PLAN ${dataBody}");

        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;
                return VisitingPlanBloc(
                    token: tokenUser ?? '', visitingRepository: context.read());
              },
              child: CheckInView(
                responseDetailPacking: dataBody,
                dataListPlan: dataHeader,
              ),
            );
        break;
      case CheckOutView.routeName:
        Map<String, dynamic> map = settings.arguments as Map<String, dynamic>;

        DataListPlan dataHeader = map['header'];
        ResponseDetailPlan dataBody = map['body'];

        log("DATA LIST PLAN ${dataHeader}");
        log("DATA DETAIL PLAN ${dataBody}");

        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;
                return VisitingPlanBloc(
                    token: tokenUser ?? '', visitingRepository: context.read());
              },
              child: CheckOutView(
                responseDetailPacking: dataBody,
                dataListPlan: dataHeader,
              ),
            );
        break;
      case RealisasiView.routeName:
        Map<String, dynamic> map = settings.arguments as Map<String, dynamic>;

        DataListPlan dataHeader = map['header'];
        ResponseDetailPlan dataBody = map['body'];
        RequestSaveAbsensi request = map['checkin'];

        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;
                return VisitingPlanBloc(
                    token: tokenUser ?? '', visitingRepository: context.read());
              },
              child: RealisasiView(
                responseDetailPlan: dataBody,
                dataListPlan: dataHeader,
                dataCheckin: request,
              ),
            );
        break;
      case MonthlyCalendarView.routeName:
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthBloc>();
                final user = authBloc.state.userModel;
                final userLogin = authBloc.state.loginUser;
                final tokenUser = authBloc.state.tokenUser;
                return CalendarBloc(
                  repository: context.read(),
                  token: tokenUser,
                  soRepository: context.read(),
                );
              },
              child: MonthlyCalendarView(),
            );
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
