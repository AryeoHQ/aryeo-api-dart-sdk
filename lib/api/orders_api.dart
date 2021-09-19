//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  Future<Response> getOrdersWithHttpInfo({ String sort, String perPage, String page, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/orders';

    // ignore: prefer_final_locals
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

    const authNames = <String>['Token'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
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
  Future<OrderCollection> getOrders({ String sort, String perPage, String page, }) async {
    final response = await getOrdersWithHttpInfo( sort: sort, perPage: perPage, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderCollection',) as OrderCollection;
        }
    return Future<OrderCollection>.value();
  }

  /// Retrieve an order.
  ///
  /// Retrieves the details of an order with the given ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderId (required):
  ///   The ID of an order. UUID Version 4.
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<Response> getOrdersIdWithHttpInfo(String orderId, { String include, }) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }

    // ignore: prefer_const_declarations
    final path = r'/orders/{order_id}'
      .replaceAll('{order_id}', orderId.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (include != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'include', include));
    }

    const authNames = <String>['Token'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve an order.
  ///
  /// Retrieves the details of an order with the given ID.
  ///
  /// Parameters:
  ///
  /// * [String] orderId (required):
  ///   The ID of an order. UUID Version 4.
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<OrderResource> getOrdersId(String orderId, { String include, }) async {
    final response = await getOrdersIdWithHttpInfo(orderId,  include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderResource',) as OrderResource;
        }
    return Future<OrderResource>.value();
  }

  /// List all products.
  ///
  /// List all products of a group.
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
  /// * [List<String>] filterLeftSquareBracketCategoryIdsRightSquareBracket:
  ///   Return products in the given categories.
  ///
  /// * [String] filterLeftSquareBracketTypeRightSquareBracket:
  ///   Return products matching the given type. Allowed values are: MAIN, ADDON.
  Future<Response> getProductsWithHttpInfo({ String sort, String perPage, String page, String filterLeftSquareBracketSearchRightSquareBracket, List<String> filterLeftSquareBracketCategoryIdsRightSquareBracket, String filterLeftSquareBracketTypeRightSquareBracket, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/products';

    // ignore: prefer_final_locals
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
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'filter[category_ids]', filterLeftSquareBracketCategoryIdsRightSquareBracket));
    }
    if (filterLeftSquareBracketTypeRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[type]', filterLeftSquareBracketTypeRightSquareBracket));
    }

    const authNames = <String>['Token'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// List all products.
  ///
  /// List all products of a group.
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
  /// * [List<String>] filterLeftSquareBracketCategoryIdsRightSquareBracket:
  ///   Return products in the given categories.
  ///
  /// * [String] filterLeftSquareBracketTypeRightSquareBracket:
  ///   Return products matching the given type. Allowed values are: MAIN, ADDON.
  Future<ProductCollection> getProducts({ String sort, String perPage, String page, String filterLeftSquareBracketSearchRightSquareBracket, List<String> filterLeftSquareBracketCategoryIdsRightSquareBracket, String filterLeftSquareBracketTypeRightSquareBracket, }) async {
    final response = await getProductsWithHttpInfo( sort: sort, perPage: perPage, page: page, filterLeftSquareBracketSearchRightSquareBracket: filterLeftSquareBracketSearchRightSquareBracket, filterLeftSquareBracketCategoryIdsRightSquareBracket: filterLeftSquareBracketCategoryIdsRightSquareBracket, filterLeftSquareBracketTypeRightSquareBracket: filterLeftSquareBracketTypeRightSquareBracket, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductCollection',) as ProductCollection;
        }
    return Future<ProductCollection>.value();
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
  Future<Response> postOrdersWithHttpInfo({ OrderPostPayload orderPostPayload, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/orders';

    // ignore: prefer_final_locals
    Object postBody = orderPostPayload;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['Token'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
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
  Future<OrderResource> postOrders({ OrderPostPayload orderPostPayload, }) async {
    final response = await postOrdersWithHttpInfo( orderPostPayload: orderPostPayload, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderResource',) as OrderResource;
        }
    return Future<OrderResource>.value();
  }
}
