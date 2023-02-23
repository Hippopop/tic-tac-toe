import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/services/route/app_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: context.read<RouteProvider>().router,
      routeInformationParser: context.read<RouteProvider>().router.routeInformationParser,
    );
  }
}
