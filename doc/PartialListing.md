# aryeo.model.PartialListing

## Load the model package
```dart
import 'package:aryeo/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the listing. | 
**address** | [**PartialAddress**](PartialAddress.md) |  | 
**deliveryStatus** | **String** | Has the listing been delivered? | 
**thumbnailUrl** | **String** | Thumbnail URL for the listing. | [optional] 
**price** | **int** | The price of the property in dollars. | [optional] 
**brandedUrl** | **String** | URL for branded property website. | [optional] 
**squareFeet** | **num** | Total number of square feet. | [optional] 
**bedrooms** | **int** | Number of bedrooms. | [optional] 
**bathrooms** | **num** | Number of bathrooms. | [optional] 
**downloadsEnabled** | **bool** | Are downloads enabled for this listing? | 
**status** | **String** | Sales status for the listing. | [optional] 
**propertyDetails** | [**PropertyDetails**](PropertyDetails.md) |  | [optional] 
**agent** | [**PartialGroup**](PartialGroup.md) |  | [optional] 
**coAgent** | [**PartialGroup**](PartialGroup.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


