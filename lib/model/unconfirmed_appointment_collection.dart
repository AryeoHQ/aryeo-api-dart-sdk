//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnconfirmedAppointmentCollection {
  /// Returns a new [UnconfirmedAppointmentCollection] instance.
  UnconfirmedAppointmentCollection({
    @required this.status,
    this.data,
    this.meta,
    this.links,
  });

  /// What was the state of the request?
  String status;

  /// 
  List<UnconfirmedAppointment> data;

  PaginationMeta meta;

  PaginationLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnconfirmedAppointmentCollection &&
     other.status == status &&
     other.data == data &&
     other.meta == meta &&
     other.links == links;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (status == null ? 0 : status.hashCode) +
    (data == null ? 0 : data.hashCode) +
    (meta == null ? 0 : meta.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'UnconfirmedAppointmentCollection[status=$status, data=$data, meta=$meta, links=$links]';

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

  /// Returns a new [UnconfirmedAppointmentCollection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnconfirmedAppointmentCollection fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UnconfirmedAppointmentCollection(
        status: mapValueOfType<String>(json, r'status'),
        data: UnconfirmedAppointment.listFromJson(json[r'data']),
        meta: PaginationMeta.fromJson(json[r'meta']),
        links: PaginationLinks.fromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<UnconfirmedAppointmentCollection> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UnconfirmedAppointmentCollection.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UnconfirmedAppointmentCollection>[];

  static Map<String, UnconfirmedAppointmentCollection> mapFromJson(dynamic json) {
    final map = <String, UnconfirmedAppointmentCollection>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UnconfirmedAppointmentCollection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UnconfirmedAppointmentCollection-objects as value to a dart map
  static Map<String, List<UnconfirmedAppointmentCollection>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UnconfirmedAppointmentCollection>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UnconfirmedAppointmentCollection.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

