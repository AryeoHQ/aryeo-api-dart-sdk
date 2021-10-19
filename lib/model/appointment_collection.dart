//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AppointmentCollection {
  /// Returns a new [AppointmentCollection] instance.
  AppointmentCollection({
    @required this.status,
    this.data,
    this.meta,
    this.links,
  });

  /// What was the state of the request?
  String status;

  /// 
  List<Appointment> data;

  PaginationMeta meta;

  PaginationLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppointmentCollection &&
     other.status == status &&
     other.data == data &&
     other.meta == meta &&
     other.links == links;

  @override
  int get hashCode =>
    (status == null ? 0 : status.hashCode) +
    (data == null ? 0 : data.hashCode) +
    (meta == null ? 0 : meta.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'AppointmentCollection[status=$status, data=$data, meta=$meta, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
    if (data != null) {
      json[r'data'] = data;
    }
    if (meta != null) {
      json[r'meta'] = meta;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  /// Returns a new [AppointmentCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AppointmentCollection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AppointmentCollection(
        status: json[r'status'],
        data: Appointment.listFromJson(json[r'data']),
        meta: PaginationMeta.fromJson(json[r'meta']),
        links: PaginationLinks.fromJson(json[r'links']),
    );

  static List<AppointmentCollection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AppointmentCollection>[]
      : json.map((dynamic value) => AppointmentCollection.fromJson(value)).toList(growable: true == growable);

  static Map<String, AppointmentCollection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AppointmentCollection>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = AppointmentCollection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AppointmentCollection-objects as value to a dart map
  static Map<String, List<AppointmentCollection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AppointmentCollection>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = AppointmentCollection.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

