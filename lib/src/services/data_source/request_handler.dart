import 'dart:developer' show log;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RequestHandler extends ChangeNotifier {
  RequestHandler({
    required Dio dio,
    required SharedPreferences prefs,
  })  : _dio = dio,
        _sharedPrefs = prefs;

  final mainUrl = "https://tictactoe.stage.mcmhq.io/api";
  final Dio _dio;
  Dio get dio => _dio;
  final SharedPreferences _sharedPrefs;
  SharedPreferences get shredPrefs => _sharedPrefs;

  updateHeader({required String token}) async {
    _sharedPrefs.setString('user_token', token);
    log("#UpdatedHeader: \$TOKEN => $token");
    dio.options.headers['Authorization'] = 'Bearer $token';
    dio.options.headers['Connection'] = 'keep-alive';
  }

  Future post(
    String url,
    Map<String, dynamic> params, {
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await dio.post(
        baseUrl ?? mainUrl + url,
        data: params,
        queryParameters: queryParams,
        options: options,
      );
      return response.data;
    } on DioError catch (error, strackTrace) {
      return RequestException(
        method: "/POST",
        res: error.response,
        url: baseUrl ?? mainUrl + url,
        data: params,
        error: error,
        msg: errorMsg,
        trace: strackTrace,
      );
    } catch (error, stracktrace) {
      log("#Request Handler!", error: error, stackTrace: stracktrace);
      rethrow;
    }
  }

  Future get(
    String url, {
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await dio.get(
        baseUrl ?? mainUrl + url,
        options: options,
        queryParameters: queryParams,
      );
      return response.data;
    } on DioError catch (error, strackTrace) {
      return RequestException(
        method: "/GET",
        res: error.response,
        url: baseUrl ?? mainUrl + url,
        error: error,
        msg: errorMsg,
        trace: strackTrace,
      );
    } catch (error, stracktrace) {
      log("#Request Handler!", error: error, stackTrace: stracktrace);
      rethrow;
    }
  }

  Future put(
    String url,
    Map<String, dynamic> params, {
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    Response response;
    try {
      response = await dio.put(
        baseUrl ?? mainUrl + url,
        data: params,
        queryParameters: queryParams,
        options: options,
      );
      return response.data;
    } on DioError catch (error, strackTrace) {
      return RequestException(
        method: "/PUT",
        res: error.response,
        url: baseUrl ?? mainUrl + url,
        data: params,
        error: error,
        msg: errorMsg,
        trace: strackTrace,
      );
    } catch (error, stracktrace) {
      log("#Request Handler!", error: error, stackTrace: stracktrace);
      rethrow;
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
  String? statusCode;

  RequestException({
    this.msg,
    this.data,
    this.res,
    this.statusCode,
    required this.url,
    required this.method,
    required this.error,
    required this.trace,
  }) {
    log(
      "method: \"$method\"\nerrorMsg: \"$msg\"\nurl: \"$url\"\ndata: ${data.toString()}\n",
      name: "#RequestException",
      time: DateTime.now(),
      error: error,
      stackTrace: trace,
    );
  }
}
