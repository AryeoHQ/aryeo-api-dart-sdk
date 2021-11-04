# aryeo.api.AppointmentsApi

## Load the API package
```dart
import 'package:aryeo/api.dart';
```

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAppointments**](AppointmentsApi.md#getappointments) | **GET** /appointments | List all appointments.
[**getAvailableDates**](AppointmentsApi.md#getavailabledates) | **GET** /scheduling/available-dates | Fetch available days for a user or group
[**getAvailableTimeslots**](AppointmentsApi.md#getavailabletimeslots) | **GET** /scheduling/available-timeslots | Fetch available timeslots for a user or group
[**getUnconfirmedAppointments**](AppointmentsApi.md#getunconfirmedappointments) | **GET** /unconfirmed-appointments | List all unconfirmed appointments.
[**getUnconfirmedAppointmentsId**](AppointmentsApi.md#getunconfirmedappointmentsid) | **GET** /unconfirmed-appointments/{unconfirmed_appointment_id} | Retrieve an unconfirmed appointment.
[**putAppointmentsAppointmentIdCancel**](AppointmentsApi.md#putappointmentsappointmentidcancel) | **PUT** /appointments/{appointment_id}/cancel | Cancel an appointment.
[**putAppointmentsAppointmentIdReschedule**](AppointmentsApi.md#putappointmentsappointmentidreschedule) | **PUT** /appointments/{appointment_id}/reschedule | Reschedule an appointment.


# **getAppointments**
> AppointmentCollection getAppointments(include, filterLeftSquareBracketTenseRightSquareBracket, filterLeftSquareBracketStartAtGteRightSquareBracket, filterLeftSquareBracketStartAtLteRightSquareBracket, filterLeftSquareBracketUserIdsRightSquareBracket, sort, perPage, page)

List all appointments.

List all appointments. By default, returns a list of appointments that have been scheduled and have not been canceled

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppointmentsApi();
final include = order,users; // String | Comma separated list of optional data to include in the response.
final filterLeftSquareBracketTenseRightSquareBracket = UPCOMING; // String | Return appointments that are upcoming or in the past.
final filterLeftSquareBracketStartAtGteRightSquareBracket = 2021-01-01T13:00Z; // DateTime | Return appointments where the start_at field is greater than or equal to this value. Effectively, appointments that start after this date.
final filterLeftSquareBracketStartAtLteRightSquareBracket = 2021-01-02T13:00Z; // DateTime | Return appointments where the start_at field is less than or equal to this value. Effectively, appointments that start before this date.
final filterLeftSquareBracketUserIdsRightSquareBracket = []; // List<String> | The IDs of users whose appointments will be retrieved. UUID Version 4.
final sort = -created_at; // String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-start_at`.
final perPage = 25; // String | The number of items per page. Defaults to 25.
final page = 2; // String | The requested page. Defaults to 1.

try { 
    final result = api_instance.getAppointments(include, filterLeftSquareBracketTenseRightSquareBracket, filterLeftSquareBracketStartAtGteRightSquareBracket, filterLeftSquareBracketStartAtLteRightSquareBracket, filterLeftSquareBracketUserIdsRightSquareBracket, sort, perPage, page);
    print(result);
} catch (e) {
    print('Exception when calling AppointmentsApi->getAppointments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Comma separated list of optional data to include in the response. | [optional] 
 **filterLeftSquareBracketTenseRightSquareBracket** | **String**| Return appointments that are upcoming or in the past. | [optional] 
 **filterLeftSquareBracketStartAtGteRightSquareBracket** | **DateTime**| Return appointments where the start_at field is greater than or equal to this value. Effectively, appointments that start after this date. | [optional] 
 **filterLeftSquareBracketStartAtLteRightSquareBracket** | **DateTime**| Return appointments where the start_at field is less than or equal to this value. Effectively, appointments that start before this date. | [optional] 
 **filterLeftSquareBracketUserIdsRightSquareBracket** | [**List<String>**](String.md)| The IDs of users whose appointments will be retrieved. UUID Version 4. | [optional] [default to const []]
 **sort** | **String**| Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-start_at`. | [optional] 
 **perPage** | **String**| The number of items per page. Defaults to 25. | [optional] 
 **page** | **String**| The requested page. Defaults to 1. | [optional] 

### Return type

[**AppointmentCollection**](AppointmentCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableDates**
> CalendarDayCollection getAvailableDates(filterLeftSquareBracketUserIdsRightSquareBracket, filterLeftSquareBracketAppointmentIdRightSquareBracket, filterLeftSquareBracketStartAtRightSquareBracket, filterLeftSquareBracketEndAtRightSquareBracket, filterLeftSquareBracketTimeframeRightSquareBracket, duration, interval, timezone, page, perPage)

Fetch available days for a user or group

Fetch available calendar days for scheduling or rescheduling an appointment. Availability can be retrieved using a specific start & end date range, or using a timeframe. When using a timeframe, the page parameter can be used to flip through weeks, months, etc.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppointmentsApi();
final filterLeftSquareBracketUserIdsRightSquareBracket = []; // List<String> | The IDs of users whose availability will be retrieved. UUID Version 4.
final filterLeftSquareBracketAppointmentIdRightSquareBracket = 00000000-0000-4000-8000-000000000000; // String | Appointment ID used to fetch availability for an existing order
final filterLeftSquareBracketStartAtRightSquareBracket = 2021-01-01T13:00Z; // DateTime | Returns availability after start_at
final filterLeftSquareBracketEndAtRightSquareBracket = 2021-01-02T13:00Z; // DateTime | Returns availability before end_at
final filterLeftSquareBracketTimeframeRightSquareBracket = [MONTH]; // List<String> | Returns availability for a specific timeframe. Used instead of start_at & end_at
final duration = 60; // int | Duration of the event to schedule. Required if appointment_id isn't specified
final interval = 15; // int | Interval of bookable timeslots starting at x minutes on the hour . Required if appointment_id isn't specified
final timezone = 2; // String | Timezone of the client. Localizes the available days
final page = 1; // int | The requested page of results
final perPage = 5; // int | The number of results per page. Only applies when using a date range

try { 
    final result = api_instance.getAvailableDates(filterLeftSquareBracketUserIdsRightSquareBracket, filterLeftSquareBracketAppointmentIdRightSquareBracket, filterLeftSquareBracketStartAtRightSquareBracket, filterLeftSquareBracketEndAtRightSquareBracket, filterLeftSquareBracketTimeframeRightSquareBracket, duration, interval, timezone, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling AppointmentsApi->getAvailableDates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterLeftSquareBracketUserIdsRightSquareBracket** | [**List<String>**](String.md)| The IDs of users whose availability will be retrieved. UUID Version 4. | [optional] [default to const []]
 **filterLeftSquareBracketAppointmentIdRightSquareBracket** | **String**| Appointment ID used to fetch availability for an existing order | [optional] 
 **filterLeftSquareBracketStartAtRightSquareBracket** | **DateTime**| Returns availability after start_at | [optional] 
 **filterLeftSquareBracketEndAtRightSquareBracket** | **DateTime**| Returns availability before end_at | [optional] 
 **filterLeftSquareBracketTimeframeRightSquareBracket** | [**List<String>**](String.md)| Returns availability for a specific timeframe. Used instead of start_at & end_at | [optional] [default to const []]
 **duration** | **int**| Duration of the event to schedule. Required if appointment_id isn't specified | [optional] 
 **interval** | **int**| Interval of bookable timeslots starting at x minutes on the hour . Required if appointment_id isn't specified | [optional] 
 **timezone** | **String**| Timezone of the client. Localizes the available days | [optional] 
 **page** | **int**| The requested page of results | [optional] 
 **perPage** | **int**| The number of results per page. Only applies when using a date range | [optional] 

### Return type

[**CalendarDayCollection**](CalendarDayCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableTimeslots**
> TimeslotCollection getAvailableTimeslots(filterLeftSquareBracketUserIdsRightSquareBracket, filterLeftSquareBracketAppointmentIdRightSquareBracket, filterLeftSquareBracketStartAtRightSquareBracket, filterLeftSquareBracketEndAtRightSquareBracket, filterLeftSquareBracketTimeframeRightSquareBracket, duration, interval, page, perPage)

Fetch available timeslots for a user or group

Fetch available timeslots for scheduling or rescheduling an appointment. Timeslots can be retrieved using a specific start & end date range, or using a timeframe. When using a timeframe, the page parameter can be used to flip through days or weeks.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppointmentsApi();
final filterLeftSquareBracketUserIdsRightSquareBracket = []; // List<String> | The IDs of users whose appointments will be retrieved. UUID Version 4.
final filterLeftSquareBracketAppointmentIdRightSquareBracket = 00000000-0000-4000-8000-000000000000; // String | Appointment ID used to fetch availability for an existing order
final filterLeftSquareBracketStartAtRightSquareBracket = 2021-01-01T13:00Z; // DateTime | Returns availability after start_at
final filterLeftSquareBracketEndAtRightSquareBracket = 2021-01-02T13:00Z; // DateTime | Returns availability before end_at
final filterLeftSquareBracketTimeframeRightSquareBracket = [MONTH]; // List<String> | Returns availability for a specific timeframe. Used instead of start_at & end_at
final duration = 60; // int | Duration of the event to schedule. Required if appointment_id isn't specified
final interval = 25; // int | Interval of bookable timeslots starting at x minutes on the hour . Required if appointment_id isn't specified
final page = 1; // int | The requested page of results
final perPage = 5; // int | The number of results per page. Only applies when using a date range

try { 
    final result = api_instance.getAvailableTimeslots(filterLeftSquareBracketUserIdsRightSquareBracket, filterLeftSquareBracketAppointmentIdRightSquareBracket, filterLeftSquareBracketStartAtRightSquareBracket, filterLeftSquareBracketEndAtRightSquareBracket, filterLeftSquareBracketTimeframeRightSquareBracket, duration, interval, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling AppointmentsApi->getAvailableTimeslots: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterLeftSquareBracketUserIdsRightSquareBracket** | [**List<String>**](String.md)| The IDs of users whose appointments will be retrieved. UUID Version 4. | [optional] [default to const []]
 **filterLeftSquareBracketAppointmentIdRightSquareBracket** | **String**| Appointment ID used to fetch availability for an existing order | [optional] 
 **filterLeftSquareBracketStartAtRightSquareBracket** | **DateTime**| Returns availability after start_at | [optional] 
 **filterLeftSquareBracketEndAtRightSquareBracket** | **DateTime**| Returns availability before end_at | [optional] 
 **filterLeftSquareBracketTimeframeRightSquareBracket** | [**List<String>**](String.md)| Returns availability for a specific timeframe. Used instead of start_at & end_at | [optional] [default to const []]
 **duration** | **int**| Duration of the event to schedule. Required if appointment_id isn't specified | [optional] 
 **interval** | **int**| Interval of bookable timeslots starting at x minutes on the hour . Required if appointment_id isn't specified | [optional] 
 **page** | **int**| The requested page of results | [optional] 
 **perPage** | **int**| The number of results per page. Only applies when using a date range | [optional] 

### Return type

[**TimeslotCollection**](TimeslotCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUnconfirmedAppointments**
> UnconfirmedAppointmentCollection getUnconfirmedAppointments(include, filterLeftSquareBracketUserIdsRightSquareBracket, sort, perPage, page)

List all unconfirmed appointments.

List all unconfirmed appointments. These are appointments that have not been scheduled. 

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppointmentsApi();
final include = order,users; // String | Comma separated list of optional data to include in the response.
final filterLeftSquareBracketUserIdsRightSquareBracket = []; // List<String> | The IDs of users whose appointments will be retrieved. UUID Version 4.
final sort = -created_at; // String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-start_at`.
final perPage = 25; // String | The number of items per page. Defaults to 25.
final page = 2; // String | The requested page. Defaults to 1.

try { 
    final result = api_instance.getUnconfirmedAppointments(include, filterLeftSquareBracketUserIdsRightSquareBracket, sort, perPage, page);
    print(result);
} catch (e) {
    print('Exception when calling AppointmentsApi->getUnconfirmedAppointments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Comma separated list of optional data to include in the response. | [optional] 
 **filterLeftSquareBracketUserIdsRightSquareBracket** | [**List<String>**](String.md)| The IDs of users whose appointments will be retrieved. UUID Version 4. | [optional] [default to const []]
 **sort** | **String**| Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-start_at`. | [optional] 
 **perPage** | **String**| The number of items per page. Defaults to 25. | [optional] 
 **page** | **String**| The requested page. Defaults to 1. | [optional] 

### Return type

[**UnconfirmedAppointmentCollection**](UnconfirmedAppointmentCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUnconfirmedAppointmentsId**
> UnconfirmedAppointmentResource getUnconfirmedAppointmentsId(unconfirmedAppointmentId, include)

Retrieve an unconfirmed appointment.

Retrieves the details of an unconfirmed appointment with the given ID.

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppointmentsApi();
final unconfirmedAppointmentId = 00000000-0000-0000-0000-000000000000; // String | The ID of an appointment.
final include = order,users; // String | Comma separated list of optional data to include in the response.

try { 
    final result = api_instance.getUnconfirmedAppointmentsId(unconfirmedAppointmentId, include);
    print(result);
} catch (e) {
    print('Exception when calling AppointmentsApi->getUnconfirmedAppointmentsId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unconfirmedAppointmentId** | [**String**](.md)| The ID of an appointment. | 
 **include** | **String**| Comma separated list of optional data to include in the response. | [optional] 

### Return type

[**UnconfirmedAppointmentResource**](UnconfirmedAppointmentResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAppointmentsAppointmentIdCancel**
> AppointmentResource putAppointmentsAppointmentIdCancel(appointmentId, appointmentCancelPutPayload)

Cancel an appointment.

Cancel an appointment. The appointments order's customer can be optionally notified of this change. 

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppointmentsApi();
final appointmentId = 00000000-0000-0000-0000-000000000000; // String | The ID of an appointment.
final appointmentCancelPutPayload = AppointmentCancelPutPayload(); // AppointmentCancelPutPayload | 

try { 
    final result = api_instance.putAppointmentsAppointmentIdCancel(appointmentId, appointmentCancelPutPayload);
    print(result);
} catch (e) {
    print('Exception when calling AppointmentsApi->putAppointmentsAppointmentIdCancel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | [**String**](.md)| The ID of an appointment. | 
 **appointmentCancelPutPayload** | [**AppointmentCancelPutPayload**](AppointmentCancelPutPayload.md)|  | [optional] 

### Return type

[**AppointmentResource**](AppointmentResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAppointmentsAppointmentIdReschedule**
> AppointmentResource putAppointmentsAppointmentIdReschedule(appointmentId, appointmentReschedulePutPayload)

Reschedule an appointment.

Reschedule an appointment. The appointments order's customer can be optionally notified of this change. 

### Example 
```dart
import 'package:aryeo/api.dart';
// TODO Configure HTTP Bearer authorization: Token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppointmentsApi();
final appointmentId = 00000000-0000-0000-0000-000000000000; // String | The ID of an appointment.
final appointmentReschedulePutPayload = AppointmentReschedulePutPayload(); // AppointmentReschedulePutPayload | 

try { 
    final result = api_instance.putAppointmentsAppointmentIdReschedule(appointmentId, appointmentReschedulePutPayload);
    print(result);
} catch (e) {
    print('Exception when calling AppointmentsApi->putAppointmentsAppointmentIdReschedule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | [**String**](.md)| The ID of an appointment. | 
 **appointmentReschedulePutPayload** | [**AppointmentReschedulePutPayload**](AppointmentReschedulePutPayload.md)|  | [optional] 

### Return type

[**AppointmentResource**](AppointmentResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

