import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tic_tac_toe/src/features/home/domain/models/game_list.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

class GameRepository {
  GameRepository({required this.requestHandler});

  RequestHandler requestHandler;
  static const gamePath = "/api/games";
  static const turnPath = "/api/turns";
  updateRequestHandler(RequestHandler newRH) {
    requestHandler = newRH;
  }

  Future<Either<RequestException?, GameData>> getGameData(int gameId) async {
    return TaskEither.tryCatch(() async {
      final res = await requestHandler.get(
        "$gamePath/$gameId",
      );
      log(res.toString());
      return GameData.fromMap(res);
    }, (error, stackTrace) {
      if (error is RequestException) {
        return error;
      } else {
        log("#Unhandled Error", error: error, stackTrace: stackTrace);
      }
    }).run();
  }

  Future<Either<RequestException?, Turns>> insertMove(
      {required Offset offset, required String gamePath}) async {
    return TaskEither.tryCatch(() async {
      final res = await requestHandler.post(
        turnPath,
        {"x": offset.dx.toInt(), "y": offset.dy.toInt(), "game": gamePath},
      );
      return Turns.fromMap(res);
    }, (error, stackTrace) {
      if (error is RequestException) {
        return error;
      } else {
        log("#Unhandled Error", error: error, stackTrace: stackTrace);
      }
    }).run();
  }
}
