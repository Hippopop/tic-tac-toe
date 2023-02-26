import 'dart:developer' show log;

import 'package:fpdart/fpdart.dart';
import 'package:tic_tac_toe/src/features/home/domain/models/game_list.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

class HomeRepository {
  HomeRepository({
    required this.requestHandler,
  });

  static const gameEndpoint = "/api/games";

  RequestHandler requestHandler;
  updateRequestHandler(RequestHandler newRH) {
    requestHandler = newRH;
  }

  Future<Either<RequestException?, GameList>> getGameList() async {
    return TaskEither.tryCatch(() async {
      final res = await requestHandler.get(
        gameEndpoint,
      );
      log(res.toString());
      return GameList.fromMap(res);
    }, (error, stackTrace) {
      if (error is RequestException) {
        return error;
      } else {
        log("#Unhandled Error", error: error, stackTrace: stackTrace);
      }
    }).run();
  }
}
