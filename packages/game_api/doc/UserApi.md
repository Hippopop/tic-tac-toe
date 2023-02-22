# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiUsersGetCollection**](UserApi.md#apiusersgetcollection) | **GET** /api/users | Retrieves the collection of User resources.
[**apiUsersIdGet**](UserApi.md#apiusersidget) | **GET** /api/users/{id} | Retrieves a User resource.
[**apiUsersIdPut**](UserApi.md#apiusersidput) | **PUT** /api/users/{id} | Replaces the User resource.
[**apiUsersPost**](UserApi.md#apiuserspost) | **POST** /api/users | Creates a User resource.


# **apiUsersGetCollection**
> ApiUsersGetCollection200Response apiUsersGetCollection(page, name)

Retrieves the collection of User resources.

Retrieves the collection of User resources.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: JWT
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final int page = 56; // int | The collection page number
final String name = name_example; // String | 

try {
    final response = api.apiUsersGetCollection(page, name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->apiUsersGetCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The collection page number | [optional] [default to 1]
 **name** | **String**|  | [optional] 

### Return type

[**ApiUsersGetCollection200Response**](ApiUsersGetCollection200Response.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/ld+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersIdGet**
> UserJsonldUserRead apiUsersIdGet(id)

Retrieves a User resource.

Retrieves a User resource.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: JWT
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final String id = id_example; // String | User identifier

try {
    final response = api.apiUsersIdGet(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->apiUsersIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User identifier | 

### Return type

[**UserJsonldUserRead**](UserJsonldUserRead.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/ld+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersIdPut**
> UserJsonldUserRead apiUsersIdPut(id, userJsonldUserUpdate)

Replaces the User resource.

Replaces the User resource.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: JWT
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final String id = id_example; // String | User identifier
final UserJsonldUserUpdate userJsonldUserUpdate = ; // UserJsonldUserUpdate | The updated User resource

try {
    final response = api.apiUsersIdPut(id, userJsonldUserUpdate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->apiUsersIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User identifier | 
 **userJsonldUserUpdate** | [**UserJsonldUserUpdate**](UserJsonldUserUpdate.md)| The updated User resource | 

### Return type

[**UserJsonldUserRead**](UserJsonldUserRead.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/ld+json
 - **Accept**: application/ld+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersPost**
> UserJsonldUserRead apiUsersPost(userJsonldUserCreate)

Creates a User resource.

Creates a User resource.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: JWT
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('JWT').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final UserJsonldUserCreate userJsonldUserCreate = ; // UserJsonldUserCreate | The new User resource

try {
    final response = api.apiUsersPost(userJsonldUserCreate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->apiUsersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userJsonldUserCreate** | [**UserJsonldUserCreate**](UserJsonldUserCreate.md)| The new User resource | 

### Return type

[**UserJsonldUserRead**](UserJsonldUserRead.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/ld+json
 - **Accept**: application/ld+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

