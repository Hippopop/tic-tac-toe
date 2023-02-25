import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/src/features/home/domain/home_repository.dart';
import 'package:tic_tac_toe/src/features/home/domain/models/game_list.dart';
import 'package:tic_tac_toe/src/features/home/domain/models/user_list.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

class HomeController extends ChangeNotifier {
  HomeController({required RequestHandler requestHandler})
      : _repository = HomeRepository(requestHandler: requestHandler) {
    log("HomeController Created!");
    fetchGameList();
  }

  final HomeRepository _repository;
  GameList? gamesList;
  UserListModel? userListModel;

  fetchGameList() async {
    final res = await _repository.getGameList();
    GameList? gameList = res.match<GameList?>(
      (l) {
        log("${l?.res?.data}");
        log("${l?.res?.headers.toString()}");
        return null;
      },
      (r) {
        return r;
      },
    );
    gamesList = gameList;
    notifyListeners();
  }

  fetchUserList() async {
    final res = await _repository.getUserList();
    UserListModel? userList = res.match<UserListModel?>(
      (l) {
        log("${l?.res?.data}");
        log("${l?.res?.headers.toString()}");
        return null;
      },
      (r) {
        return r;
      },
    );
    userListModel = userList;
    notifyListeners();
  }
}
