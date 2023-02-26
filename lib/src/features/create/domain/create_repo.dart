import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:tic_tac_toe/src/features/home/domain/models/game_list.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

class CreateRepository {
  RequestHandler requestHandler;
  CreateRepository({required this.requestHandler});
  static const createGamePath = "/api/games";

  Future<Either<RequestException?, GameData>> createGame(
      {required String userPath}) async {
    return TaskEither.tryCatch(() async {
      final res = await requestHandler.post(
        createGamePath,
        {"player2": userPath},
      );
      return GameData.fromMap(res);
    }, (error, stackTrace) {
      if (error is RequestException) {
        return error;
      } else {
        log("#Unhandled Error", error: error, stackTrace: stackTrace);
      }
    }).run();
  }
}
