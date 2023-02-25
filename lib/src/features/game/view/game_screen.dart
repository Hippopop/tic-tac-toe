import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/features/auth/controller/auth_controller.dart';
import 'package:tic_tac_toe/src/features/game/controller/game_controller.dart';
import 'package:tic_tac_toe/src/features/game/view/widgets/game_box.dart';
import 'package:tic_tac_toe/src/features/home/view/widgets/bottom_bar.dart';
import 'package:tic_tac_toe/src/features/home/view/widgets/top_bar.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';
import 'package:tic_tac_toe/src/services/theme/flutter_flow_theme.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key, required this.gameId});
  final String gameId;
  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final DateFormat format = DateFormat("h:mm:s a");

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProxyProvider<RequestHandler, GameController>(
      update: (context, value, previous) =>
          previous!..updateRequestHandler(value),
      create: (context) => GameController(
          requestHandler: context.read<RequestHandler>(),
          gameId: int.tryParse(widget.gameId) ?? 0,
          me: context.read<AuthController>().currentUser!),
      builder: (context, child) => Scaffold(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Start Time:',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: Text(
                        (/* context.read<GameController>().currentGame != null &&  */ context
                                    .read<GameController>()
                                    .currentGame
                                    ?.createTime !=
                                null)
                            ? format.format(context
                                .read<GameController>()
                                .currentGame!
                                .createTime!)
                            : "",
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'End Time:',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: Text(
                        (context
                                    .read<GameController>()
                                    .currentGame
                                    ?.finishTime !=
                                null)
                            ? format.format(context
                                .read<GameController>()
                                .currentGame!
                                .finishTime!)
                            : "",
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Game :',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: Text(
                        "${context.watch<GameController>().currentGame?.id}",
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Consumer<GameController>(
                  builder: (context, value, child) {
                    log("isPlayer ${value.isPlayer}");
                    log("isTurn ${value.isTurn}");
                    return AbsorbPointer(
                    absorbing: !value.isPlayer,
                    child: GameBox(
                      turns: value.currentGame?.turns ?? [],
                      refresh: (value.isPlayer && !value.isTurn),
                    ),
                  );
                  },
                  // child: ,
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
