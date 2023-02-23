import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tic_tac_toe/src/my_app.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';
import 'package:tic_tac_toe/src/services/route/app_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dio = Dio(
    BaseOptions(
      contentType: "application/ld+json",
    ),
  );
  final prefs = await SharedPreferences.getInstance();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => RequestHandler(dio: dio, prefs: prefs),
        ),
        ChangeNotifierProvider(
          create: (_) => RouteProvider(initialRoute: "/"),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class InterceptDio extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log(options.baseUrl + options.path);
    log(options.data.toString());
    log(options.method);
    log(options.headers.toString());
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.type == DioErrorType.response && err.response?.statusCode == 401) {
      log("401 ERROR!");
      handler.resolve(err.response!);
    }
  }
}
