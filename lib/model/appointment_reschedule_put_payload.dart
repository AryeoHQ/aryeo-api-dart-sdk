//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AppointmentReschedulePutPayload {
  /// Returns a new [AppointmentReschedulePutPayload] instance.
  AppointmentReschedulePutPayload({
    this.startAt,
    this.endAt,
    this.notifyCustomer,
  });

  /// The new date and time (ISO 8601 format) when the appointment is set to start.
  DateTime startAt;

  /// The new date and time (ISO 8601 format) when the appointment is set to end.
  DateTime endAt;

  /// Send a notification to the appointment's order's customer that the appointment was rescheduled.
  bool notifyCustomer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppointmentReschedulePutPayload &&
     other.startAt == startAt &&
     other.endAt == endAt &&
     other.notifyCustomer == notifyCustomer;

  @override
  int get hashCode =>
    (startAt == null ? 0 : startAt.hashCode) +
    (endAt == null ? 0 : endAt.hashCode) +
    (notifyCustomer == null ? 0 : notifyCustomer.hashCode);

  @override
  String toString() => 'AppointmentReschedulePutPayload[startAt=$startAt, endAt=$endAt, notifyCustomer=$notifyCustomer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'start_at'] = startAt == null ? null : startAt.toUtc().toIso8601String();
      json[r'end_at'] = endAt == null ? null : endAt.toUtc().toIso8601String();
    if (notifyCustomer != null) {
      json[r'notify_customer'] = notifyCustomer;
    }
    return json;
  }

  /// Returns a new [AppointmentReschedulePutPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AppointmentReschedulePutPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AppointmentReschedulePutPayload(
        startAt: json[r'start_at'] == null
          ? null
          : DateTime.parse(json[r'start_at']),
        endAt: json[r'end_at'] == null
          ? null
          : DateTime.parse(json[r'end_at']),
        notifyCustomer: json[r'notify_customer'],
    );

  static List<AppointmentReschedulePutPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AppointmentReschedulePutPayload>[]
      : json.map((dynamic value) => AppointmentReschedulePutPayload.fromJson(value)).toList(growable: true == growable);

  static Map<String, AppointmentReschedulePutPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AppointmentReschedulePutPayload>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = AppointmentReschedulePutPayload.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AppointmentReschedulePutPayload-objects as value to a dart map
  static Map<String, List<AppointmentReschedulePutPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AppointmentReschedulePutPayload>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = AppointmentReschedulePutPayload.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

