import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/features/game/domain/game_repository.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

class GameController extends ChangeNotifier {
  GameController({required RequestHandler requestHandler})
      : _repository = GameRepository(requestHandler: requestHandler);
  final GameRepository _repository;
}
