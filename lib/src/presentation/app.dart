import 'package:soa_jpt/src/core/config/theme_colors.dart';
import 'package:soa_jpt/src/core/settings/settings_controller.dart';
import 'package:soa_jpt/src/presentation/views/auth/login_page.dart';
import 'package:soa_jpt/src/presentation/views/home/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/config/app_route.dart';
import '../core/config/constant.dart';
import 'blocs/auth/auth_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        builder: (BuildContext context, Widget? child) {
          final app = MaterialApp(
            restorationScopeId: 'becca-sales-apps',
            debugShowCheckedModeBanner: false,
            title: 'Becca Sales',
            theme: ThemeData(
              useMaterial3: false,
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: Colors.white,
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
              appBarTheme: AppBarTheme(
                elevation: 0,
                color: Colors.white,
                iconTheme: IconThemeData(color: Colors.black),
                titleTextStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16.sp),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: ThemeColors.backgroundTheme,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  maximumSize: const Size(double.infinity, 48),
                  minimumSize: const Size(double.infinity, 48),
                ),
              ),
              outlinedButtonTheme: OutlinedButtonThemeData(
                style: OutlinedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  maximumSize: const Size(double.infinity, 48),
                  minimumSize: const Size(double.infinity, 48),
                  side: BorderSide(
                    color: ThemeColors.backgroundTheme,
                    width: 2,
                  ),
                ),
              ),
            ),
            navigatorKey: navigatorKey,
            // initialRoute: Navigator.defaultRouteName,
            onGenerateRoute: AppRoute.onGenerateRoute,
            builder: EasyLoading.init(builder: _builder),
          );

          final settingsController = context.read<SettingsController>();

          return AnimatedBuilder(
            animation: settingsController,
            builder: (BuildContext context, Widget? child) {
              return MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) {
                      final bloc = AuthBloc();

                      print("state bloc status : ${bloc.state.status}");

                      // delayed to show splash + waiting widget to build
                      Future.delayed(const Duration(milliseconds: 2000), () {
                        _listeningToAuthenticationStatus(
                            bloc, bloc.state.status);
                      });
                      return bloc;
                    },
                  ),
                ],
                child: app,
              );
            },
          );
        });
  }

  Widget _builder(BuildContext context, Widget? child) {
    return BlocListener<AuthBloc, AuthenticationState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          debugPrint('APP : ${state.toString()}');
          _listeningToAuthenticationStatus(context, state.status);
        },
        child: child);
  }

  _listeningToAuthenticationStatus(
      dynamic context, AuthenticationStatus status) async {
    try {
      AuthBloc? bloc;

      if (context is BuildContext) {
        bloc = context.read<AuthBloc>();
      } else if (context is AuthBloc) {
        bloc = context;
      }

      switch (status) {
        case AuthenticationStatus.unknown:
        case AuthenticationStatus.unauthenticated:
          _navigator.pushNamedAndRemoveUntil(
            LoginPage.routeName,
            (route) => false,
          );
          break;
        case AuthenticationStatus.authenticated:
          bloc?.add(const AuthenticationStatusChanged(AuthenticationStatus.me));

          _navigator.pushNamedAndRemoveUntil(
            DashboardPage.routeName,
            (route) => false,
          );
          break;
        case AuthenticationStatus.verification:
          bloc?.add(const AuthenticationStatusChanged(AuthenticationStatus.me));

          _navigator.pushNamedAndRemoveUntil(
            DashboardPage.routeName,
            (route) => false,
          );
          break;
        case AuthenticationStatus.me:
          break;
      }
    } catch (e) {
      print("ERROR INI : " + e.toString());
    }
  }
}
