//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnconfirmedAppointmentResource {
  /// Returns a new [UnconfirmedAppointmentResource] instance.
  UnconfirmedAppointmentResource({
    @required this.status,
    this.data,
  });

  /// What was the state of the request?
  String status;

  UnconfirmedAppointment data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnconfirmedAppointmentResource &&
     other.status == status &&
     other.data == data;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (status == null ? 0 : status.hashCode) +
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'UnconfirmedAppointmentResource[status=$status, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
    if (data != null) {
      json[r'data'] = data;
    }
    return json;
  }

  /// Returns a new [UnconfirmedAppointmentResource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnconfirmedAppointmentResource fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UnconfirmedAppointmentResource(
        status: mapValueOfType<String>(json, r'status'),
        data: UnconfirmedAppointment.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<UnconfirmedAppointmentResource> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UnconfirmedAppointmentResource.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UnconfirmedAppointmentResource>[];

  static Map<String, UnconfirmedAppointmentResource> mapFromJson(dynamic json) {
    final map = <String, UnconfirmedAppointmentResource>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UnconfirmedAppointmentResource.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UnconfirmedAppointmentResource-objects as value to a dart map
  static Map<String, List<UnconfirmedAppointmentResource>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UnconfirmedAppointmentResource>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UnconfirmedAppointmentResource.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

