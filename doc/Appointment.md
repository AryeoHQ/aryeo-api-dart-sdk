# aryeo.model.Appointment

## Load the model package
```dart
import 'package:aryeo/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the appointment. | 
**status** | **String** | The status of the appointment. | [optional] 
**title** | **String** | The title of the appointment. | [optional] 
**description** | **String** | The multi-line description of the appointment. | [optional] 
**startAt** | [**DateTime**](DateTime.md) | The date and time (ISO 8601 format) when the appointment is set to start. | [optional] 
**endAt** | [**DateTime**](DateTime.md) | The date and time (ISO 8601 format) when the appointment is set to end. | [optional] 
**duration** | **int** | The length of the appointment in minutes. | [optional] 
**order** | [**Order**](Order.md) |  | [optional] 
**users** | [**List<User>**](User.md) | Users attached to the appointment. | [optional] [default to const []]
**items** | [**List<OrderItem>**](OrderItem.md) | Items attached to the appointment. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


