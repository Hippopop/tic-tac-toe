import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/user_model.dart';
import 'package:tic_tac_toe/src/features/game/domain/game_repository.dart';
import 'package:tic_tac_toe/src/features/game/domain/models/error_with_violation.dart';
import 'package:tic_tac_toe/src/features/home/domain/models/game_list.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

class GameController extends ChangeNotifier {
  GameController(
      {required RequestHandler requestHandler,
      required this.gameId,
      required this.me})
      : _repository = GameRepository(requestHandler: requestHandler) {
    log("#Game controller created!");
    refreshGameData();
  }
  final GameRepository _repository;
  final User me;
  final int gameId;
  GameData? currentGame;

  bool get isPlayer {
    if (currentGame == null) {
      return false;
    }
    return me.idPath == currentGame?.player1 ||
        me.idPath == currentGame?.player2;
  }

  bool get isTurn {
    if (!isPlayer) {
      return false;
    } else {
      return me.idPath == currentGame!.currentTurnPlayer;
    }
  }

  refreshGameData() async {
    final res = await _repository.getGameData(gameId);
    final data = res.match<GameData?>(
      (l) {
        log("${l?.res?.data}");
        log("${l?.res?.headers.toString()}");
        return null;
      },
      (r) {
        return r;
      },
    );
    if (data != null) {
      currentGame = data;
      log("Game refreshed!");
      notifyListeners();
    }
  }

  move(Offset offset, Function(String msg) onError) async {
    if (currentGame == null) {
      onError("Game Loading...");
      return;
    }
    if (!isTurn) {
      onError(
          "This is not your turn in this game, let other player play turn first ...!");
      return;
    }
    final res = await _repository.insertMove(
        offset: offset, gamePath: currentGame!.idPath!);
    res.match<Turns?>(
      (error) {
        if (error != null && error.res != null) {
          log(error.res!.data.toString());
          if (error.res?.data["hydra:description"] != null) {
            final errorModel = ErrorWithViolationMode.fromMap(error.res!.data);
            onError(errorModel.hydraDescription ?? "");
          }
        }
        return null;
      },
      (turn) {
        log(turn.toMap().toString());
        currentGame?.turns?.add(turn);
        notifyListeners();
        return turn;
      },
    );
    refreshGameData();
  }

  updateRequestHandler(RequestHandler newRh) =>
      _repository.updateRequestHandler(newRh);
}
