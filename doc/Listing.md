# aryeo.model.Listing

## Load the model package
```dart
import 'package:aryeo/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the listing. UUID Version 4. | 
**address** | [**Address**](Address.md) |  | 
**mlsNumber** | **String** | The identifier for a listing on its local MLS.  | [optional] 
**type** | **String** | General type of the listing, primarily categorizing its use case. Examples include residential and commercial.  | [optional] 
**subType** | **String** | Further specifies the listing type. Examples include family residence and condominium. | [optional] 
**status** | **String** | Local, regional, or otherwise custom status for the listing used by the parties involved in the listing transaction. While variable, these statuses are typically mapped to the listing's standard status. | [optional] 
**standardStatus** | **String** | The status of the listing as it reflects the state of the contract between the listing agent and seller or an agreement with a buyer, including Active, Active Under Contract, Canceled, Closed, Expired, Pending, and Withdrawn. | [optional] 
**description** | **String** | Description of the selling points of the building and/or land for sale.  | [optional] 
**lot** | [**ListingLot**](ListingLot.md) |  | [optional] 
**building** | [**ListingBuilding**](ListingBuilding.md) |  | [optional] 
**price** | [**ListingPrice**](ListingPrice.md) |  | [optional] 
**listAgent** | [**Group**](Group.md) |  | [optional] 
**coListAgent** | [**Group**](Group.md) |  | [optional] 
**images** | [**List<Image>**](Image.md) | images | [optional] [default to const []]
**videos** | [**List<Video>**](Video.md) | videos | [optional] [default to const []]
**floorPlans** | [**List<FloorPlan>**](FloorPlan.md) | floor_plans | [optional] [default to const []]
**interactiveContent** | [**List<InteractiveContent>**](InteractiveContent.md) | interactive_content | [optional] [default to const []]
**propertyWebsite** | [**PropertyWebsite**](PropertyWebsite.md) |  | [optional] 
**orders** | [**List<Order>**](Order.md) | orders | [optional] [default to const []]
**downloadsEnabled** | **bool** | Are downloads enabled for this listing? | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


