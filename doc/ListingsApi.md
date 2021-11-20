# aryeo.api.ListingsApi

## Load the API package
```dart
import 'package:aryeo/api.dart';
```

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getListings**](ListingsApi.md#getlistings) | **GET** /listings | List all listings.
[**getListingsId**](ListingsApi.md#getlistingsid) | **GET** /listings/{listing_id} | Retrieve a listing.


# **getListings**
> ListingCollection getListings(include, filterLeftSquareBracketSearchRightSquareBracket, filterLeftSquareBracketAddressRightSquareBracket, filterLeftSquareBracketListAgentRightSquareBracket, filterLeftSquareBracketStatusRightSquareBracket, filterLeftSquareBracketActiveRightSquareBracket, filterLeftSquareBracketPriceGteRightSquareBracket, filterLeftSquareBracketPriceLteRightSquareBracket, filterLeftSquareBracketSquareFeetGteRightSquareBracket, filterLeftSquareBracketSquareFeetLteRightSquareBracket, filterLeftSquareBracketBedroomsGteRightSquareBracket, filterLeftSquareBracketBedroomsLteRightSquareBracket, filterLeftSquareBracketBathroomsGteRightSquareBracket, filterLeftSquareBracketBathroomsLteRightSquareBracket, sort, perPage, page)

List all listings.

Lists all listings available to a group.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ListingsApi();
final include = images,videos,orders; // String | Comma separated list of optional data to include in the response.
final filterLeftSquareBracketSearchRightSquareBracket = 123 Main St; // String | Return listings that have fields matching this term.
final filterLeftSquareBracketAddressRightSquareBracket = 123 Main St; // String | Return listings that have an address matching this term.
final filterLeftSquareBracketListAgentRightSquareBracket = John Doe; // String | Return listings that have a listing agent or co-listing agent matching this term.
final filterLeftSquareBracketStatusRightSquareBracket = FOR_SALE; // String | Return listings that have a certain status.
final filterLeftSquareBracketActiveRightSquareBracket = true; // bool | Set as true to return listings that have an active status (e.g. active statuses include `COMING_SOON`, `FOR_SALE`, `FOR_LEASE`, `PENDING_SALE`, `PENDING_LEASE`, `SOLD`, `LEASED`).
final filterLeftSquareBracketPriceGteRightSquareBracket = 100000; // num | Return listings where the price field is greater than or equal to this value.
final filterLeftSquareBracketPriceLteRightSquareBracket = 4000000; // num | Return listings where the price field is less than or equal to this value.
final filterLeftSquareBracketSquareFeetGteRightSquareBracket = 1000; // num | Return listings where the square feet field is greater than or equal to this value.
final filterLeftSquareBracketSquareFeetLteRightSquareBracket = 5000; // num | Return listings where the square feet field is less than or equal to this value.
final filterLeftSquareBracketBedroomsGteRightSquareBracket = 2; // int | Return listings where the bedrooms field is greater than or equal to this value.
final filterLeftSquareBracketBedroomsLteRightSquareBracket = 4; // int | Return listings where the bedrooms field is less than or equal to this value.
final filterLeftSquareBracketBathroomsGteRightSquareBracket = 2.5; // num | Return listings where the bathrooms field is greater than or equal to this value.
final filterLeftSquareBracketBathroomsLteRightSquareBracket = 5; // num | Return listings where the bathrooms field is less than or equal to this value.
final sort = -created_at; // String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-created_at`.
final perPage = 25; // String | The number of items per page. Defaults to 25.
final page = 2; // String | The requested page. Defaults to 1.

try { 
    final result = api_instance.getListings(include, filterLeftSquareBracketSearchRightSquareBracket, filterLeftSquareBracketAddressRightSquareBracket, filterLeftSquareBracketListAgentRightSquareBracket, filterLeftSquareBracketStatusRightSquareBracket, filterLeftSquareBracketActiveRightSquareBracket, filterLeftSquareBracketPriceGteRightSquareBracket, filterLeftSquareBracketPriceLteRightSquareBracket, filterLeftSquareBracketSquareFeetGteRightSquareBracket, filterLeftSquareBracketSquareFeetLteRightSquareBracket, filterLeftSquareBracketBedroomsGteRightSquareBracket, filterLeftSquareBracketBedroomsLteRightSquareBracket, filterLeftSquareBracketBathroomsGteRightSquareBracket, filterLeftSquareBracketBathroomsLteRightSquareBracket, sort, perPage, page);
    print(result);
} catch (e) {
    print('Exception when calling ListingsApi->getListings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Comma separated list of optional data to include in the response. | [optional] 
 **filterLeftSquareBracketSearchRightSquareBracket** | **String**| Return listings that have fields matching this term. | [optional] 
 **filterLeftSquareBracketAddressRightSquareBracket** | **String**| Return listings that have an address matching this term. | [optional] 
 **filterLeftSquareBracketListAgentRightSquareBracket** | **String**| Return listings that have a listing agent or co-listing agent matching this term. | [optional] 
 **filterLeftSquareBracketStatusRightSquareBracket** | **String**| Return listings that have a certain status. | [optional] 
 **filterLeftSquareBracketActiveRightSquareBracket** | **bool**| Set as true to return listings that have an active status (e.g. active statuses include `COMING_SOON`, `FOR_SALE`, `FOR_LEASE`, `PENDING_SALE`, `PENDING_LEASE`, `SOLD`, `LEASED`). | [optional] 
 **filterLeftSquareBracketPriceGteRightSquareBracket** | **num**| Return listings where the price field is greater than or equal to this value. | [optional] 
 **filterLeftSquareBracketPriceLteRightSquareBracket** | **num**| Return listings where the price field is less than or equal to this value. | [optional] 
 **filterLeftSquareBracketSquareFeetGteRightSquareBracket** | **num**| Return listings where the square feet field is greater than or equal to this value. | [optional] 
 **filterLeftSquareBracketSquareFeetLteRightSquareBracket** | **num**| Return listings where the square feet field is less than or equal to this value. | [optional] 
 **filterLeftSquareBracketBedroomsGteRightSquareBracket** | **int**| Return listings where the bedrooms field is greater than or equal to this value. | [optional] 
 **filterLeftSquareBracketBedroomsLteRightSquareBracket** | **int**| Return listings where the bedrooms field is less than or equal to this value. | [optional] 
 **filterLeftSquareBracketBathroomsGteRightSquareBracket** | **num**| Return listings where the bathrooms field is greater than or equal to this value. | [optional] 
 **filterLeftSquareBracketBathroomsLteRightSquareBracket** | **num**| Return listings where the bathrooms field is less than or equal to this value. | [optional] 
 **sort** | **String**| Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-created_at`. | [optional] 
 **perPage** | **String**| The number of items per page. Defaults to 25. | [optional] 
 **page** | **String**| The requested page. Defaults to 1. | [optional] 

### Return type

[**ListingCollection**](ListingCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListingsId**
> ListingResource getListingsId(listingId, include)

Retrieve a listing.

Retrieves the details of a listing with the given ID.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ListingsApi();
final listingId = 00000000-0000-4000-8000-000000000000; // String | The ID of a listing. UUID Version 4.
final include = images,videos,orders; // String | Comma separated list of optional data to include in the response.

try { 
    final result = api_instance.getListingsId(listingId, include);
    print(result);
} catch (e) {
    print('Exception when calling ListingsApi->getListingsId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listingId** | [**String**](.md)| The ID of a listing. UUID Version 4. | 
 **include** | **String**| Comma separated list of optional data to include in the response. | [optional] 

### Return type

[**ListingResource**](ListingResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

