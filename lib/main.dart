import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/features/auth/controller/auth_controller.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/token_model.dart';
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
  const secureStorage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );
  AuthToken? token;
  if (await secureStorage.containsKey(key: RequestHandler.tokenKey)) {
    token = AuthToken.fromJson(
      (await secureStorage.read(key: RequestHandler.tokenKey))!,
    );
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => RequestHandler(
            dio: dio,
            storage: secureStorage,
            userToken: token,
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthController(
            requestHandler: context.read(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => RouteProvider(
            initialRoute:
                context.read<RequestHandler>().hasToken ? "/home" : "/",
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

