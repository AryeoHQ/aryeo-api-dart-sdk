# aryeo.api.VendorsApi

## Load the API package
```dart
import 'package:aryeo/api.dart';
```

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVendors**](VendorsApi.md#getvendors) | **GET** /vendors | Get vendors available to a group.
[**getVendorsId**](VendorsApi.md#getvendorsid) | **GET** /vendors/{vendor_id} | Get vendors available to a group.


# **getVendors**
> GroupCollection getVendors(include)

Get vendors available to a group.

Get vendors available to a group.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = VendorsApi();
final include = users; // String | Comma separated list of optional data to include in the response.

try { 
    final result = api_instance.getVendors(include);
    print(result);
} catch (e) {
    print('Exception when calling VendorsApi->getVendors: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Comma separated list of optional data to include in the response. | [optional] 

### Return type

[**GroupCollection**](GroupCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVendorsId**
> GroupResource getVendorsId(vendorId, include)

Get vendors available to a group.

Get information about a vendor.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = VendorsApi();
final vendorId = 00000000-0000-4000-8000-000000000000; // String | The ID of the group that is associated as a vendor. UUID Version 4.
final include = default_order_form; // String | Comma separated list of optional data to include in the response.

try { 
    final result = api_instance.getVendorsId(vendorId, include);
    print(result);
} catch (e) {
    print('Exception when calling VendorsApi->getVendorsId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | [**String**](.md)| The ID of the group that is associated as a vendor. UUID Version 4. | 
 **include** | **String**| Comma separated list of optional data to include in the response. | [optional] 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

