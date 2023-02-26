import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/login_request_model.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/token_model.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/user_model.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

class AuthRepository {
  RequestHandler requestHandler;
  AuthRepository({required this.requestHandler});
  static const authenticateTokenPath = "/api/authentication_token";
  static const currentUserPath = "/api/users/me";
  static const updateUserPath = "/api/users";

  Future<Either<RequestException?, AuthToken>> requestLogin(
      {required LoginRequest requestData}) async {
    return TaskEither.tryCatch(() async {
      final res = await requestHandler.post(
        authenticateTokenPath,
        requestData.toMap(),
        requireToken: false,
      );
      return AuthToken.fromMap(res);
    }, (error, stackTrace) {
      if (error is RequestException) {
        return error;
      } else {
        log("#Unhandled Error", error: error, stackTrace: stackTrace);
      }
    }).run();
  }

  Future<Either<RequestException?, User>> updateUser({
    required String name,
    required String password,
    required int id,
  }) async {
    return TaskEither.tryCatch(() async {
      final res = await requestHandler.put(
        "$updateUserPath/$id",
        {"name": name, "plainPassword": password},
      );
      log(res.toString());
      return User.fromMap(res);
    }, (error, stackTrace) {
      if (error is RequestException) {
        return error;
      } else {
        log("#Unhandled Error", error: error, stackTrace: stackTrace);
      }
    }).run();
  }

  Future<Either<RequestException?, User>> getCurrentUser() async {
    return TaskEither.tryCatch(() async {
      final res = await requestHandler.get(
        currentUserPath,
      );
      log(res.toString());
      return User.fromMap(res);
    }, (error, stackTrace) {
      if (error is RequestException) {
        return error;
      } else {
        log("#Unhandled Error", error: error, stackTrace: stackTrace);
      }
    }).run();
  }
}
