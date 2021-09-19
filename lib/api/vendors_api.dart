//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VendorsApi {
  VendorsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List all vendors.
  ///
  /// Lists all vendors available to a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<Response> getVendorsWithHttpInfo({ String include, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/vendors';

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

  /// List all vendors.
  ///
  /// Lists all vendors available to a group.
  ///
  /// Parameters:
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<GroupCollection> getVendors({ String include, }) async {
    final response = await getVendorsWithHttpInfo( include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupCollection',) as GroupCollection;
        }
    return Future<GroupCollection>.value();
  }

  /// Retrieve a vendor.
  ///
  /// Retrieves the details of a vendor with the given ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  ///   The ID of the group that is associated as a vendor. UUID Version 4.
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<Response> getVendorsIdWithHttpInfo(String vendorId, { String include, }) async {
    // Verify required params are set.
    if (vendorId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: vendorId');
    }

    // ignore: prefer_const_declarations
    final path = r'/vendors/{vendor_id}'
      .replaceAll('{vendor_id}', vendorId.toString());

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

  /// Retrieve a vendor.
  ///
  /// Retrieves the details of a vendor with the given ID.
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  ///   The ID of the group that is associated as a vendor. UUID Version 4.
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<GroupResource> getVendorsId(String vendorId, { String include, }) async {
    final response = await getVendorsIdWithHttpInfo(vendorId,  include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupResource',) as GroupResource;
        }
    return Future<GroupResource>.value();
  }
}
