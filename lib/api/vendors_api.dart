//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VendorsApi {
  VendorsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get vendors available to a group.
  ///
  /// Get vendors available to a group.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getVendorsWithHttpInfo() async {
    final path = r'/vendors';

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

  /// Get vendors available to a group.
  ///
  /// Get vendors available to a group.
  Future<GroupCollection> getVendors() async {
    final response = await getVendorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupCollection',) as GroupCollection;
        }
    return Future<GroupCollection>.value(null);
  }

  /// Get vendors that can be added to the group's vendor list.
  ///
  /// Get vendors that can be added to the group's vendor list, excluding those already available to a group. 
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
  Future<Response> getVendorsSearchWithHttpInfo({ String query, String perPage, String page }) async {
    // Verify required params are set.

    final path = r'/vendors/search';

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

  /// Get vendors that can be added to the group's vendor list.
  ///
  /// Get vendors that can be added to the group's vendor list, excluding those already available to a group. 
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
  Future<GroupCollection> getVendorsSearch({ String query, String perPage, String page }) async {
    final response = await getVendorsSearchWithHttpInfo( query: query, perPage: perPage, page: page );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupCollection',) as GroupCollection;
        }
    return Future<GroupCollection>.value(null);
  }
}
