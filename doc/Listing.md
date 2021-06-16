# aryeo.model.Listing

## Load the model package
```dart
import 'package:aryeo/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the listing. | 
**address** | [**PartialAddress**](PartialAddress.md) |  | 
**deliveryStatus** | **String** | Has this listing been delivered? | 
**thumbnailUrl** | **String** | Thumbnail URL for the listing. | [optional] 
**agent** | [**Group**](Group.md) |  | [optional] 
**coAgent** | [**Group**](Group.md) |  | [optional] 
**images** | [**List<Image>**](Image.md) | images | [optional] [default to const []]
**videos** | [**List<Video>**](Video.md) | videos | [optional] [default to const []]
**floorPlans** | [**List<FloorPlan>**](FloorPlan.md) | floor_plans | [optional] [default to const []]
**propertyWebsites** | [**PropertyWebsites**](PropertyWebsites.md) |  | [optional] 
**interactiveContent** | [**List<InteractiveContent>**](InteractiveContent.md) | interactive_content | [optional] [default to const []]
**propertyDetails** | [**PropertyDetails**](PropertyDetails.md) |  | [optional] 
**downloadsEnabled** | **bool** | Are downloads enabled for this listing? | 
**orders** | [**List<Order>**](Order.md) | orders | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


