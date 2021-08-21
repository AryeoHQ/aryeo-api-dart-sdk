# aryeo.model.Product

## Load the model package
```dart
import 'package:aryeo/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the product. UUID Version 4. | 
**title** | **String** | The title of the product. | 
**description** | **String** | The description of the product. | [optional] 
**type** | **String** | The type of product. | 
**variants** | [**List<ProductVariant>**](ProductVariant.md) |  | [optional] [default to const []]
**categories** | [**List<ProductCategory>**](ProductCategory.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


