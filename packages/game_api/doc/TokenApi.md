# openapi.api.TokenApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postCredentialsItem**](TokenApi.md#postcredentialsitem) | **POST** /api/authentication_token | Get JWT token to login, refresh_token to refresh expired token.
[**postRefreshTokenItem**](TokenApi.md#postrefreshtokenitem) | **POST** /api/token/refresh | Get new refreshed JWT token from refresh_token.


# **postCredentialsItem**
> Token postCredentialsItem(credentials)

Get JWT token to login, refresh_token to refresh expired token.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getTokenApi();
final Credentials credentials = ; // Credentials | Generate new JWT Token

try {
    final response = api.postCredentialsItem(credentials);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TokenApi->postCredentialsItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**Credentials**](Credentials.md)| Generate new JWT Token | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postRefreshTokenItem**
> Token postRefreshTokenItem(refreshToken)

Get new refreshed JWT token from refresh_token.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getTokenApi();
final RefreshToken refreshToken = ; // RefreshToken | Generate refreshed JWT Token

try {
    final response = api.postRefreshTokenItem(refreshToken);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TokenApi->postRefreshTokenItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshToken** | [**RefreshToken**](RefreshToken.md)| Generate refreshed JWT Token | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

