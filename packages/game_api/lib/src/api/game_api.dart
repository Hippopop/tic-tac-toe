//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/api_games_get_collection200_response.dart';
import 'package:openapi/src/model/game_jsonld_game_create.dart';
import 'package:openapi/src/model/game_jsonld_game_read.dart';

class GameApi {

  final Dio _dio;

  final Serializers _serializers;

  const GameApi(this._dio, this._serializers);

  /// Retrieves the collection of Game resources.
  /// Retrieves the collection of Game resources.
  ///
  /// Parameters:
  /// * [page] - The collection page number
  /// * [player1] - 
  /// * [player1LeftSquareBracketRightSquareBracket] - 
  /// * [player2] - 
  /// * [player2LeftSquareBracketRightSquareBracket] - 
  /// * [result] - 
  /// * [resultLeftSquareBracketRightSquareBracket] - 
  /// * [open] - 
  /// * [openLeftSquareBracketRightSquareBracket] - 
  /// * [code] - 
  /// * [codeLeftSquareBracketRightSquareBracket] - 
  /// * [orderLeftSquareBracketCreatedAtRightSquareBracket] - 
  /// * [orderLeftSquareBracketFinishedAtRightSquareBracket] - 
  /// * [orderLeftSquareBracketResultRightSquareBracket] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ApiGamesGetCollection200Response] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<ApiGamesGetCollection200Response>> apiGamesGetCollection({ 
    int? page = 1,
    String? player1,
    BuiltList<String>? player1LeftSquareBracketRightSquareBracket,
    String? player2,
    BuiltList<String>? player2LeftSquareBracketRightSquareBracket,
    String? result,
    BuiltList<String>? resultLeftSquareBracketRightSquareBracket,
    bool? open,
    BuiltList<bool>? openLeftSquareBracketRightSquareBracket,
    String? code,
    BuiltList<String>? codeLeftSquareBracketRightSquareBracket,
    String? orderLeftSquareBracketCreatedAtRightSquareBracket,
    String? orderLeftSquareBracketFinishedAtRightSquareBracket,
    String? orderLeftSquareBracketResultRightSquareBracket,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/games';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (player1 != null) r'player1': encodeQueryParameter(_serializers, player1, const FullType(String)),
      if (player1LeftSquareBracketRightSquareBracket != null) r'player1[]': encodeCollectionQueryParameter<String>(_serializers, player1LeftSquareBracketRightSquareBracket, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
      if (player2 != null) r'player2': encodeQueryParameter(_serializers, player2, const FullType(String)),
      if (player2LeftSquareBracketRightSquareBracket != null) r'player2[]': encodeCollectionQueryParameter<String>(_serializers, player2LeftSquareBracketRightSquareBracket, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
      if (result != null) r'result': encodeQueryParameter(_serializers, result, const FullType(String)),
      if (resultLeftSquareBracketRightSquareBracket != null) r'result[]': encodeCollectionQueryParameter<String>(_serializers, resultLeftSquareBracketRightSquareBracket, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
      if (open != null) r'open': encodeQueryParameter(_serializers, open, const FullType(bool)),
      if (openLeftSquareBracketRightSquareBracket != null) r'open[]': encodeCollectionQueryParameter<bool>(_serializers, openLeftSquareBracketRightSquareBracket, const FullType(BuiltList, [FullType(bool)]), format: ListFormat.multi,),
      if (code != null) r'code': encodeQueryParameter(_serializers, code, const FullType(String)),
      if (codeLeftSquareBracketRightSquareBracket != null) r'code[]': encodeCollectionQueryParameter<String>(_serializers, codeLeftSquareBracketRightSquareBracket, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
      if (orderLeftSquareBracketCreatedAtRightSquareBracket != null) r'order[createdAt]': encodeQueryParameter(_serializers, orderLeftSquareBracketCreatedAtRightSquareBracket, const FullType(String)),
      if (orderLeftSquareBracketFinishedAtRightSquareBracket != null) r'order[finishedAt]': encodeQueryParameter(_serializers, orderLeftSquareBracketFinishedAtRightSquareBracket, const FullType(String)),
      if (orderLeftSquareBracketResultRightSquareBracket != null) r'order[result]': encodeQueryParameter(_serializers, orderLeftSquareBracketResultRightSquareBracket, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ApiGamesGetCollection200Response _responseData;

    try {
      const _responseType = FullType(ApiGamesGetCollection200Response);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as ApiGamesGetCollection200Response;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<ApiGamesGetCollection200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Retrieves a Game resource.
  /// Retrieves a Game resource.
  ///
  /// Parameters:
  /// * [id] - Game identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GameJsonldGameRead] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GameJsonldGameRead>> apiGamesIdGet({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/games/{id}'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GameJsonldGameRead _responseData;

    try {
      const _responseType = FullType(GameJsonldGameRead);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as GameJsonldGameRead;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<GameJsonldGameRead>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Creates a Game resource.
  /// Creates a Game resource.
  ///
  /// Parameters:
  /// * [gameJsonldGameCreate] - The new Game resource
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GameJsonldGameRead] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GameJsonldGameRead>> apiGamesPost({ 
    required GameJsonldGameCreate gameJsonldGameCreate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/games';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      contentType: 'application/ld+json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(GameJsonldGameCreate);
      _bodyData = _serializers.serialize(gameJsonldGameCreate, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GameJsonldGameRead _responseData;

    try {
      const _responseType = FullType(GameJsonldGameRead);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as GameJsonldGameRead;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<GameJsonldGameRead>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
