import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TokenApi
void main() {
  final instance = Openapi().getTokenApi();

  group(TokenApi, () {
    // Get JWT token to login, refresh_token to refresh expired token.
    //
    //Future<Token> postCredentialsItem({ Credentials credentials }) async
    test('test postCredentialsItem', () async {
      // TODO
    });

    // Get new refreshed JWT token from refresh_token.
    //
    //Future<Token> postRefreshTokenItem({ RefreshToken refreshToken }) async
    test('test postRefreshTokenItem', () async {
      // TODO
    });

  });
}
