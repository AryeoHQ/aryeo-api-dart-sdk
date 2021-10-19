# aryeo.api.OrdersApi

## Load the API package
```dart
import 'package:aryeo/api.dart';
```

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOrders**](OrdersApi.md#getorders) | **GET** /orders | List all orders.
[**getOrdersId**](OrdersApi.md#getordersid) | **GET** /orders/{order_id} | Retrieve an order.
[**getProducts**](OrdersApi.md#getproducts) | **GET** /products | List all products.
[**postOrders**](OrdersApi.md#postorders) | **POST** /orders | Create an order.


# **getOrders**
> OrderCollection getOrders(sort, perPage, page)

List all orders.

Lists all orders of a group.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrdersApi();
final sort = -created_at; // String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-created_at`.
final perPage = 25; // String | The number of items per page. Defaults to 25.
final page = 2; // String | The requested page. Defaults to 1.

try { 
    final result = api_instance.getOrders(sort, perPage, page);
    print(result);
} catch (e) {
    print('Exception when calling OrdersApi->getOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **String**| Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-created_at`. | [optional] 
 **perPage** | **String**| The number of items per page. Defaults to 25. | [optional] 
 **page** | **String**| The requested page. Defaults to 1. | [optional] 

### Return type

[**OrderCollection**](OrderCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrdersId**
> OrderResource getOrdersId(orderId, include)

Retrieve an order.

Retrieves the details of an order with the given ID.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrdersApi();
final orderId = 00000000-0000-4000-8000-000000000000; // String | The ID of an order. UUID Version 4.
final include = items,appointments,unconfirmed_appointments; // String | Comma separated list of optional data to include in the response.

try { 
    final result = api_instance.getOrdersId(orderId, include);
    print(result);
} catch (e) {
    print('Exception when calling OrdersApi->getOrdersId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | [**String**](.md)| The ID of an order. UUID Version 4. | 
 **include** | **String**| Comma separated list of optional data to include in the response. | [optional] 

### Return type

[**OrderResource**](OrderResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProducts**
> ProductCollection getProducts(sort, perPage, page, filterLeftSquareBracketSearchRightSquareBracket, filterLeftSquareBracketIncludeInactiveRightSquareBracket, filterLeftSquareBracketCategoryIdsRightSquareBracket, filterLeftSquareBracketTypeRightSquareBracket)

List all products.

List all products of a group.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrdersApi();
final sort = -created_at; // String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `title`.
final perPage = 25; // String | The number of items per page. Defaults to 25.
final page = 2; // String | The requested page. Defaults to 1.
final filterLeftSquareBracketSearchRightSquareBracket = Photography; // String | Return products that have fields matching this term.
final filterLeftSquareBracketIncludeInactiveRightSquareBracket = true; // bool | Include inactive products (in addition to active products) when returning products.
final filterLeftSquareBracketCategoryIdsRightSquareBracket = []; // List<String> | Return products in the given categories.
final filterLeftSquareBracketTypeRightSquareBracket = MAIN; // String | Return products matching the given type. Allowed values are: MAIN, ADDON.

try { 
    final result = api_instance.getProducts(sort, perPage, page, filterLeftSquareBracketSearchRightSquareBracket, filterLeftSquareBracketIncludeInactiveRightSquareBracket, filterLeftSquareBracketCategoryIdsRightSquareBracket, filterLeftSquareBracketTypeRightSquareBracket);
    print(result);
} catch (e) {
    print('Exception when calling OrdersApi->getProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **String**| Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `title`. | [optional] 
 **perPage** | **String**| The number of items per page. Defaults to 25. | [optional] 
 **page** | **String**| The requested page. Defaults to 1. | [optional] 
 **filterLeftSquareBracketSearchRightSquareBracket** | **String**| Return products that have fields matching this term. | [optional] 
 **filterLeftSquareBracketIncludeInactiveRightSquareBracket** | **bool**| Include inactive products (in addition to active products) when returning products. | [optional] 
 **filterLeftSquareBracketCategoryIdsRightSquareBracket** | [**List<String>**](String.md)| Return products in the given categories. | [optional] [default to const []]
 **filterLeftSquareBracketTypeRightSquareBracket** | **String**| Return products matching the given type. Allowed values are: MAIN, ADDON. | [optional] 

### Return type

[**ProductCollection**](ProductCollection.md)

### Authorization

[Token](../README.md#Token)

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
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrdersApi();
final orderPostPayload = OrderPostPayload(); // OrderPostPayload | OrderPostPayload

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
 **orderPostPayload** | [**OrderPostPayload**](OrderPostPayload.md)| OrderPostPayload | [optional] 

### Return type

[**OrderResource**](OrderResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

