import 'dart:developer' show log;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:tic_tac_toe/src/features/auth/domain/auth_repository.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/token_model.dart';

class RequestHandler extends ChangeNotifier {
  RequestHandler({
    required Dio dio,
    required FlutterSecureStorage storage,
    this.userToken,
    this.useLog = true,
  })  : _dio = dio,
        _secureStorage = storage {
    if (userToken != null) updateToken(token: userToken!);
  }

  final mainUrl = "https://tictactoe.stage.mcmhq.io";
  final Dio _dio;
  Dio get dio => _dio;
  final bool useLog;
  final FlutterSecureStorage _secureStorage;
  FlutterSecureStorage get secureStorage => _secureStorage;
  static const tokenKey = "#AuthToken";
  static const refreshTokenPath = "/api/token/refresh";

  AuthToken? userToken;

  bool get hasToken => userToken != null;

  updateToken({required AuthToken token}) async {
    log("#Updated: \$TOKEN => $token");
    userToken = token;
    _secureStorage.write(key: tokenKey, value: token.toJson());
    _dio.interceptors.clear();
    _dio.interceptors.add(InterceptDio(handleError: handleError));
    notifyListeners();
  }

  Future<bool> refreshToken() async {
    log("#Refreshing TOKEN");
    try {
      _dio.interceptors.clear();
      final res = await post(
        refreshTokenPath,
        {"refresh_token": userToken!.refreshToken},
        requireToken: false,
      );
      final AuthToken newToken = AuthToken.fromMap(res);
      updateToken(token: newToken);
      return !JwtDecoder.isExpired(newToken.token);
    } catch (e, s) {
      log("##ERROR## Refreshing TOKEN", stackTrace: s);
      userToken = null;
      _secureStorage.delete(key: tokenKey);
      notifyListeners();
      return false;
    }
  }

  Future<bool> confirmSecureToken(bool tokenNeeded) async {
    bool isSuccessful = true;
    if (((!hasToken || JwtDecoder.isExpired(userToken!.token))) &&
        tokenNeeded) {
      isSuccessful = await refreshToken();
    }
    if (tokenNeeded) {
      _dio.options.headers['Authorization'] = 'Bearer ${userToken!.token}';
    } else {
      _dio.options.headers.remove("Authorization");
    }
    return isSuccessful;
  }

  handleError() async {
    log("##ERROR## Refreshing TOKEN");
    userToken = null;
    _secureStorage.delete(key: tokenKey);
    notifyListeners();
    return false;
  }

  Future post(
    String url,
    Map<String, dynamic> data, {
    bool requireToken = true,
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      bool proceed = await confirmSecureToken(requireToken);
      if (!proceed) return Exception();
      final response = await dio.post(
        baseUrl ?? mainUrl + url,
        data: data,
        queryParameters: queryParams,
        options: options,
      );
      return response.data;
    } on DioError catch (error, strackTrace) {
      throw RequestException(
        method: "/POST",
        res: error.response,
        url: baseUrl ?? mainUrl + url,
        data: data,
        error: error,
        msg: errorMsg,
        useLog: useLog,
        trace: strackTrace,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stracktrace) {
      throw RequestException(
        method: "/POST",
        url: baseUrl ?? mainUrl + url,
        data: data,
        error: error,
        msg: errorMsg,
        useLog: useLog,
        trace: stracktrace,
      );
    }
  }

  Future get(
    String url, {
    bool requireToken = true,
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      bool proceed = await confirmSecureToken(requireToken);
      if (!proceed) return Exception();
      final response = await dio.get(
        baseUrl ?? mainUrl + url,
        options: options,
        queryParameters: queryParams,
      );
      return response.data;
    } on DioError catch (error, strackTrace) {
      throw RequestException(
        method: "/GET",
        res: error.response,
        url: baseUrl ?? mainUrl + url,
        error: error,
        msg: errorMsg,
        useLog: useLog,
        trace: strackTrace,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stracktrace) {
      throw RequestException(
        method: "/POST",
        url: baseUrl ?? mainUrl + url,
        error: error,
        msg: errorMsg,
        trace: stracktrace,
        useLog: useLog,
      );
    }
  }

  Future put(
    String url,
    Map<String, dynamic> data, {
    bool requireToken = true,
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    Response response;
    try {
      bool proceed = await confirmSecureToken(requireToken);
      if (!proceed) return Exception();
      response = await dio.put(
        baseUrl ?? mainUrl + url,
        data: data,
        queryParameters: queryParams,
        options: options,
      );
      return response.data;
    } on DioError catch (error, strackTrace) {
      throw RequestException(
        method: "/PUT",
        res: error.response,
        url: baseUrl ?? mainUrl + url,
        data: data,
        error: error,
        useLog: useLog,
        msg: errorMsg,
        trace: strackTrace,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stracktrace) {
      throw RequestException(
        method: "/POST",
        url: baseUrl ?? mainUrl + url,
        data: data,
        error: error,
        msg: errorMsg,
        useLog: useLog,
        trace: stracktrace,
      );
    }
  }
}

class RequestException implements Exception {
  String url;
  String? msg;
  Map<String, dynamic>? data;
  Object error;
  String method;
  StackTrace trace;
  Response? res;
  int? statusCode;

  RequestException({
    this.msg,
    this.data,
    this.res,
    bool useLog = false,
    this.statusCode,
    required this.url,
    required this.method,
    required this.error,
    required this.trace,
  }) {
    if (useLog) {
      log(
        "method: \"$method\"\nerrorMsg: \"$msg\"\nurl: \"$url\"\ndata: ${data.toString()}\nresponse: ${res?.data.toString()}",
        name: "#RequestException",
        time: DateTime.now(),
        error: error,
        stackTrace: trace,
      );
    }
  }
}

class InterceptDio extends Interceptor {
  InterceptDio({required this.handleError});
  final Function handleError;
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    log(err.requestOptions.path);
    if (err.type == DioErrorType.response &&
        err.response?.statusCode == 401 &&
        err.requestOptions.headers.containsKey("Authorization")) {
      await handleError();
    } else {
      super.onError(err, handler);
    }
  }
}
