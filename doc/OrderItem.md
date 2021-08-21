# aryeo.model.OrderItem

## Load the model package
```dart
import 'package:aryeo/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the item. UUID Version 4. | 
**title** | **String** | The title of the item. | [optional] 
**description** | **String** | The description of the item. | [optional] 
**amount** | **int** | A positive integer in the smallest currency unit (that is, 100 cents for $1.00) representing the cost of a single instance of this item. This is multiplied by the quantity to calculate what was or will be charged. | [optional] 
**quantity** | **int** | A positive integer representing the number of instances of this item that was or will be charged. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


