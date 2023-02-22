# openapi.api.GameApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *<http://localhost>*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiGamesGetCollection**](GameApi.md#apigamesgetcollection) | **GET** /api/games | Retrieves the collection of Game resources.
[**apiGamesIdGet**](GameApi.md#apigamesidget) | **GET** /api/games/{id} | Retrieves a Game resource.
[**apiGamesPost**](GameApi.md#apigamespost) | **POST** /api/games | Creates a Game resource.

# **apiGamesGetCollection**
>
> ApiGamesGetCollection200Response apiGamesGetCollection(page, player1, player1LeftSquareBracketRightSquareBracket, player2, player2LeftSquareBracketRightSquareBracket, result, resultLeftSquareBracketRightSquareBracket, open, openLeftSquareBracketRightSquareBracket, code, codeLeftSquareBracketRightSquareBracket, orderLeftSquareBracketCreatedAtRightSquareBracket, orderLeftSquareBracketFinishedAtRightSquareBracket, orderLeftSquareBracketResultRightSquareBracket)

Retrieves the collection of Game resources.

Retrieves the collection of Game resources.

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: JWT
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').password = 'YOUR_PASSWORD';

final api = Openapi().getGameApi();
final int page = 56; // int | The collection page number
final String player1 = player1_example; // String | 
final BuiltList<String> player1LeftSquareBracketRightSquareBracket = ; // BuiltList<String> | 
final String player2 = player2_example; // String | 
final BuiltList<String> player2LeftSquareBracketRightSquareBracket = ; // BuiltList<String> | 
final String result = result_example; // String | 
final BuiltList<String> resultLeftSquareBracketRightSquareBracket = ; // BuiltList<String> | 
final bool open = true; // bool | 
final BuiltList<bool> openLeftSquareBracketRightSquareBracket = ; // BuiltList<bool> | 
final String code = code_example; // String | 
final BuiltList<String> codeLeftSquareBracketRightSquareBracket = ; // BuiltList<String> | 
final String orderLeftSquareBracketCreatedAtRightSquareBracket = orderLeftSquareBracketCreatedAtRightSquareBracket_example; // String | 
final String orderLeftSquareBracketFinishedAtRightSquareBracket = orderLeftSquareBracketFinishedAtRightSquareBracket_example; // String | 
final String orderLeftSquareBracketResultRightSquareBracket = orderLeftSquareBracketResultRightSquareBracket_example; // String | 

try {
    final response = api.apiGamesGetCollection(page, player1, player1LeftSquareBracketRightSquareBracket, player2, player2LeftSquareBracketRightSquareBracket, result, resultLeftSquareBracketRightSquareBracket, open, openLeftSquareBracketRightSquareBracket, code, codeLeftSquareBracketRightSquareBracket, orderLeftSquareBracketCreatedAtRightSquareBracket, orderLeftSquareBracketFinishedAtRightSquareBracket, orderLeftSquareBracketResultRightSquareBracket);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GameApi->apiGamesGetCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The collection page number | [optional] [default to 1]
 **player1** | **String**|  | [optional]
 **player1LeftSquareBracketRightSquareBracket** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional]
 **player2** | **String**|  | [optional]
 **player2LeftSquareBracketRightSquareBracket** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional]
 **result** | **String**|  | [optional]
 **resultLeftSquareBracketRightSquareBracket** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional]
 **open** | **bool**|  | [optional]
 **openLeftSquareBracketRightSquareBracket** | [**BuiltList&lt;bool&gt;**](bool.md)|  | [optional]
 **code** | **String**|  | [optional]
 **codeLeftSquareBracketRightSquareBracket** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional]
 **orderLeftSquareBracketCreatedAtRightSquareBracket** | **String**|  | [optional]
 **orderLeftSquareBracketFinishedAtRightSquareBracket** | **String**|  | [optional]
 **orderLeftSquareBracketResultRightSquareBracket** | **String**|  | [optional]

### Return type

[**ApiGamesGetCollection200Response**](ApiGamesGetCollection200Response.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/ld+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiGamesIdGet**
>
> GameJsonldGameRead apiGamesIdGet(id)

Retrieves a Game resource.

Retrieves a Game resource.

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: JWT
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').password = 'YOUR_PASSWORD';

final api = Openapi().getGameApi();
final String id = id_example; // String | Game identifier

try {
    final response = api.apiGamesIdGet(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GameApi->apiGamesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Game identifier |

### Return type

[**GameJsonldGameRead**](GameJsonldGameRead.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/ld+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiGamesPost**
>
> GameJsonldGameRead apiGamesPost(gameJsonldGameCreate)

Creates a Game resource.

Creates a Game resource.

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: JWT
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').password = 'YOUR_PASSWORD';

final api = Openapi().getGameApi();
final GameJsonldGameCreate gameJsonldGameCreate = ; // GameJsonldGameCreate | The new Game resource

try {
    final response = api.apiGamesPost(gameJsonldGameCreate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GameApi->apiGamesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gameJsonldGameCreate** | [**GameJsonldGameCreate**](GameJsonldGameCreate.md)| The new Game resource |

### Return type

[**GameJsonldGameRead**](GameJsonldGameRead.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/ld+json
- **Accept**: application/ld+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
