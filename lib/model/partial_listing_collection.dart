//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PartialListingCollection {
  /// Returns a new [PartialListingCollection] instance.
  PartialListingCollection({
    this.data = const [],
    this.meta,
    this.links,
  });

  List<PartialListing> data;

  PaginationMeta meta;

  PaginationLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PartialListingCollection &&
     other.data == data &&
     other.meta == meta &&
     other.links == links;

  @override
  int get hashCode =>
    (data == null ? 0 : data.hashCode) +
    (meta == null ? 0 : meta.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'PartialListingCollection[data=$data, meta=$meta, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [PartialListingCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PartialListingCollection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PartialListingCollection(
        data: PartialListing.listFromJson(json[r'data']),
        meta: PaginationMeta.fromJson(json[r'meta']),
        links: PaginationLinks.fromJson(json[r'links']),
    );

  static List<PartialListingCollection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PartialListingCollection>[]
      : json.map((v) => PartialListingCollection.fromJson(v)).toList(growable: true == growable);

  static Map<String, PartialListingCollection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PartialListingCollection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PartialListingCollection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PartialListingCollection-objects as value to a dart map
  static Map<String, List<PartialListingCollection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PartialListingCollection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PartialListingCollection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

