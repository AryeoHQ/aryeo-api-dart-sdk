//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FloorPlan {
  /// Returns a new [FloorPlan] instance.
  FloorPlan({
    @required this.id,
    @required this.originalUrl,
    @required this.largeUrl,
    @required this.thumbnailUrl,
    this.title,
    this.index,
  });

  /// ID of the floor plan. UUID Version 4.
  String id;

  /// A URL for the original, full-resolution version of the floor plan. Useful for downloading.
  String originalUrl;

  /// A URL for a large version of the floor plan.
  String largeUrl;

  /// A URL for a thumbnail-sized version of the floor plan.
  String thumbnailUrl;

  /// The title (or caption) of the floor plan.
  String title;

  /// Index order position of the floor plan.
  // minimum: 0
  int index;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FloorPlan &&
     other.id == id &&
     other.originalUrl == originalUrl &&
     other.largeUrl == largeUrl &&
     other.thumbnailUrl == thumbnailUrl &&
     other.title == title &&
     other.index == index;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (originalUrl == null ? 0 : originalUrl.hashCode) +
    (largeUrl == null ? 0 : largeUrl.hashCode) +
    (thumbnailUrl == null ? 0 : thumbnailUrl.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (index == null ? 0 : index.hashCode);

  @override
  String toString() => 'FloorPlan[id=$id, originalUrl=$originalUrl, largeUrl=$largeUrl, thumbnailUrl=$thumbnailUrl, title=$title, index=$index]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'original_url'] = originalUrl;
      json[r'large_url'] = largeUrl;
      json[r'thumbnail_url'] = thumbnailUrl;
    if (title != null) {
      json[r'title'] = title;
    }
    if (index != null) {
      json[r'index'] = index;
    }
    return json;
  }

  /// Returns a new [FloorPlan] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FloorPlan fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FloorPlan(
        id: json[r'id'],
        originalUrl: json[r'original_url'],
        largeUrl: json[r'large_url'],
        thumbnailUrl: json[r'thumbnail_url'],
        title: json[r'title'],
        index: json[r'index'],
    );

  static List<FloorPlan> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FloorPlan>[]
      : json.map((dynamic value) => FloorPlan.fromJson(value)).toList(growable: true == growable);

  static Map<String, FloorPlan> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FloorPlan>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = FloorPlan.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FloorPlan-objects as value to a dart map
  static Map<String, List<FloorPlan>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FloorPlan>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = FloorPlan.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

