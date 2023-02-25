import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/user_model.dart';
import 'package:tic_tac_toe/src/features/home/domain/models/user_list.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

import 'package:tic_tac_toe/src/services/data_source/user_provider/domain/user_repository.dart';

class UserController extends ChangeNotifier {
  UserController({
    required RequestHandler requestHandler,
  }) : _repository = UserRepository(requestHandler: requestHandler);

  final UserRepository _repository;
  List<User> userList = [];

  addUser(String idPath) async {
    bool hasUser = userList.any((element) => element.idPath == idPath);
    if (!hasUser) {
      User? newUser = await fetchUserByPath(idPath);
      if (newUser != null) userList.add(newUser);
    }
    notifyListeners();
  }

  User? getUserByPath(String idPath) {
    if (userList.any((element) => element.idPath == idPath)) {
      return userList.firstWhere((element) => element.idPath == idPath);
    } else {
      addUser(idPath);
      return null;
    }
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
    notifyListeners();
  }

  Future<User?> fetchUserByPath(String idPath) async {
    final res = await _repository.getUser(idPath);
    return res.match<User?>(
      (l) {
        log("${l?.res?.data}");
        log("${l?.res?.headers.toString()}");
        return null;
      },
      (r) {
        return r;
      },
    );
  }
}
