import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/features/auth/controller/auth_controller.dart';
import 'package:tic_tac_toe/src/features/home/controller/home_controller.dart';
import 'package:tic_tac_toe/src/features/home/view/widgets/game_widget.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';
import 'package:tic_tac_toe/src/services/theme/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

import '../../global/widgets/bottom_bar.dart';
import '../../global/widgets/top_bar.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
@override
  void initState() {
    super.initState();
    context.read<AuthController>().fetchCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProxyProvider<RequestHandler, HomeController>(
      update: (context, value, previous) =>
          previous!..updateRequestHandler(value),
      create: (context) => HomeController(
          requestHandler: context.read<RequestHandler>(),
          userController: context.read()),
      builder: (context, child) => Scaffold(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              Expanded(
                child: (context.watch<HomeController>().gamesList.isNotEmpty)
                    ? Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                        child: RefreshIndicator(
                          onRefresh: () async => await context.read<HomeController>().fetchGameList(),
                          child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              childAspectRatio: 0.75,
                            ),
                            scrollDirection: Axis.vertical,
                            children: context
                                .watch<HomeController>()
                                .gamesList
                                .map(
                                  (gameData) => GameCardWidget(
                                    gameData: gameData,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
              ),
              const BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}

