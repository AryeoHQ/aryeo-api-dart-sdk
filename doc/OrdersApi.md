# aryeo.api.OrdersApi

## Load the API package
```dart
import 'package:aryeo/api.dart';
```

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOrders**](OrdersApi.md#getorders) | **GET** /orders | Get orders available to a group.
[**postOrders**](OrdersApi.md#postorders) | **POST** /orders | Create an order.


# **getOrders**
> OrderCollection getOrders()

Get orders available to a group.

Get orders of a group.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrdersApi();

try { 
    final result = api_instance.getOrders();
    print(result);
} catch (e) {
    print('Exception when calling OrdersApi->getOrders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrderCollection**](OrderCollection.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postOrders**
> OrderResource postOrders(orderPostPayload)

Create an order.

Create an order.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrdersApi();
final orderPostPayload = OrderPostPayload(); // OrderPostPayload | 

try { 
    final result = api_instance.postOrders(orderPostPayload);
    print(result);
} catch (e) {
    print('Exception when calling OrdersApi->postOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderPostPayload** | [**OrderPostPayload**](OrderPostPayload.md)|  | [optional] 

### Return type

[**OrderResource**](OrderResource.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

