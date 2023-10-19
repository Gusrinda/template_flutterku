import 'package:becca_supir/main.dart';
import 'package:becca_supir/src/presentation/views/home/dashboard.dart';

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
                  create: (context) => LoginBloc(),
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