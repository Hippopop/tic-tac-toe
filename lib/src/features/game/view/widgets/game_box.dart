import 'dart:async';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/features/home/domain/models/game_list.dart';
import 'package:tic_tac_toe/src/services/theme/flutter_flow_theme.dart';

import '../../controller/game_controller.dart';

class GameBox extends StatefulWidget {
  const GameBox({
    super.key,
    required this.turns,
    required this.refresh,
  });
  final List<Turns> turns;
  final bool refresh;

  @override
  State<GameBox> createState() => _GameBoxState();
}

class _GameBoxState extends State<GameBox> {
  Timer? _refreshser;

  @override
  void initState() {
    super.initState();
    if (widget.refresh) {
      _refreshser = Timer.periodic(const Duration(seconds: 3), _refreshFunc);
    }
  }

  _refreshFunc(Timer timer) {
    final controller = context.read<GameController>();
    if (widget.refresh) {
      log("Calling refresh ticker!");
      controller.refreshGameData();
    }
  }

  @override
  void dispose() {
    _refreshser?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                OneThree(
                    myOffset: const Offset(0, 2),
                    turn: widget.turns
                        .where(
                            (element) => (element.x == 0) && (element.y == 2))
                        .firstOrNull
                        ?.isPlayer1),
                BaseBox(
                    myOffset: const Offset(1, 2),
                    turn: widget.turns
                        .where(
                            (element) => (element.x == 1) && (element.y == 2))
                        .firstOrNull
                        ?.isPlayer1),
                ThreeThree(
                    myOffset: const Offset(2, 2),
                    turn: widget.turns
                        .where(
                            (element) => (element.x == 2) && (element.y == 2))
                        .firstOrNull
                        ?.isPlayer1),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  BaseBox(
                    myOffset: const Offset(0, 1),
                    turn: widget.turns
                        .where(
                            (element) => (element.x == 0) && (element.y == 1))
                        .firstOrNull
                        ?.isPlayer1,
                  ),
                  BaseBox(
                      myOffset: const Offset(1, 1),
                      turn: widget.turns
                          .where(
                              (element) => (element.x == 1) && (element.y == 1))
                          .firstOrNull
                          ?.isPlayer1),
                  BaseBox(
                      myOffset: const Offset(2, 1),
                      turn: widget.turns
                          .where(
                              (element) => (element.x == 2) && (element.y == 1))
                          .firstOrNull
                          ?.isPlayer1),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ZeroZeroBox(
                      myOffset: const Offset(0, 0),
                      turn: widget.turns
                          .where(
                              (element) => (element.x == 0) && (element.y == 0))
                          .firstOrNull
                          ?.isPlayer1),
                  BaseBox(
                    turn: widget.turns
                        .where(
                            (element) => (element.x == 1) && (element.y == 0))
                        .firstOrNull
                        ?.isPlayer1,
                    myOffset: const Offset(1, 0),
                  ),
                  TwoZeroBox(
                      myOffset: const Offset(2, 0),
                      turn: widget.turns
                          .where(
                              (element) => (element.x == 2) && (element.y == 0))
                          .firstOrNull
                          ?.isPlayer1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ThreeThree extends StatelessWidget {
  const ThreeThree({
    super.key,
    required this.turn,
    required this.myOffset,
  });

  final bool? turn;
  final Offset myOffset;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => context.read<GameController>().move(myOffset, (msg) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(msg),
            ),
          );
        }),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
          child: Container(
            width: 100,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (turn == null)
                      ? ""
                      : turn!
                          ? 'X'
                          : "0",
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Poppins',
                        color: (turn == null)
                            ? Colors.white
                            : turn!
                                ? Colors.blue.shade900
                                : const Color(0xFFD9534F),
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OneThree extends StatelessWidget {
  const OneThree({
    super.key,
    required this.turn,
    required this.myOffset,
  });

  final bool? turn;
  final Offset myOffset;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => context.read<GameController>().move(myOffset, (msg) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(msg),
            ),
          );
        }),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 1, 0),
          child: Container(
            width: 100,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(16),
                topRight: Radius.circular(0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (turn == null)
                      ? ""
                      : turn!
                          ? 'X'
                          : "0",
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Poppins',
                        color: (turn == null)
                            ? Colors.white
                            : turn!
                                ? Colors.blue.shade900
                                : const Color(0xFFD9534F),
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TwoZeroBox extends StatelessWidget {
  const TwoZeroBox({
    super.key,
    required this.turn,
    required this.myOffset,
  });

  final bool? turn;
  final Offset myOffset;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => context.read<GameController>().move(myOffset, (msg) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(msg),
            ),
          );
        }),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
          child: Container(
            width: 100,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(16),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (turn == null)
                      ? ""
                      : turn!
                          ? 'X'
                          : "0",
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Poppins',
                        color: (turn == null)
                            ? Colors.white
                            : turn!
                                ? Colors.blue.shade900
                                : const Color(0xFFD9534F),
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BaseBox extends StatelessWidget {
  const BaseBox({
    super.key,
    required this.turn,
    required this.myOffset,
  });

  final bool? turn;
  final Offset myOffset;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => context.read<GameController>().move(myOffset, (msg) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(msg),
            ),
          );
        }),
        child: Container(
          width: 100,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                (turn == null)
                    ? ""
                    : turn!
                        ? 'X'
                        : "0",
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Poppins',
                      color: (turn == null)
                          ? Colors.white
                          : turn!
                              ? Colors.blue.shade900
                              : const Color(0xFFD9534F),
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ZeroZeroBox extends StatelessWidget {
  const ZeroZeroBox({
    super.key,
    required this.turn,
    required this.myOffset,
  });

  final bool? turn;
  final Offset myOffset;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => context.read<GameController>().move(myOffset, (msg) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(msg),
            ),
          );
        }),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 1, 0),
          child: Container(
            width: 100,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (turn == null)
                      ? ""
                      : turn!
                          ? 'X'
                          : "0",
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Poppins',
                        color: (turn == null)
                            ? Colors.white
                            : turn!
                                ? Colors.blue.shade900
                                : const Color(0xFFD9534F),
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
