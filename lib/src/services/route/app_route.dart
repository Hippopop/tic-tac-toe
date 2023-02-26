import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tic_tac_toe/src/features/auth/view/sign_in.dart';
import 'package:tic_tac_toe/src/features/auth/view/sign_up.dart';
import 'package:tic_tac_toe/src/features/create/view/create_screen.dart';
import 'package:tic_tac_toe/src/features/edit/view/edit_screen.dart';
import 'package:tic_tac_toe/src/features/game/view/game_screen.dart';
import 'package:tic_tac_toe/src/features/home/view/home_page.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

class RouteProvider extends ChangeNotifier {
  RouteProvider({required RequestHandler requestHandler})
      : router = GoRouter(
          initialLocation: "/",
          routes: [
            GoRoute(
              path: "/",
              builder: (context, state) => const SigninScreen(),
            ),
            GoRoute(
              path: "/home",
              builder: (context, state) => Builder(builder: (context) {
                return const HomepageScreen();
              }),
            ),
            GoRoute(
              path: "/game/:id",
              builder: (context, state) {
                return GameScreen(gameId: state.params['id']!);
              },
            ),
            GoRoute(
              path: "/create",
              builder: (context, state) {
                return const CreateScreen();
              },
            ),
            GoRoute(
              path: "/edit",
              builder: (context, state) {
                return const EditScreen();
              },
            ),
            GoRoute(
              path: "/reg",
              builder: (context, state) {
                return const SignUpScreen();
              },
            ),
          ],
          redirect: (context, state) async {
            final bool loginPage =
                (state.location == "/" || state.location == "/reg");
            if (requestHandler.hasToken) {
              return loginPage ? "/home" : state.location;
            } else {
              return !loginPage ? "/" : state.location;
            }
          },
        );

  final GoRouter router;
}
