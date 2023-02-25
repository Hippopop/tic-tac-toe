import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/src/features/home/domain/home_repository.dart';
import 'package:tic_tac_toe/src/features/home/domain/models/game_list.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';
import 'package:tic_tac_toe/src/services/data_source/user_provider/user_controller.dart';

class HomeController extends ChangeNotifier {
  HomeController(
      {required RequestHandler requestHandler, required this.userController})
      : _repository = HomeRepository(requestHandler: requestHandler) {
    log("HomeController Created!");
    if (gamesList.isEmpty) fetchGameList();
  }

  UserController userController;

  final HomeRepository _repository;
  List<GameData> gamesList = [];

  fetchGameList() async {
    final res = await _repository.getGameList();
    GameList? list = res.match<GameList?>(
      (l) {
        log("${l?.res?.data}");
        log("${l?.res?.headers.toString()}");
        return null;
      },
      (r) {
        return r;
      },
    );
    if (list != null) {
      gamesList = list.hydraMember.reversed.toList();
      final bulkUserList = [
        ...gamesList.map((e) => e.player1 ?? "").toSet().toList(),
        ...gamesList.map((e) => e.player2 ?? "").toSet().toList()
      ];
      for (String element in bulkUserList.toSet().toList()) {
        if (element != "") {
          await userController.addUserByPath(element);
        }
      }
      notifyListeners();
    }
  }

  updateRequestHandler(RequestHandler newRh) =>
      _repository.updateRequestHandler(newRh);
}
