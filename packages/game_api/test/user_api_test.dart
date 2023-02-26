import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

/// tests for UserApi
void main() {
  final instance = Openapi().getUserApi();

  group(UserApi, () {
    // Retrieves the collection of User resources.
    //
    // Retrieves the collection of User resources.
    //
    //Future<ApiUsersGetCollection200Response> apiUsersGetCollection({ int page, String name }) async
    test('test apiUsersGetCollection', () async {
      // TODO
    });

    // Retrieves a User resource.
    //
    // Retrieves a User resource.
    //
    //Future<UserJsonldUserRead> apiUsersIdGet(String id) async
    test('test apiUsersIdGet', () async {
      // TODO
    });

    // Replaces the User resource.
    //
    // Replaces the User resource.
    //
    //Future<UserJsonldUserRead> apiUsersIdPut(String id, UserJsonldUserUpdate userJsonldUserUpdate) async
    test('test apiUsersIdPut', () async {
      // TODO
    });

    // Creates a User resource.
    //
    // Creates a User resource.
    //
    //Future<UserJsonldUserRead> apiUsersPost(UserJsonldUserCreate userJsonldUserCreate) async
    test('test apiUsersPost', () async {
      // TODO
    });
  });
}
