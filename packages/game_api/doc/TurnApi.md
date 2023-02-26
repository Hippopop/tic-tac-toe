# openapi.api.TurnApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *<http://localhost>*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiTurnsPost**](TurnApi.md#apiturnspost) | **POST** /api/turns | Creates a Turn resource.

# **apiTurnsPost**
>
> TurnJsonldGameRead apiTurnsPost(turnJsonldTurnCreate)

Creates a Turn resource.

Creates a Turn resource.

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: JWT
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').password = 'YOUR_PASSWORD';

final api = Openapi().getTurnApi();
final TurnJsonldTurnCreate turnJsonldTurnCreate = ; // TurnJsonldTurnCreate | The new Turn resource

try {
    final response = api.apiTurnsPost(turnJsonldTurnCreate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TurnApi->apiTurnsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **turnJsonldTurnCreate** | [**TurnJsonldTurnCreate**](TurnJsonldTurnCreate.md)| The new Turn resource |

### Return type

[**TurnJsonldGameRead**](TurnJsonldGameRead.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/ld+json
- **Accept**: application/ld+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
