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
  ///
  /// Parameters:
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<Response> getVendorsWithHttpInfo({ String include }) async {
    // Verify required params are set.

    final path = r'/vendors';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (include != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'include', include));
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

  /// Get vendors available to a group.
  ///
  /// Get vendors available to a group.
  ///
  /// Parameters:
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<GroupCollection> getVendors({ String include }) async {
    final response = await getVendorsWithHttpInfo( include: include );
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

  /// Get vendors available to a group.
  ///
  /// Get information about a vendor.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  ///   ID of the group that is associated as a vendor.
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<Response> getVendorsIdWithHttpInfo(String vendorId, { String include }) async {
    // Verify required params are set.
    if (vendorId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: vendorId');
    }

    final path = r'/vendors/{vendor_id}'
      .replaceAll('{' + 'vendor_id' + '}', vendorId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (include != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'include', include));
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

  /// Get vendors available to a group.
  ///
  /// Get information about a vendor.
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  ///   ID of the group that is associated as a vendor.
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<GroupResource> getVendorsId(String vendorId, { String include }) async {
    final response = await getVendorsIdWithHttpInfo(vendorId,  include: include );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupResource',) as GroupResource;
        }
    return Future<GroupResource>.value(null);
  }
}
