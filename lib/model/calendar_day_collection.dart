//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CalendarDayCollection {
  /// Returns a new [CalendarDayCollection] instance.
  CalendarDayCollection({
    @required this.status,
    this.data,
    this.meta,
    this.links,
  });

  /// What was the state of the request?
  String status;

  /// 
  List<CalendarDay> data;

  PaginationMeta meta;

  PaginationLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarDayCollection &&
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
  String toString() => 'CalendarDayCollection[status=$status, data=$data, meta=$meta, links=$links]';

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

  /// Returns a new [CalendarDayCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CalendarDayCollection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CalendarDayCollection(
        status: json[r'status'],
        data: CalendarDay.listFromJson(json[r'data']),
        meta: PaginationMeta.fromJson(json[r'meta']),
        links: PaginationLinks.fromJson(json[r'links']),
    );

  static List<CalendarDayCollection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CalendarDayCollection>[]
      : json.map((dynamic value) => CalendarDayCollection.fromJson(value)).toList(growable: true == growable);

  static Map<String, CalendarDayCollection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CalendarDayCollection>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = CalendarDayCollection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CalendarDayCollection-objects as value to a dart map
  static Map<String, List<CalendarDayCollection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CalendarDayCollection>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = CalendarDayCollection.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

