//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MarketingMaterialsApi {
  MarketingMaterialsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Publish a marketing material template.
  ///
  /// Publish a marketing material template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the marketing material template record.
  ///
  /// * [MarketingMaterialTemplatePublishPayload] marketingMaterialTemplatePublishPayload:
  Future<Response> putMarketingMaterialsTemplatesUuidPublishWithHttpInfo(String uuid, { MarketingMaterialTemplatePublishPayload marketingMaterialTemplatePublishPayload }) async {
    // Verify required params are set.
    if (uuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: uuid');
    }

    final path = r'/marketing-materials/templates/{uuid}/publish'
      .replaceAll('{' + 'uuid' + '}', uuid.toString());

    Object postBody = marketingMaterialTemplatePublishPayload;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['JWT'];


    return await apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Publish a marketing material template.
  ///
  /// Publish a marketing material template.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the marketing material template record.
  ///
  /// * [MarketingMaterialTemplatePublishPayload] marketingMaterialTemplatePublishPayload:
  Future<void> putMarketingMaterialsTemplatesUuidPublish(String uuid, { MarketingMaterialTemplatePublishPayload marketingMaterialTemplatePublishPayload }) async {
    final response = await putMarketingMaterialsTemplatesUuidPublishWithHttpInfo(uuid,  marketingMaterialTemplatePublishPayload: marketingMaterialTemplatePublishPayload );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Publish a marketing material.
  ///
  /// Publish a marketing material.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the marketing material record.
  ///
  /// * [MarketingMaterialPublishPayload] marketingMaterialPublishPayload:
  Future<Response> putMarketingMaterialsUuidPublishWithHttpInfo(String uuid, { MarketingMaterialPublishPayload marketingMaterialPublishPayload }) async {
    // Verify required params are set.
    if (uuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: uuid');
    }

    final path = r'/marketing-materials/{uuid}/publish'
      .replaceAll('{' + 'uuid' + '}', uuid.toString());

    Object postBody = marketingMaterialPublishPayload;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['JWT'];


    return await apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Publish a marketing material.
  ///
  /// Publish a marketing material.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the marketing material record.
  ///
  /// * [MarketingMaterialPublishPayload] marketingMaterialPublishPayload:
  Future<void> putMarketingMaterialsUuidPublish(String uuid, { MarketingMaterialPublishPayload marketingMaterialPublishPayload }) async {
    final response = await putMarketingMaterialsUuidPublishWithHttpInfo(uuid,  marketingMaterialPublishPayload: marketingMaterialPublishPayload );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
