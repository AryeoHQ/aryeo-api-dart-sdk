# aryeo.model.Order

## Load the model package
```dart
import 'package:aryeo/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the order. | 
**displayId** | **int** | A vanity id to be displayed for the order. For example, \"Order #1000\". | 
**totalPriceCents** | **int** | The total price of the order given in cents. | 
**currency** | [**Currency**](Currency.md) |  | 
**paymentStatus** | **String** | The payment status of the order. | 
**paymentUrl** | **String** | A URL for to pay for the order. | [optional] 
**listing** | [**PartialListing**](PartialListing.md) |  | [optional] 
**fulfillmentStatus** | **String** | The fulfillment status of the order. | 
**statusUrl** | **String** | A URL to see the order's status. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


