import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tic_tac_toe/src/features/auth/view/sign_in.dart';
import 'package:tic_tac_toe/src/features/home/view/home_page.dart';

class RouteProvider extends ChangeNotifier {
  RouteProvider({required this.initialRoute})
      : router = GoRouter(
          initialLocation: initialRoute,
          routes: [
            GoRoute(
              path: "/",
              builder: (context, state) => const SignInWidget(),
            ),
            GoRoute(
              path: "/home",
              builder: (context, state) => const HomePageWidget(),
            ),
          ],
        );

  String initialRoute;
  final GoRouter router;
}
