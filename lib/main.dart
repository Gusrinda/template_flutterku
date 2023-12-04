import 'dart:async';

import 'package:becca_supir/src/core/config/app_route.dart';
import 'package:becca_supir/src/data/repository/general_repository_impl.dart';
import 'package:becca_supir/src/data/repository/user_repository_impl.dart';
import 'package:becca_supir/src/data/source/api_service.dart';
import 'package:becca_supir/src/domain/repository/general_repository.dart';

import 'package:becca_supir/src/domain/repository/user_repository.dart';
import 'package:becca_supir/src/presentation/blocs/auth/auth_bloc.dart';
import 'package:becca_supir/src/core/settings/settings_controller.dart';
import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';

import 'src/presentation/app.dart';
import 'src/core/settings/settings_service.dart';

StreamController<int> pageSelectController = StreamController<int>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // setup hydrated bloc storage
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  final settingsController = SettingsController(SettingsService());

  await settingsController.loadSettings();

  Intl.defaultLocale = 'id_ID';
  await initializeDateFormatting(Intl.defaultLocale);

  //Membuat Api Service Dahulu
  final dio = Dio()
    ..transformer = FlutterTransformer()
    ..options.validateStatus = (int? status) {
      if (status == null) return false;
      return true;
    };

  //Debug mode diologger
  if (kDebugMode) {
    final logger = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 180,
    );
    dio.interceptors.add(logger);
  }

  final apiService = ApiService(dio);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: settingsController),
      ],
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<UserRepository>(
            create: (context) => UserRepositoryImpl(apiService),
          ),
          RepositoryProvider<GeneralRepository>(
            create: (context) => GeneralRepositoryImpl(apiService),
          ),
        ],
        child: BlocProvider(
          create: (context) => AuthBloc(),
          child: MyApp(),
        ),
      ),
    ),
  );
}
