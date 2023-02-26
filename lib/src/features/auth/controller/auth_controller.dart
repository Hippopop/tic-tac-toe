import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/features/auth/domain/auth_repository.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/user_model.dart';
import 'package:tic_tac_toe/src/features/game/domain/models/error_with_violation.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/token_model.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/login_request_model.dart';

class AuthController extends ChangeNotifier {
  AuthController({required this.requestHandler})
      : _repository = AuthRepository(requestHandler: requestHandler);

  final RequestHandler requestHandler;
  final AuthRepository _repository;

  bool isLoading = false;
  User? currentUser;
  List<Violations> currentViolations = [];

  userLogin({
    required LoginRequest request,
    required Function onSuccess,
    required Function(String msg) onError,
  }) async {
    isLoading = true;
    notifyListeners();
    final res = await _repository.requestLogin(requestData: request);
    AuthToken? token = res.match<AuthToken?>(
      (error) {
        if (error != null && error.res != null) {
          log(error.res!.data.toString());
          onError(error.res?.data["message"] ?? error.msg);
        }
        return null;
      },
      (token) {
        log(token.toMap().toString());
        onSuccess();
        return token;
      },
    );

    if (token != null) {
      requestHandler.updateToken(token: token);
      fetchCurrentUser();
    }
    isLoading = false;
    notifyListeners();
  }

  fetchCurrentUser() async {
    final res = await _repository.getCurrentUser();
    User? user = res.match<User?>(
      (error) {
        log("${error?.res?.data}");
        log("${error?.res?.headers.toString()}");
        return null;
      },
      (data) {
        return data;
      },
    );
    currentUser = user;
    notifyListeners();
  }

  updateCurrentUser(
      {required String name,
      required String pass,
      required Function(String msg) onUpdate}) async {
    currentViolations.clear();
    final res = await _repository.updateUser(
        name: name, password: pass, id: currentUser!.id);
    User? user = res.match<User?>(
      (error) {
        if (error?.res?.data?["@type"] == "ConstraintViolationList") {
          final violation = ErrorWithViolationMode.fromMap(error!.res!.data);
          currentViolations.addAll(violation.violations);
          log("Violation ==> $currentViolations");
          notifyListeners();
        }
        return null;
      },
      (data) {
        onUpdate("User data updated!");
        return data;
      },
    );
    if (user != null) {
      log("#User updated!");
      currentUser = user;
    }
    notifyListeners();
  }

  ///`NOTE`: This api, responds with
  ///```json
  ///{
  /// "code": 401,
  /// "message": "JWT Token not found"
  /// }
  ///```
  ///But a new user won't have a pre-existing token.
  createNewUser({
    required String email,
    required String name,
    required String pass,
    required Function(String msg) onCreate,
  }) async {
    currentViolations.clear();
    final res = await _repository.registerUser(
      email: email,
      name: name,
      password: pass,
    );
    User? user = res.match<User?>(
      (error) {
        if (error?.res?.data?["@type"] == "ConstraintViolationList") {
          final violation = ErrorWithViolationMode.fromMap(error!.res!.data);
          currentViolations.addAll(violation.violations);
          log("Violation ==> $currentViolations");
          notifyListeners();
        }
        return null;
      },
      (data) {
        onCreate("New User Created!");
        return data;
      },
    );
    if (user != null) {
      log("#User updated!");
      currentUser = user;
    }
    notifyListeners();
  }
}
