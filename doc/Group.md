# aryeo.model.Group

## Load the model package
```dart
import 'package:aryeo/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the group. | 
**groupType** | **String** | The type of group. | 
**name** | **String** | The name of the group. | 
**logo** | **String** | Group logo. | [optional] 
**email** | **String** | Email. | [optional] 
**phone** | **String** | Phone number. | [optional] 
**website** | **String** | Website. | [optional] 
**isBrokerageOrBrokerageAgent** | **bool** | Does this group represent a brokerage or an agent who belongs to a brokerage? | 
**socialProfiles** | [**SocialProfiles**](SocialProfiles.md) |  | [optional] 
**agentProperties** | [**GroupAgentProperties**](GroupAgentProperties.md) |  | [optional] 
**users** | [**List<User>**](User.md) | users | [optional] [default to const []]
**defaultOrderForm** | [**OrderForm**](OrderForm.md) |  | [optional] 
**orderForms** | [**List<OrderForm>**](OrderForm.md) | An array of order forms. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


