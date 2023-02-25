import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/features/game/domain/game_repository.dart';
import 'package:tic_tac_toe/src/features/home/domain/models/game_list.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

class GameController extends ChangeNotifier {
  GameController({required RequestHandler requestHandler, required this.gameId})
      : _repository = GameRepository(requestHandler: requestHandler) {
    log("#Game controller created!");
    refreshGameData();
  }
  final GameRepository _repository;
  final int gameId;
  GameData? currentGame;

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
    if(currentGame == null) {
      onError("");
      return;
    }
    final res = await _repository.insertMove(
        offset: offset, gamePath: currentGame!.idPath!);
    /* Turns? turn =  */res.match<Turns?>(
      (error) {
        if (error != null && error.res != null) {
          log(error.res!.data.toString());
          // onError(error.res?.data["message"] ?? error.msg);
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
  }

  updateRequestHandler(RequestHandler newRh) =>
      _repository.updateRequestHandler(newRh);
}
