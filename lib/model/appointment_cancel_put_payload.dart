//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AppointmentCancelPutPayload {
  /// Returns a new [AppointmentCancelPutPayload] instance.
  AppointmentCancelPutPayload({
    this.notifyCustomer,
  });

  /// Sends a notification to the appointment's order's customer that the appointment was canceled.
  bool notifyCustomer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppointmentCancelPutPayload &&
     other.notifyCustomer == notifyCustomer;

  @override
  int get hashCode =>
    (notifyCustomer == null ? 0 : notifyCustomer.hashCode);

  @override
  String toString() => 'AppointmentCancelPutPayload[notifyCustomer=$notifyCustomer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (notifyCustomer != null) {
      json[r'notify_customer'] = notifyCustomer;
    }
    return json;
  }

  /// Returns a new [AppointmentCancelPutPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AppointmentCancelPutPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AppointmentCancelPutPayload(
        notifyCustomer: json[r'notify_customer'],
    );

  static List<AppointmentCancelPutPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AppointmentCancelPutPayload>[]
      : json.map((dynamic value) => AppointmentCancelPutPayload.fromJson(value)).toList(growable: true == growable);

  static Map<String, AppointmentCancelPutPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AppointmentCancelPutPayload>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = AppointmentCancelPutPayload.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AppointmentCancelPutPayload-objects as value to a dart map
  static Map<String, List<AppointmentCancelPutPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AppointmentCancelPutPayload>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = AppointmentCancelPutPayload.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

