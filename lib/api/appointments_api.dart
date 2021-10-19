//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AppointmentsApi {
  AppointmentsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List all appointments.
  ///
  /// List all appointments. By default, returns a list of appointments that have been scheduled and have not been canceled
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  ///
  /// * [String] filterLeftSquareBracketTenseRightSquareBracket:
  ///   Return appointments that are upcoming or in the past.
  ///
  /// * [DateTime] filterLeftSquareBracketStartAtGteRightSquareBracket:
  ///   Return appointments where the start_at field is greater than or equal to this value. Effectively, appointments that start after this date.
  ///
  /// * [DateTime] filterLeftSquareBracketStartAtLteRightSquareBracket:
  ///   Return appointments where the start_at field is less than or equal to this value. Effectively, appointments that start before this date.
  ///
  /// * [List<String>] filterLeftSquareBracketUserIdsRightSquareBracket:
  ///   The IDs of users whose appointments will be retrieved. UUID Version 4.
  ///
  /// * [String] sort:
  ///   Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-start_at`.
  ///
  /// * [String] perPage:
  ///   The number of items per page. Defaults to 25.
  ///
  /// * [String] page:
  ///   The requested page. Defaults to 1.
  Future<Response> getAppointmentsWithHttpInfo({ String include, String filterLeftSquareBracketTenseRightSquareBracket, DateTime filterLeftSquareBracketStartAtGteRightSquareBracket, DateTime filterLeftSquareBracketStartAtLteRightSquareBracket, List<String> filterLeftSquareBracketUserIdsRightSquareBracket, String sort, String perPage, String page }) async {
    // Verify required params are set.

    final path = r'/appointments';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (include != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'include', include));
    }
    if (filterLeftSquareBracketTenseRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[tense]', filterLeftSquareBracketTenseRightSquareBracket));
    }
    if (filterLeftSquareBracketStartAtGteRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[start_at_gte]', filterLeftSquareBracketStartAtGteRightSquareBracket));
    }
    if (filterLeftSquareBracketStartAtLteRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter[start_at_lte]', filterLeftSquareBracketStartAtLteRightSquareBracket));
    }
    if (filterLeftSquareBracketUserIdsRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'filter[user_ids]', filterLeftSquareBracketUserIdsRightSquareBracket));
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

  /// List all appointments.
  ///
  /// List all appointments. By default, returns a list of appointments that have been scheduled and have not been canceled
  ///
  /// Parameters:
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  ///
  /// * [String] filterLeftSquareBracketTenseRightSquareBracket:
  ///   Return appointments that are upcoming or in the past.
  ///
  /// * [DateTime] filterLeftSquareBracketStartAtGteRightSquareBracket:
  ///   Return appointments where the start_at field is greater than or equal to this value. Effectively, appointments that start after this date.
  ///
  /// * [DateTime] filterLeftSquareBracketStartAtLteRightSquareBracket:
  ///   Return appointments where the start_at field is less than or equal to this value. Effectively, appointments that start before this date.
  ///
  /// * [List<String>] filterLeftSquareBracketUserIdsRightSquareBracket:
  ///   The IDs of users whose appointments will be retrieved. UUID Version 4.
  ///
  /// * [String] sort:
  ///   Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-start_at`.
  ///
  /// * [String] perPage:
  ///   The number of items per page. Defaults to 25.
  ///
  /// * [String] page:
  ///   The requested page. Defaults to 1.
  Future<AppointmentCollection> getAppointments({ String include, String filterLeftSquareBracketTenseRightSquareBracket, DateTime filterLeftSquareBracketStartAtGteRightSquareBracket, DateTime filterLeftSquareBracketStartAtLteRightSquareBracket, List<String> filterLeftSquareBracketUserIdsRightSquareBracket, String sort, String perPage, String page }) async {
    final response = await getAppointmentsWithHttpInfo( include: include, filterLeftSquareBracketTenseRightSquareBracket: filterLeftSquareBracketTenseRightSquareBracket, filterLeftSquareBracketStartAtGteRightSquareBracket: filterLeftSquareBracketStartAtGteRightSquareBracket, filterLeftSquareBracketStartAtLteRightSquareBracket: filterLeftSquareBracketStartAtLteRightSquareBracket, filterLeftSquareBracketUserIdsRightSquareBracket: filterLeftSquareBracketUserIdsRightSquareBracket, sort: sort, perPage: perPage, page: page );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppointmentCollection',) as AppointmentCollection;
        }
    return Future<AppointmentCollection>.value(null);
  }

  /// List all unconfirmed appointments.
  ///
  /// List all unconfirmed appointments. These are appointments that have not been scheduled. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  ///
  /// * [List<String>] filterLeftSquareBracketUserIdsRightSquareBracket:
  ///   The IDs of users whose appointments will be retrieved. UUID Version 4.
  ///
  /// * [String] sort:
  ///   Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-start_at`.
  ///
  /// * [String] perPage:
  ///   The number of items per page. Defaults to 25.
  ///
  /// * [String] page:
  ///   The requested page. Defaults to 1.
  Future<Response> getUnconfirmedAppointmentsWithHttpInfo({ String include, List<String> filterLeftSquareBracketUserIdsRightSquareBracket, String sort, String perPage, String page }) async {
    // Verify required params are set.

    final path = r'/unconfirmed-appointments';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (include != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'include', include));
    }
    if (filterLeftSquareBracketUserIdsRightSquareBracket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'filter[user_ids]', filterLeftSquareBracketUserIdsRightSquareBracket));
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

  /// List all unconfirmed appointments.
  ///
  /// List all unconfirmed appointments. These are appointments that have not been scheduled. 
  ///
  /// Parameters:
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  ///
  /// * [List<String>] filterLeftSquareBracketUserIdsRightSquareBracket:
  ///   The IDs of users whose appointments will be retrieved. UUID Version 4.
  ///
  /// * [String] sort:
  ///   Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-start_at`.
  ///
  /// * [String] perPage:
  ///   The number of items per page. Defaults to 25.
  ///
  /// * [String] page:
  ///   The requested page. Defaults to 1.
  Future<UnconfirmedAppointmentCollection> getUnconfirmedAppointments({ String include, List<String> filterLeftSquareBracketUserIdsRightSquareBracket, String sort, String perPage, String page }) async {
    final response = await getUnconfirmedAppointmentsWithHttpInfo( include: include, filterLeftSquareBracketUserIdsRightSquareBracket: filterLeftSquareBracketUserIdsRightSquareBracket, sort: sort, perPage: perPage, page: page );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnconfirmedAppointmentCollection',) as UnconfirmedAppointmentCollection;
        }
    return Future<UnconfirmedAppointmentCollection>.value(null);
  }

  /// Retrieve an unconfirmed appointment.
  ///
  /// Retrieves the details of an unconfirmed appointment with the given ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] unconfirmedAppointmentId (required):
  ///   The ID of an appointment.
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<Response> getUnconfirmedAppointmentsIdWithHttpInfo(String unconfirmedAppointmentId, { String include }) async {
    // Verify required params are set.
    if (unconfirmedAppointmentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: unconfirmedAppointmentId');
    }

    final path = r'/unconfirmed-appointments/{unconfirmed_appointment_id}'
      .replaceAll('{' + 'unconfirmed_appointment_id' + '}', unconfirmedAppointmentId.toString());

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

  /// Retrieve an unconfirmed appointment.
  ///
  /// Retrieves the details of an unconfirmed appointment with the given ID.
  ///
  /// Parameters:
  ///
  /// * [String] unconfirmedAppointmentId (required):
  ///   The ID of an appointment.
  ///
  /// * [String] include:
  ///   Comma separated list of optional data to include in the response.
  Future<UnconfirmedAppointmentResource> getUnconfirmedAppointmentsId(String unconfirmedAppointmentId, { String include }) async {
    final response = await getUnconfirmedAppointmentsIdWithHttpInfo(unconfirmedAppointmentId,  include: include );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnconfirmedAppointmentResource',) as UnconfirmedAppointmentResource;
        }
    return Future<UnconfirmedAppointmentResource>.value(null);
  }

  /// Cancel an appointment.
  ///
  /// Cancel an appointment. The appointments order's customer can be optionally notified of this change. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appointmentId (required):
  ///   The ID of an appointment.
  ///
  /// * [AppointmentCancelPutPayload] appointmentCancelPutPayload:
  Future<Response> putAppointmentsAppointmentIdCancelWithHttpInfo(String appointmentId, { AppointmentCancelPutPayload appointmentCancelPutPayload }) async {
    // Verify required params are set.
    if (appointmentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: appointmentId');
    }

    final path = r'/appointments/{appointment_id}/cancel'
      .replaceAll('{' + 'appointment_id' + '}', appointmentId.toString());

    Object postBody = appointmentCancelPutPayload;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Token'];


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

  /// Cancel an appointment.
  ///
  /// Cancel an appointment. The appointments order's customer can be optionally notified of this change. 
  ///
  /// Parameters:
  ///
  /// * [String] appointmentId (required):
  ///   The ID of an appointment.
  ///
  /// * [AppointmentCancelPutPayload] appointmentCancelPutPayload:
  Future<AppointmentResource> putAppointmentsAppointmentIdCancel(String appointmentId, { AppointmentCancelPutPayload appointmentCancelPutPayload }) async {
    final response = await putAppointmentsAppointmentIdCancelWithHttpInfo(appointmentId,  appointmentCancelPutPayload: appointmentCancelPutPayload );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppointmentResource',) as AppointmentResource;
        }
    return Future<AppointmentResource>.value(null);
  }

  /// Reschedule an appointment.
  ///
  /// Reschedule an appointment. The appointments order's customer can be optionally notified of this change. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appointmentId (required):
  ///   The ID of an appointment.
  ///
  /// * [AppointmentReschedulePutPayload] appointmentReschedulePutPayload:
  Future<Response> putAppointmentsAppointmentIdRescheduleWithHttpInfo(String appointmentId, { AppointmentReschedulePutPayload appointmentReschedulePutPayload }) async {
    // Verify required params are set.
    if (appointmentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: appointmentId');
    }

    final path = r'/appointments/{appointment_id}/reschedule'
      .replaceAll('{' + 'appointment_id' + '}', appointmentId.toString());

    Object postBody = appointmentReschedulePutPayload;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['Token'];


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

  /// Reschedule an appointment.
  ///
  /// Reschedule an appointment. The appointments order's customer can be optionally notified of this change. 
  ///
  /// Parameters:
  ///
  /// * [String] appointmentId (required):
  ///   The ID of an appointment.
  ///
  /// * [AppointmentReschedulePutPayload] appointmentReschedulePutPayload:
  Future<AppointmentResource> putAppointmentsAppointmentIdReschedule(String appointmentId, { AppointmentReschedulePutPayload appointmentReschedulePutPayload }) async {
    final response = await putAppointmentsAppointmentIdRescheduleWithHttpInfo(appointmentId,  appointmentReschedulePutPayload: appointmentReschedulePutPayload );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppointmentResource',) as AppointmentResource;
        }
    return Future<AppointmentResource>.value(null);
  }
}
