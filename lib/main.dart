import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:tic_tac_toe/src/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final api = Openapi(
    basePathOverride: "https://tictactoe.stage.mcmhq.io",
    interceptors: [InterceptDio()],
  );
  Credentials credentials = Credentials().rebuild((cred) => cred
    ..email = "gamer15@tictactoe.dev"
    ..password = "aaaaaa");
  final res =
      await api.getTokenApi().postCredentialsItem(credentials: credentials);
  log(res.data.toString());

  try {
    api.dio.options.headers
        .addAll({"Authorization": "Bearer ${res.data?.token}"});
    final game = await api.getGameApi().apiGamesGetCollection();
    log(game.data.toString());
  } catch (error) {
    log(error.runtimeType.toString());
    log(error.toString());
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
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
