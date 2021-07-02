//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ListingsApi {
  ListingsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get the listings available to a group.
  ///
  /// Get the listings available to a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   A search query.
  ///
  /// * [String] perPage:
  ///   The number of items per page. Defaults to 25.
  ///
  /// * [String] page:
  ///   The requested page. Defaults to 1.
  ///
  /// * [String] status:
  ///   The status you want to scope down to, example sold,  coming_soon,  for_sale, sold
  ///
  /// * [int] price:
  ///   The price value and greater will be returned.
  ///
  /// * [num] bathrooms:
  ///   Number of bathrooms minimum.
  ///
  /// * [int] bedrooms:
  ///   Number of bedrooms minimum.
  Future<Response> getListingsWithHttpInfo({ String query, String perPage, String page, String status, int price, num bathrooms, int bedrooms }) async {
    // Verify required params are set.

    final path = r'/listings';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'query', query));
    }
    if (perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'per_page', perPage));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (status != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'status', status));
    }
    if (price != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'price', price));
    }
    if (bathrooms != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'bathrooms', bathrooms));
    }
    if (bedrooms != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'bedrooms', bedrooms));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['JWT'];


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

  /// Get the listings available to a group.
  ///
  /// Get the listings available to a group.
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   A search query.
  ///
  /// * [String] perPage:
  ///   The number of items per page. Defaults to 25.
  ///
  /// * [String] page:
  ///   The requested page. Defaults to 1.
  ///
  /// * [String] status:
  ///   The status you want to scope down to, example sold,  coming_soon,  for_sale, sold
  ///
  /// * [int] price:
  ///   The price value and greater will be returned.
  ///
  /// * [num] bathrooms:
  ///   Number of bathrooms minimum.
  ///
  /// * [int] bedrooms:
  ///   Number of bedrooms minimum.
  Future<PartialListingCollection> getListings({ String query, String perPage, String page, String status, int price, num bathrooms, int bedrooms }) async {
    final response = await getListingsWithHttpInfo( query: query, perPage: perPage, page: page, status: status, price: price, bathrooms: bathrooms, bedrooms: bedrooms );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PartialListingCollection',) as PartialListingCollection;
        }
    return Future<PartialListingCollection>.value(null);
  }

  /// Get information about a listing.
  ///
  /// Get information about a listing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   The UUID of a listing.
  Future<Response> getListingsIdWithHttpInfo(String uuid) async {
    // Verify required params are set.
    if (uuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: uuid');
    }

    final path = r'/listings/{uuid}'
      .replaceAll('{' + 'uuid' + '}', uuid.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['JWT'];


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

  /// Get information about a listing.
  ///
  /// Get information about a listing.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   The UUID of a listing.
  Future<ListingResource> getListingsId(String uuid) async {
    final response = await getListingsIdWithHttpInfo(uuid);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListingResource',) as ListingResource;
        }
    return Future<ListingResource>.value(null);
  }
}
