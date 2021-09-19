//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AppointmentReschedulePutPayload fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AppointmentReschedulePutPayload(
        startAt: mapDateTime(json, r'start_at', ''),
        endAt: mapDateTime(json, r'end_at', ''),
        notifyCustomer: mapValueOfType<bool>(json, r'notify_customer'),
      );
    }
    return null;
  }

  static List<AppointmentReschedulePutPayload> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AppointmentReschedulePutPayload.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AppointmentReschedulePutPayload>[];

  static Map<String, AppointmentReschedulePutPayload> mapFromJson(dynamic json) {
    final map = <String, AppointmentReschedulePutPayload>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AppointmentReschedulePutPayload.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AppointmentReschedulePutPayload-objects as value to a dart map
  static Map<String, List<AppointmentReschedulePutPayload>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AppointmentReschedulePutPayload>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AppointmentReschedulePutPayload.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

