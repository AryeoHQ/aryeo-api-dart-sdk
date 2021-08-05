# aryeo.model.Group

## Load the model package
```dart
import 'package:aryeo/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the group. UUID Version 4. | 
**type** | **String** | The type of the group. Can be CREATOR, AGENT, or BROKERAGE, and may dictate the attributes of the group returned. | 
**name** | **String** | The name of the group. | 
**email** | **String** | The email address of a group. | [optional] 
**phone** | **String** | A phone number represented in whichever standards specified by the group, typically ###-###-#### (separated by hyphens). | [optional] 
**websiteUrl** | **String** | The website URL of a group. | [optional] 
**logoUrl** | **String** | The logo URL of a group. | [optional] 
**avatarUrl** | **String** | The profile image URL of a real estate agent. Only returned if group's type is AGENT. | [optional] 
**officeName** | **String** | The name of the brokerage or team of a real estate agent. Only returned if group's type is AGENT. | [optional] 
**licenseNumber** | **String** | The license number of a real estate agent. Only returned if group's type is AGENT. | [optional] 
**socialProfiles** | [**SocialProfiles**](SocialProfiles.md) |  | [optional] 
**defaultOrderForm** | [**OrderForm**](OrderForm.md) |  | [optional] 
**orderForms** | [**List<OrderForm>**](OrderForm.md) | An array of order forms a vendor group provides for placing orders. Only returned if group's type is CREATOR.  | [optional] [default to const []]
**owner** | [**User**](User.md) |  | [optional] 
**users** | [**List<User>**](User.md) | The Aryeo users associated with this group. | [optional] [default to const []]
**isBrokerageOrBrokerageAgent** | **bool** | Does this group represent a brokerage or an agent who belongs to a brokerage? | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


