# aryeo.api.VendorsApi

## Load the API package
```dart
import 'package:aryeo/api.dart';
```

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVendors**](VendorsApi.md#getvendors) | **GET** /vendors | Get vendors available to a group.
[**getVendorsSearch**](VendorsApi.md#getvendorssearch) | **GET** /vendors/search | Get vendors that can be added to the group's vendor list.


# **getVendors**
> GroupCollection getVendors()

Get vendors available to a group.

Get vendors available to a group.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = VendorsApi();

try { 
    final result = api_instance.getVendors();
    print(result);
} catch (e) {
    print('Exception when calling VendorsApi->getVendors: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GroupCollection**](GroupCollection.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVendorsSearch**
> GroupCollection getVendorsSearch(query, perPage, page)

Get vendors that can be added to the group's vendor list.

Get vendors that can be added to the group's vendor list, excluding those already available to a group. 

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = VendorsApi();
final query = Demo Photography Company; // String | A search query.
final perPage = 25; // String | The number of items per page. Defaults to 25.
final page = 2; // String | The requested page. Defaults to 1.

try { 
    final result = api_instance.getVendorsSearch(query, perPage, page);
    print(result);
} catch (e) {
    print('Exception when calling VendorsApi->getVendorsSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| A search query. | [optional] 
 **perPage** | **String**| The number of items per page. Defaults to 25. | [optional] 
 **page** | **String**| The requested page. Defaults to 1. | [optional] 

### Return type

[**GroupCollection**](GroupCollection.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

