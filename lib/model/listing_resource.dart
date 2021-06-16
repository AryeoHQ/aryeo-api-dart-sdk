//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListingResource {
  /// Returns a new [ListingResource] instance.
  ListingResource({
    this.data,
  });

  Listing data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListingResource &&
     other.data == data;

  @override
  int get hashCode =>
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'ListingResource[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (data != null) {
      json[r'data'] = data;
    }
    return json;
  }

  /// Returns a new [ListingResource] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListingResource fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListingResource(
        data: Listing.fromJson(json[r'data']),
    );

  static List<ListingResource> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListingResource>[]
      : json.map((v) => ListingResource.fromJson(v)).toList(growable: true == growable);

  static Map<String, ListingResource> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListingResource>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ListingResource.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ListingResource-objects as value to a dart map
  static Map<String, List<ListingResource>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListingResource>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ListingResource.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

