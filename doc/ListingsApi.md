# aryeo.api.ListingsApi

## Load the API package
```dart
import 'package:aryeo/api.dart';
```

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getListings**](ListingsApi.md#getlistings) | **GET** /listings | Get the listings available to a group.
[**getListingsId**](ListingsApi.md#getlistingsid) | **GET** /listings/{uuid} | Get information about a listing.


# **getListings**
> PartialListingCollection getListings(query, perPage, page, status, price, bathrooms, bedrooms)

Get the listings available to a group.

Get the listings available to a group.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ListingsApi();
final query = thoroughbred trail; // String | A search query.
final perPage = 25; // String | The number of items per page. Defaults to 25.
final page = 2; // String | The requested page. Defaults to 1.
final status = coming_soon; // String | The status you want to scope down to, example sold,  coming_soon,  for_sale, sold
final price = 100000; // int | The price value and greater will be returned.
final bathrooms = 3.5; // num | Number of bathrooms minimum.
final bedrooms = 4; // int | Number of bedrooms minimum.

try { 
    final result = api_instance.getListings(query, perPage, page, status, price, bathrooms, bedrooms);
    print(result);
} catch (e) {
    print('Exception when calling ListingsApi->getListings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| A search query. | [optional] 
 **perPage** | **String**| The number of items per page. Defaults to 25. | [optional] 
 **page** | **String**| The requested page. Defaults to 1. | [optional] 
 **status** | **String**| The status you want to scope down to, example sold,  coming_soon,  for_sale, sold | [optional] 
 **price** | **int**| The price value and greater will be returned. | [optional] 
 **bathrooms** | **num**| Number of bathrooms minimum. | [optional] 
 **bedrooms** | **int**| Number of bedrooms minimum. | [optional] 

### Return type

[**PartialListingCollection**](PartialListingCollection.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListingsId**
> ListingResource getListingsId(uuid)

Get information about a listing.

Get information about a listing.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ListingsApi();
final uuid = 05a1c594-f469-483c-b490-51d790090593; // String | The UUID of a listing.

try { 
    final result = api_instance.getListingsId(uuid);
    print(result);
} catch (e) {
    print('Exception when calling ListingsApi->getListingsId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| The UUID of a listing. | 

### Return type

[**ListingResource**](ListingResource.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

