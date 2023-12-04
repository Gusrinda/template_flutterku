import 'package:becca_supir/main.dart';
import 'package:becca_supir/src/core/model/data_materi.dart';
import 'package:becca_supir/src/presentation/blocs/auth/auth_bloc.dart';
import 'package:becca_supir/src/presentation/blocs/materi/getData/bloc/get_data_bloc.dart';
import 'package:becca_supir/src/presentation/blocs/materi/paginateData/paginate_data_bloc.dart';
import 'package:becca_supir/src/presentation/blocs/materi/searchData/search_data_bloc.dart';
import 'package:becca_supir/src/presentation/views/home/dashboard.dart';
import 'package:becca_supir/src/presentation/views/materi/materi_page/materi_list_data.dart';
import 'package:becca_supir/src/presentation/views/materi/materi_page/materi_paginate_data.dart';
import 'package:becca_supir/src/presentation/views/materi/materi_page/materi_search_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
