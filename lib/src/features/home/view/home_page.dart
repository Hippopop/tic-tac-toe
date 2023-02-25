import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/features/home/controller/home_controller.dart';
import 'package:tic_tac_toe/src/features/home/view/widgets/game_widget.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';
import 'package:tic_tac_toe/src/services/theme/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProxyProvider<RequestHandler, HomeController>(
      update: (context, value, previous) =>
          HomeController(requestHandler: value, userController: context.read()),
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/276/600',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                          child: Icon(
                            Icons.multiple_stop,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        Icon(
                          Icons.filter_alt,
                          color: Colors.black,
                          size: 24,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: (context.watch<HomeController>().gamesList.isNotEmpty)
                    ? Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
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
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16, 16, 16, 16),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.home_outlined,
                                color: Colors.black,
                                size: 24,
                              ),
                              Icon(
                                Icons.add_circle,
                                color: Colors.black,
                                size: 48,
                              ),
                              Icon(
                                Icons.settings_outlined,
                                color: Colors.black,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
