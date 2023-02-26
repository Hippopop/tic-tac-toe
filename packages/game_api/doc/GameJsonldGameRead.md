# openapi.model.GameJsonldGameRead

## Load the model package

```dart
import 'package:openapi/api.dart';
```

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**atContext** | [**GameJsonldGameReadContext**](GameJsonldGameReadContext.md) |  | [optional]
**atId** | **String** |  | [optional]
**atType** | **String** |  | [optional]
**id** | **int** |  | [optional]
**player1** | **String** |  | [optional]
**player2** | **String** |  |
**result** | **String** |  | [optional] [default to 'Unfinished']
**open** | **bool** |  | [optional] [default to true]
**code** | **String** |  | [optional]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional]
**finishedAt** | [**DateTime**](DateTime.md) |  | [optional]
**turns** | [**BuiltList&lt;TurnJsonldGameRead&gt;**](TurnJsonldGameRead.md) |  | [optional]
**currentTurnPlayer** | **String** |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
