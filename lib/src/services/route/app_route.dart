import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tic_tac_toe/src/features/auth/view/sign_in.dart';
import 'package:tic_tac_toe/src/features/game/view/game_screen.dart';
import 'package:tic_tac_toe/src/features/home/view/home_page.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

class RouteProvider extends ChangeNotifier {
  RouteProvider({required RequestHandler requestHandler})
      : /* _requestHandler = requestHandler, */
        router = GoRouter(
          initialLocation: "/",
          routes: [
            GoRoute(
              path: "/",
              builder: (context, state) => const SignInWidget(),
            ),
            GoRoute(
                path: "/home",
                builder: (context, state) => const HomepageScreen(),
                routes: [
                  GoRoute(
                    path: "game",
                    builder: (context, state) => const GameScreen(),
                  ),
                ]),
          ],
          redirect: (context, state) async {
            if (requestHandler.hasToken) {
              return (state.subloc == "/") ? "/home" : state.location;
            } else {
              return "/";
            }
          },
        );

  // RequestHandler _requestHandler;
  final GoRouter router;
}
