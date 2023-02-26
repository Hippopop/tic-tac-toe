import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/features/auth/controller/auth_controller.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';
import 'package:tic_tac_toe/src/services/route/app_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthController>.value(
      value: AuthController(requestHandler: context.read<RequestHandler>()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: context.watch<RouteProvider>().router.routerDelegate,
        routeInformationParser:
            context.watch<RouteProvider>().router.routeInformationParser,
        routeInformationProvider:
            context.watch<RouteProvider>().router.routeInformationProvider,
      ),
    );
  }
}
