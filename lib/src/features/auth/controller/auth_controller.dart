import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/features/auth/domain/auth_repository.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/user_model.dart';
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

  userLogin({
    required LoginRequest request,
    required Function onSuccess,
    required Function(String msg) onError,
  }) async {
    isLoading = true;
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
      (l) {
        log("${l?.res?.data}");
        log("${l?.res?.headers.toString()}");
        return null;
      },
      (r) {
        return r;
      },
    );
    currentUser = user;
    notifyListeners();
  }
}
