# aryeo.api.MarketingMaterialsApi

## Load the API package
```dart
import 'package:aryeo/api.dart';
```

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**putMarketingMaterialsTemplatesUuidPublish**](MarketingMaterialsApi.md#putmarketingmaterialstemplatesuuidpublish) | **PUT** /marketing-materials/templates/{uuid}/publish | Publish a marketing material template.
[**putMarketingMaterialsUuidPublish**](MarketingMaterialsApi.md#putmarketingmaterialsuuidpublish) | **PUT** /marketing-materials/{uuid}/publish | Publish a marketing material.


# **putMarketingMaterialsTemplatesUuidPublish**
> putMarketingMaterialsTemplatesUuidPublish(uuid, marketingMaterialTemplatePublishPayload)

Publish a marketing material template.

Publish a marketing material template.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MarketingMaterialsApi();
final uuid = 05a1c594-f469-483c-b490-51d790090593; // String | UUID of the marketing material template record.
final marketingMaterialTemplatePublishPayload = MarketingMaterialTemplatePublishPayload(); // MarketingMaterialTemplatePublishPayload | 

try { 
    api_instance.putMarketingMaterialsTemplatesUuidPublish(uuid, marketingMaterialTemplatePublishPayload);
} catch (e) {
    print('Exception when calling MarketingMaterialsApi->putMarketingMaterialsTemplatesUuidPublish: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| UUID of the marketing material template record. | 
 **marketingMaterialTemplatePublishPayload** | [**MarketingMaterialTemplatePublishPayload**](MarketingMaterialTemplatePublishPayload.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putMarketingMaterialsUuidPublish**
> putMarketingMaterialsUuidPublish(uuid, marketingMaterialPublishPayload)

Publish a marketing material.

Publish a marketing material.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MarketingMaterialsApi();
final uuid = 05a1c594-f469-483c-b490-51d790090593; // String | UUID of the marketing material record.
final marketingMaterialPublishPayload = MarketingMaterialPublishPayload(); // MarketingMaterialPublishPayload | 

try { 
    api_instance.putMarketingMaterialsUuidPublish(uuid, marketingMaterialPublishPayload);
} catch (e) {
    print('Exception when calling MarketingMaterialsApi->putMarketingMaterialsUuidPublish: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| UUID of the marketing material record. | 
 **marketingMaterialPublishPayload** | [**MarketingMaterialPublishPayload**](MarketingMaterialPublishPayload.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

