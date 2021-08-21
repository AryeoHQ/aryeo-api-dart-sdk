//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AppointmentResource {
  /// Returns a new [AppointmentResource] instance.
  AppointmentResource({
    @required this.status,
    this.data,
  });

  /// What was the state of the request?
  String status;

  Appointment data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppointmentResource &&
     other.status == status &&
     other.data == data;

  @override
  int get hashCode =>
    (status == null ? 0 : status.hashCode) +
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'AppointmentResource[status=$status, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
    if (data != null) {
      json[r'data'] = data;
    }
    return json;
  }

  /// Returns a new [AppointmentResource] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AppointmentResource fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AppointmentResource(
        status: json[r'status'],
        data: Appointment.fromJson(json[r'data']),
    );

  static List<AppointmentResource> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AppointmentResource>[]
      : json.map((dynamic value) => AppointmentResource.fromJson(value)).toList(growable: true == growable);

  static Map<String, AppointmentResource> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AppointmentResource>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = AppointmentResource.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AppointmentResource-objects as value to a dart map
  static Map<String, List<AppointmentResource>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AppointmentResource>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = AppointmentResource.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

