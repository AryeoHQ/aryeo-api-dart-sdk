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
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  ///
  /// * [String] filterLeftSquareBracketSearchRightSquareBracket:
  ///   Return listings that have fields matching this term.
  ///
  /// * [String] filterLeftSquareBracketAddressRightSquareBracket:
  ///   Return listings that have an address matching this term.
  ///
  /// * [String] filterLeftSquareBracketListAgentRightSquareBracket:
  ///   Return listings that have a listing agent or co-listing agent matching this term.
  ///
  /// * [String] filterLeftSquareBracketStatusRightSquareBracket:
  ///   Return listings that have a certain status.
  ///
  /// * [bool] filterLeftSquareBracketActiveRightSquareBracket:
  ///   Set as true to return listings that have an active status (e.g. active statuses include `COMING_SOON`, `FOR_SALE`, `FOR_LEASE`, `PENDING_SALE`, `PENDING_LEASE`, `SOLD`, `LEASED`). 
  ///
  /// * [num] filterLeftSquareBracketPriceGteRightSquareBracket:
  ///   Return listings where the price field is greater than or equal to this value.
  ///
  /// * [num] filterLeftSquareBracketPriceLteRightSquareBracket:
  ///   Return listings where the price field is less than or equal to this value.
  ///
  /// * [num] filterLeftSquareBracketSquareFeetGteRightSquareBracket:
  ///   Return listings where the square feet field is greater than or equal to this value.
  ///
  /// * [num] filterLeftSquareBracketSquareFeetLteRightSquareBracket:
  ///   Return listings where the square feet field is less than or equal to this value.
  ///
  /// * [int] filterLeftSquareBracketBedroomsGteRightSquareBracket:
  ///   Return listings where the bedrooms field is greater than or equal to this value.
  ///
  /// * [int] filterLeftSquareBracketBedroomsLteRightSquareBracket:
  ///   Return listings where the bedrooms field is less than or equal to this value.
  ///
  /// * [num] filterLeftSquareBracketBathroomsGteRightSquareBracket:
  ///   Return listings where the bathrooms field is greater than or equal to this value.
  ///
  /// * [num] filterLeftSquareBracketBathroomsLteRightSquareBracket:
  ///   Return listings where the bathrooms field is less than or equal to this value.
  ///
  /// * [String] sort:
  ///   Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-created_at`.
  ///
  /// * [String] perPage:
  ///   The number of items per page. Defaults to 25.
  ///
  /// * [String] page:
  ///   The requested page. Defaults to 1.
  Future<Response> getListingsWithHttpInfo({ String include, String filterLeftSquareBracketSearchRightSquareBracket, String filterLeftSquareBracketAddressRightSquareBracket, String filterLeftSquareBracketListAgentRightSquareBracket, String filterLeftSquareBracketStatusRightSquareBracket, bool filterLeftSquareBracketActiveRightSquareBracket, num filterLeftSquareBracketPriceGteRightSquareBracket, num filterLeftSquareBracketPriceLteRightSquareBracket, num filterLeftSquareBracketSquareFeetGteRightSquareBracket, num filterLeftSquareBracketSquareFeetLteRightSquareBracket, int filterLeftSquareBracketBedroomsGteRightSquareBracket, int filterLeftSquareBracketBedroomsLteRightSquareBracket, num filterLeftSquareBracketBathroomsGteRightSquareBracket, num filterLeftSquareBracketBathroomsLteRightSquareBracket, String sort, String perPage, String page }) async {
    // Verify required params are set.

    final path = r'/listings';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (include != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'include', include));
    }
    if (filterLeftSquareBracketSearchRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[search]', filterLeftSquareBracketSearchRightSquareBracket));
    }
    if (filterLeftSquareBracketAddressRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[address]', filterLeftSquareBracketAddressRightSquareBracket));
    }
    if (filterLeftSquareBracketListAgentRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[list_agent]', filterLeftSquareBracketListAgentRightSquareBracket));
    }
    if (filterLeftSquareBracketStatusRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[status]', filterLeftSquareBracketStatusRightSquareBracket));
    }
    if (filterLeftSquareBracketActiveRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[active]', filterLeftSquareBracketActiveRightSquareBracket));
    }
    if (filterLeftSquareBracketPriceGteRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[price_gte]', filterLeftSquareBracketPriceGteRightSquareBracket));
    }
    if (filterLeftSquareBracketPriceLteRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[price_lte]', filterLeftSquareBracketPriceLteRightSquareBracket));
    }
    if (filterLeftSquareBracketSquareFeetGteRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[square_feet_gte]', filterLeftSquareBracketSquareFeetGteRightSquareBracket));
    }
    if (filterLeftSquareBracketSquareFeetLteRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[square_feet_lte]', filterLeftSquareBracketSquareFeetLteRightSquareBracket));
    }
    if (filterLeftSquareBracketBedroomsGteRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[bedrooms_gte]', filterLeftSquareBracketBedroomsGteRightSquareBracket));
    }
    if (filterLeftSquareBracketBedroomsLteRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[bedrooms_lte]', filterLeftSquareBracketBedroomsLteRightSquareBracket));
    }
    if (filterLeftSquareBracketBathroomsGteRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[bathrooms_gte]', filterLeftSquareBracketBathroomsGteRightSquareBracket));
    }
    if (filterLeftSquareBracketBathroomsLteRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[bathrooms_lte]', filterLeftSquareBracketBathroomsLteRightSquareBracket));
    }
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

  /// Get the listings available to a group.
  ///
  /// Get the listings available to a group.
  ///
  /// Parameters:
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  ///
  /// * [String] filterLeftSquareBracketSearchRightSquareBracket:
  ///   Return listings that have fields matching this term.
  ///
  /// * [String] filterLeftSquareBracketAddressRightSquareBracket:
  ///   Return listings that have an address matching this term.
  ///
  /// * [String] filterLeftSquareBracketListAgentRightSquareBracket:
  ///   Return listings that have a listing agent or co-listing agent matching this term.
  ///
  /// * [String] filterLeftSquareBracketStatusRightSquareBracket:
  ///   Return listings that have a certain status.
  ///
  /// * [bool] filterLeftSquareBracketActiveRightSquareBracket:
  ///   Set as true to return listings that have an active status (e.g. active statuses include `COMING_SOON`, `FOR_SALE`, `FOR_LEASE`, `PENDING_SALE`, `PENDING_LEASE`, `SOLD`, `LEASED`). 
  ///
  /// * [num] filterLeftSquareBracketPriceGteRightSquareBracket:
  ///   Return listings where the price field is greater than or equal to this value.
  ///
  /// * [num] filterLeftSquareBracketPriceLteRightSquareBracket:
  ///   Return listings where the price field is less than or equal to this value.
  ///
  /// * [num] filterLeftSquareBracketSquareFeetGteRightSquareBracket:
  ///   Return listings where the square feet field is greater than or equal to this value.
  ///
  /// * [num] filterLeftSquareBracketSquareFeetLteRightSquareBracket:
  ///   Return listings where the square feet field is less than or equal to this value.
  ///
  /// * [int] filterLeftSquareBracketBedroomsGteRightSquareBracket:
  ///   Return listings where the bedrooms field is greater than or equal to this value.
  ///
  /// * [int] filterLeftSquareBracketBedroomsLteRightSquareBracket:
  ///   Return listings where the bedrooms field is less than or equal to this value.
  ///
  /// * [num] filterLeftSquareBracketBathroomsGteRightSquareBracket:
  ///   Return listings where the bathrooms field is greater than or equal to this value.
  ///
  /// * [num] filterLeftSquareBracketBathroomsLteRightSquareBracket:
  ///   Return listings where the bathrooms field is less than or equal to this value.
  ///
  /// * [String] sort:
  ///   Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-created_at`.
  ///
  /// * [String] perPage:
  ///   The number of items per page. Defaults to 25.
  ///
  /// * [String] page:
  ///   The requested page. Defaults to 1.
  Future<ListingCollection> getListings({ String include, String filterLeftSquareBracketSearchRightSquareBracket, String filterLeftSquareBracketAddressRightSquareBracket, String filterLeftSquareBracketListAgentRightSquareBracket, String filterLeftSquareBracketStatusRightSquareBracket, bool filterLeftSquareBracketActiveRightSquareBracket, num filterLeftSquareBracketPriceGteRightSquareBracket, num filterLeftSquareBracketPriceLteRightSquareBracket, num filterLeftSquareBracketSquareFeetGteRightSquareBracket, num filterLeftSquareBracketSquareFeetLteRightSquareBracket, int filterLeftSquareBracketBedroomsGteRightSquareBracket, int filterLeftSquareBracketBedroomsLteRightSquareBracket, num filterLeftSquareBracketBathroomsGteRightSquareBracket, num filterLeftSquareBracketBathroomsLteRightSquareBracket, String sort, String perPage, String page }) async {
    final response = await getListingsWithHttpInfo( include: include, filterLeftSquareBracketSearchRightSquareBracket: filterLeftSquareBracketSearchRightSquareBracket, filterLeftSquareBracketAddressRightSquareBracket: filterLeftSquareBracketAddressRightSquareBracket, filterLeftSquareBracketListAgentRightSquareBracket: filterLeftSquareBracketListAgentRightSquareBracket, filterLeftSquareBracketStatusRightSquareBracket: filterLeftSquareBracketStatusRightSquareBracket, filterLeftSquareBracketActiveRightSquareBracket: filterLeftSquareBracketActiveRightSquareBracket, filterLeftSquareBracketPriceGteRightSquareBracket: filterLeftSquareBracketPriceGteRightSquareBracket, filterLeftSquareBracketPriceLteRightSquareBracket: filterLeftSquareBracketPriceLteRightSquareBracket, filterLeftSquareBracketSquareFeetGteRightSquareBracket: filterLeftSquareBracketSquareFeetGteRightSquareBracket, filterLeftSquareBracketSquareFeetLteRightSquareBracket: filterLeftSquareBracketSquareFeetLteRightSquareBracket, filterLeftSquareBracketBedroomsGteRightSquareBracket: filterLeftSquareBracketBedroomsGteRightSquareBracket, filterLeftSquareBracketBedroomsLteRightSquareBracket: filterLeftSquareBracketBedroomsLteRightSquareBracket, filterLeftSquareBracketBathroomsGteRightSquareBracket: filterLeftSquareBracketBathroomsGteRightSquareBracket, filterLeftSquareBracketBathroomsLteRightSquareBracket: filterLeftSquareBracketBathroomsLteRightSquareBracket, sort: sort, perPage: perPage, page: page );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListingCollection',) as ListingCollection;
        }
    return Future<ListingCollection>.value(null);
  }

  /// Get information about a listing.
  ///
  /// Get information about a listing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listingId (required):
  ///   The ID of a listing. UUID Version 4.
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<Response> getListingsIdWithHttpInfo(String listingId, { String include }) async {
    // Verify required params are set.
    if (listingId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: listingId');
    }

    final path = r'/listings/{listing_id}'
      .replaceAll('{' + 'listing_id' + '}', listingId.toString());

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

  /// Get information about a listing.
  ///
  /// Get information about a listing.
  ///
  /// Parameters:
  ///
  /// * [String] listingId (required):
  ///   The ID of a listing. UUID Version 4.
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<ListingResource> getListingsId(String listingId, { String include }) async {
    final response = await getListingsIdWithHttpInfo(listingId,  include: include );
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
