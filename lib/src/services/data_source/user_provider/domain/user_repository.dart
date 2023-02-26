import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/user_model.dart';
import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

import '../../../../features/home/domain/models/user_list.dart';

class UserRepository {
  UserRepository({
    required this.requestHandler,
  });

  final RequestHandler requestHandler;
  static const usersEndpoint = "/api/users";

  Future<Either<RequestException?, User>> getUser(String userPath) async {
    return TaskEither.tryCatch(() async {
      final res = await requestHandler.get(
        userPath,
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

  Future<Either<RequestException?, UserListModel>> getUserList(
      {String? query}) async {
    String queryName = "";
    bool isNullOrEmpty = (query == null || query.isEmpty);
    if (!isNullOrEmpty) queryName = "?name=$query";

    return TaskEither.tryCatch(() async {
      final res = await requestHandler.get(
        "$usersEndpoint$queryName",
      );
      log(res.toString());
      return UserListModel.fromMap(res);
    }, (error, stackTrace) {
      if (error is RequestException) {
        return error;
      } else {
        log("#Unhandled Error", error: error, stackTrace: stackTrace);
      }
    }).run();
  }
}
