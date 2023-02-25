import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/user_model.dart';
import 'package:tic_tac_toe/src/features/create/domain/create_repo.dart';
import 'package:tic_tac_toe/src/features/home/domain/models/game_list.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

class CreateController extends ChangeNotifier {
  CreateController({required RequestHandler requestHandler})
      : _repository = CreateRepository(requestHandler: requestHandler);
  final CreateRepository _repository;
  bool isLoading = false;

  Future<GameData?> createGame(User player2) async {
    isLoading = true;
    notifyListeners();
    final res = await _repository.createGame(userPath: player2.idPath);
    return res.match<GameData?>(
      (l) {
        log("${l?.res?.data}");
        log("${l?.res?.headers.toString()}");
        isLoading = false;
        notifyListeners();
        return null;
      },
      (r) {
        log("${r.toMap()}");
        isLoading = false;
        notifyListeners();
        return r;
      },
    );
  }
}
