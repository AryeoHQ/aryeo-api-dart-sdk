//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrdersApi {
  OrdersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List all orders.
  ///
  /// Lists all orders of a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sort:
  ///   Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-created_at`.
  ///
  /// * [String] perPage:
  ///   The number of items per page. Defaults to 25.
  ///
  /// * [String] page:
  ///   The requested page. Defaults to 1.
  Future<Response> getOrdersWithHttpInfo({ String sort, String perPage, String page }) async {
    // Verify required params are set.

    final path = r'/orders';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }
    if (perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'per_page', perPage));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Token'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// List all orders.
  ///
  /// Lists all orders of a group.
  ///
  /// Parameters:
  ///
  /// * [String] sort:
  ///   Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-created_at`.
  ///
  /// * [String] perPage:
  ///   The number of items per page. Defaults to 25.
  ///
  /// * [String] page:
  ///   The requested page. Defaults to 1.
  Future<OrderCollection> getOrders({ String sort, String perPage, String page }) async {
    final response = await getOrdersWithHttpInfo( sort: sort, perPage: perPage, page: page );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderCollection',) as OrderCollection;
        }
    return Future<OrderCollection>.value(null);
  }

  /// Get products available to a group.
  ///
  /// Get products of a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sort:
  ///   Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `title`.
  ///
  /// * [String] perPage:
  ///   The number of items per page. Defaults to 25.
  ///
  /// * [String] page:
  ///   The requested page. Defaults to 1.
  ///
  /// * [String] filterLeftSquareBracketSearchRightSquareBracket:
  ///   Return products that have fields matching this term.
  ///
  /// * [String] filterLeftSquareBracketCategoryIdsRightSquareBracket:
  ///   Return products in the given categories.
  ///
  /// * [String] filterLeftSquareBracketTypeRightSquareBracket:
  ///   Return products matching the given type. Allowed values are: MAIN, ADDON.
  Future<Response> getProductsWithHttpInfo({ String sort, String perPage, String page, String filterLeftSquareBracketSearchRightSquareBracket, String filterLeftSquareBracketCategoryIdsRightSquareBracket, String filterLeftSquareBracketTypeRightSquareBracket }) async {
    // Verify required params are set.

    final path = r'/products';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }
    if (perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'per_page', perPage));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (filterLeftSquareBracketSearchRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[search]', filterLeftSquareBracketSearchRightSquareBracket));
    }
    if (filterLeftSquareBracketCategoryIdsRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[category_ids]', filterLeftSquareBracketCategoryIdsRightSquareBracket));
    }
    if (filterLeftSquareBracketTypeRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[type]', filterLeftSquareBracketTypeRightSquareBracket));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Token'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get products available to a group.
  ///
  /// Get products of a group.
  ///
  /// Parameters:
  ///
  /// * [String] sort:
  ///   Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `title`.
  ///
  /// * [String] perPage:
  ///   The number of items per page. Defaults to 25.
  ///
  /// * [String] page:
  ///   The requested page. Defaults to 1.
  ///
  /// * [String] filterLeftSquareBracketSearchRightSquareBracket:
  ///   Return products that have fields matching this term.
  ///
  /// * [String] filterLeftSquareBracketCategoryIdsRightSquareBracket:
  ///   Return products in the given categories.
  ///
  /// * [String] filterLeftSquareBracketTypeRightSquareBracket:
  ///   Return products matching the given type. Allowed values are: MAIN, ADDON.
  Future<ProductCollection> getProducts({ String sort, String perPage, String page, String filterLeftSquareBracketSearchRightSquareBracket, String filterLeftSquareBracketCategoryIdsRightSquareBracket, String filterLeftSquareBracketTypeRightSquareBracket }) async {
    final response = await getProductsWithHttpInfo( sort: sort, perPage: perPage, page: page, filterLeftSquareBracketSearchRightSquareBracket: filterLeftSquareBracketSearchRightSquareBracket, filterLeftSquareBracketCategoryIdsRightSquareBracket: filterLeftSquareBracketCategoryIdsRightSquareBracket, filterLeftSquareBracketTypeRightSquareBracket: filterLeftSquareBracketTypeRightSquareBracket );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductCollection',) as ProductCollection;
        }
    return Future<ProductCollection>.value(null);
  }

  /// Create an order.
  ///
  /// Create an order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderPostPayload] orderPostPayload:
  ///   OrderPostPayload
  Future<Response> postOrdersWithHttpInfo({ OrderPostPayload orderPostPayload }) async {
    // Verify required params are set.

    final path = r'/orders';

    Object postBody = orderPostPayload;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Token'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create an order.
  ///
  /// Create an order.
  ///
  /// Parameters:
  ///
  /// * [OrderPostPayload] orderPostPayload:
  ///   OrderPostPayload
  Future<OrderResource> postOrders({ OrderPostPayload orderPostPayload }) async {
    final response = await postOrdersWithHttpInfo( orderPostPayload: orderPostPayload );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderResource',) as OrderResource;
        }
    return Future<OrderResource>.value(null);
  }
}
