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

  addUserByPath(String idPath) async {
    bool hasUser = userList.any((element) => element.idPath == idPath);
    if (!hasUser) {
      User? newUser = await fetchUserByPath(idPath);
      if (newUser != null) userList.add(newUser);
    }
    notifyListeners();
  }

  addUser(User user) {
    bool hasUser = userList.any((element) => element.id == user.id);
    if (hasUser) {
      if (user != userList.firstWhere((element) => element.id == user.id)) {
        int index = userList
            .indexOf(userList.firstWhere((element) => element.id == user.id));
        userList[index] = user;
        notifyListeners();
      }
    } else {
      userList.add(user);
      notifyListeners();
    }
  }

  User? getUserByPath(String idPath) {
    if (userList.any((element) => element.idPath == idPath)) {
      return userList.firstWhere((element) => element.idPath == idPath);
    } else {
      addUserByPath(idPath);
      return null;
    }
  }

  fetchUserList(String? query) async {
    log("Q: $query");
    final res = await _repository.getUserList(query: query);
    UserListModel? newUserList = res.match<UserListModel?>(
      (l) {
        log("${l?.res?.data}");
        log("${l?.res?.headers.toString()}");
        return null;
      },
      (r) {
        return r;
      },
    );
    if (newUserList != null && newUserList.hydraMember.isNotEmpty) {
      log("Member ${newUserList.hydraMember}");
      for (User a in newUserList.hydraMember) {
        addUser(a);
      }
    }
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
