//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/api_games_get_collection200_response.dart';
import 'package:openapi/src/model/api_games_get_collection200_response_hydra_search.dart';
import 'package:openapi/src/model/api_games_get_collection200_response_hydra_search_hydra_mapping_inner.dart';
import 'package:openapi/src/model/api_games_get_collection200_response_hydra_view.dart';
import 'package:openapi/src/model/api_users_get_collection200_response.dart';
import 'package:openapi/src/model/credentials.dart';
import 'package:openapi/src/model/game_jsonld_game_create.dart';
import 'package:openapi/src/model/game_jsonld_game_read.dart';
import 'package:openapi/src/model/game_jsonld_game_read_context.dart';
import 'package:openapi/src/model/game_jsonld_game_read_context_one_of.dart';
import 'package:openapi/src/model/refresh_token.dart';
import 'package:openapi/src/model/token.dart';
import 'package:openapi/src/model/turn_jsonld_game_read.dart';
import 'package:openapi/src/model/turn_jsonld_turn_create.dart';
import 'package:openapi/src/model/user_jsonld_user_create.dart';
import 'package:openapi/src/model/user_jsonld_user_read.dart';
import 'package:openapi/src/model/user_jsonld_user_update.dart';

part 'serializers.g.dart';

@SerializersFor([
  ApiGamesGetCollection200Response,
  ApiGamesGetCollection200ResponseHydraSearch,
  ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner,
  ApiGamesGetCollection200ResponseHydraView,
  ApiUsersGetCollection200Response,
  Credentials,
  GameJsonldGameCreate,
  GameJsonldGameRead,
  GameJsonldGameReadContext,
  GameJsonldGameReadContextOneOf,
  RefreshToken,
  Token,
  TurnJsonldGameRead,
  TurnJsonldTurnCreate,
  UserJsonldUserCreate,
  UserJsonldUserRead,
  UserJsonldUserUpdate,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(bool)]),
        () => ListBuilder<bool>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
