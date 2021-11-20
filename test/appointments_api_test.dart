//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:aryeo/api.dart';
import 'package:test/test.dart';


/// tests for AppointmentsApi
void main() {
  final instance = AppointmentsApi();

  group('tests for AppointmentsApi', () {
    // List all appointments.
    //
    // List all appointments. By default, returns a list of appointments that have been scheduled and have not been canceled
    //
    //Future<AppointmentCollection> getAppointments({ String include, String filterLeftSquareBracketTenseRightSquareBracket, DateTime filterLeftSquareBracketStartAtGteRightSquareBracket, DateTime filterLeftSquareBracketStartAtLteRightSquareBracket, List<String> filterLeftSquareBracketUserIdsRightSquareBracket, String sort, String perPage, String page }) async
    test('test getAppointments', () async {
      // TODO
    });

    // Fetch available days for a user or group
    //
    // Fetch available calendar days for scheduling or rescheduling an appointment. Availability can be retrieved using a specific start & end date range, or using a timeframe. When using a timeframe, the page parameter can be used to flip through weeks, months, etc.
    //
    //Future<CalendarDayCollection> getAvailableDates({ List<String> filterLeftSquareBracketUserIdsRightSquareBracket, String filterLeftSquareBracketAppointmentIdRightSquareBracket, DateTime filterLeftSquareBracketStartAtRightSquareBracket, DateTime filterLeftSquareBracketEndAtRightSquareBracket, List<String> filterLeftSquareBracketTimeframeRightSquareBracket, int duration, int interval, String timezone, int page, int perPage }) async
    test('test getAvailableDates', () async {
      // TODO
    });

    // Fetch available timeslots for a user or group
    //
    // Fetch available timeslots for scheduling or rescheduling an appointment. Timeslots can be retrieved using a specific start & end date range, or using a timeframe. When using a timeframe, the page parameter can be used to flip through days or weeks.
    //
    //Future<TimeslotCollection> getAvailableTimeslots({ List<String> filterLeftSquareBracketUserIdsRightSquareBracket, String filterLeftSquareBracketAppointmentIdRightSquareBracket, DateTime filterLeftSquareBracketStartAtRightSquareBracket, DateTime filterLeftSquareBracketEndAtRightSquareBracket, List<String> filterLeftSquareBracketTimeframeRightSquareBracket, int duration, int interval, int page, int perPage }) async
    test('test getAvailableTimeslots', () async {
      // TODO
    });

    // List all unconfirmed appointments.
    //
    // List all unconfirmed appointments. These are appointments that have not been scheduled.
    //
    //Future<UnconfirmedAppointmentCollection> getUnconfirmedAppointments({ String include, List<String> filterLeftSquareBracketUserIdsRightSquareBracket, String sort, String perPage, String page }) async
    test('test getUnconfirmedAppointments', () async {
      // TODO
    });

    // Retrieve an unconfirmed appointment.
    //
    // Retrieves the details of an unconfirmed appointment with the given ID.
    //
    //Future<UnconfirmedAppointmentResource> getUnconfirmedAppointmentsId(String unconfirmedAppointmentId, { String include }) async
    test('test getUnconfirmedAppointmentsId', () async {
      // TODO
    });

    // Cancel an appointment.
    //
    // Cancel an appointment. The appointments order's customer can be optionally notified of this change.
    //
    //Future<AppointmentResource> putAppointmentsAppointmentIdCancel(String appointmentId, { AppointmentCancelPutPayload appointmentCancelPutPayload }) async
    test('test putAppointmentsAppointmentIdCancel', () async {
      // TODO
    });

    // Reschedule an appointment.
    //
    // Reschedule an appointment. The appointments order's customer can be optionally notified of this change.
    //
    //Future<AppointmentResource> putAppointmentsAppointmentIdReschedule(String appointmentId, { AppointmentReschedulePutPayload appointmentReschedulePutPayload }) async
    test('test putAppointmentsAppointmentIdReschedule', () async {
      // TODO
    });

  });
}
