import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

/// tests for GameApi
void main() {
  final instance = Openapi().getGameApi();

  group(GameApi, () {
    // Retrieves the collection of Game resources.
    //
    // Retrieves the collection of Game resources.
    //
    //Future<ApiGamesGetCollection200Response> apiGamesGetCollection({ int page, String player1, BuiltList<String> player1LeftSquareBracketRightSquareBracket, String player2, BuiltList<String> player2LeftSquareBracketRightSquareBracket, String result, BuiltList<String> resultLeftSquareBracketRightSquareBracket, bool open, BuiltList<bool> openLeftSquareBracketRightSquareBracket, String code, BuiltList<String> codeLeftSquareBracketRightSquareBracket, String orderLeftSquareBracketCreatedAtRightSquareBracket, String orderLeftSquareBracketFinishedAtRightSquareBracket, String orderLeftSquareBracketResultRightSquareBracket }) async
    test('test apiGamesGetCollection', () async {
      // TODO
    });

    // Retrieves a Game resource.
    //
    // Retrieves a Game resource.
    //
    //Future<GameJsonldGameRead> apiGamesIdGet(String id) async
    test('test apiGamesIdGet', () async {
      // TODO
    });

    // Creates a Game resource.
    //
    // Creates a Game resource.
    //
    //Future<GameJsonldGameRead> apiGamesPost(GameJsonldGameCreate gameJsonldGameCreate) async
    test('test apiGamesPost', () async {
      // TODO
    });
  });
}
