import 'dart:async';

import 'package:get_storage/get_storage.dart';
import 'package:sulinda_sales/src/data/repository/general_repository_impl.dart';
import 'package:sulinda_sales/src/data/repository/packing_repository_impl.dart';
import 'package:sulinda_sales/src/data/repository/scan_repository_impl.dart';
import 'package:sulinda_sales/src/data/repository/so_repository_impl.dart';
import 'package:sulinda_sales/src/data/repository/user_repository_impl.dart';
import 'package:sulinda_sales/src/data/repository/visiting_repository_impl.dart';
import 'package:sulinda_sales/src/data/source/api_service.dart';
import 'package:sulinda_sales/src/domain/repository/general_repository.dart';
import 'package:sulinda_sales/src/domain/repository/packing_repository.dart';
import 'package:sulinda_sales/src/domain/repository/scan_repository.dart';
import 'package:sulinda_sales/src/domain/repository/so_repository.dart';

import 'package:sulinda_sales/src/domain/repository/user_repository.dart';
import 'package:sulinda_sales/src/domain/repository/visiting_repository.dart';
import 'package:sulinda_sales/src/presentation/blocs/auth/auth_bloc.dart';
import 'package:sulinda_sales/src/core/settings/settings_controller.dart';
import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';

import 'src/presentation/app.dart';
import 'src/core/settings/settings_service.dart';

StreamController<int> pageSelectController = StreamController<int>.broadcast();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // setup hydrated bloc storage
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  //Setup get Storage
  await GetStorage.init();

  final settingsController = SettingsController(SettingsService());

  await settingsController.loadSettings();

  Intl.defaultLocale = 'id_ID';
  await initializeDateFormatting(Intl.defaultLocale);

  // private static String url = "http://192.168.0.100/jptgrosir_v2/api.asmx/"
//    private static String url = "http://118.99.67.130:83/jptgrosir_v2/api.asmx/"; //ServerQL

  GetStorage box = GetStorage();

  String? baseUrl = box.read("baseurl");

  //Membuat Api Service Dahulu
  final dio = Dio()
    ..options.baseUrl = baseUrl ?? 'http://118.99.67.131/SJS_API'
    // ..options.baseUrl = 'http://118.99.67.130:83/jptgrosir_v2/api.asmx'
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
          RepositoryProvider<SoRepository>(
            create: (context) => SoRepositoryImpl(apiService),
          ),
          RepositoryProvider<GeneralRepository>(
            create: (context) => GeneralRepositoryImpl(apiService),
          ),
          RepositoryProvider<ScanRepository>(
            create: (context) => ScanRepositoryImpl(apiService),
          ),
          RepositoryProvider<PackingRepository>(
            create: (context) => PackingRepositoryImpl(apiService),
          ),
          RepositoryProvider<VisitingRepository>(
            create: (context) => VisitingRepositoryImpl(apiService),
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
