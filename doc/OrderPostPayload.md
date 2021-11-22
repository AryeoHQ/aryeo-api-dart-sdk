# aryeo.model.OrderPostPayload

## Load the model package
```dart
import 'package:aryeo/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fulfillmentStatus** | **String** | The fulfillment status of the order. Defaults to \"UNFULFILLED\". | [optional] 
**internalNotes** | **String** | Internal notes that will be attached to the order. Viewable only by the team. | [optional] 
**addressId** | **String** | ID of the address to associate with the order. UUID Version 4. | [optional] 
**customerId** | **String** | ID of the customer to associate with the order. UUID Version 4. | [optional] 
**notify** | **bool** | Indicates if the customer and creator notifications should be sent when creating the order. Requires an address and customer to be set in order for the notifications to be sent. | [optional] 
**lockDownloadForPayment** | **bool** | Indicates if the downloads for the attached listing should be locked while there is an outstanding balance on the order. | [optional] 
**allowPaymentsBeforeFulfillment** | **bool** | Indicates if the order will allow payments from the customer before the order is marked as fulfilled. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


