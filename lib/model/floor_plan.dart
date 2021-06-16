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
    @required this.thumbnailUrl,
    @required this.largeUrl,
    @required this.originalUrl,
    this.title,
    this.index,
  });

  /// ID of the floor plan.
  int id;

  /// A URL for a thumbnail-sized version of the floor plan.
  String thumbnailUrl;

  /// A URL for a large version of the floor plan.
  String largeUrl;

  /// A URL for the original, full-resolution version of the floor plan. Useful for downloading.
  String originalUrl;

  /// The title (or caption) of the floor plan.
  String title;

  /// Index order position of the floor plan.
  // minimum: 0
  int index;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FloorPlan &&
     other.id == id &&
     other.thumbnailUrl == thumbnailUrl &&
     other.largeUrl == largeUrl &&
     other.originalUrl == originalUrl &&
     other.title == title &&
     other.index == index;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (thumbnailUrl == null ? 0 : thumbnailUrl.hashCode) +
    (largeUrl == null ? 0 : largeUrl.hashCode) +
    (originalUrl == null ? 0 : originalUrl.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (index == null ? 0 : index.hashCode);

  @override
  String toString() => 'FloorPlan[id=$id, thumbnailUrl=$thumbnailUrl, largeUrl=$largeUrl, originalUrl=$originalUrl, title=$title, index=$index]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'thumbnail_url'] = thumbnailUrl;
      json[r'large_url'] = largeUrl;
      json[r'original_url'] = originalUrl;
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
        thumbnailUrl: json[r'thumbnail_url'],
        largeUrl: json[r'large_url'],
        originalUrl: json[r'original_url'],
        title: json[r'title'],
        index: json[r'index'],
    );

  static List<FloorPlan> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FloorPlan>[]
      : json.map((v) => FloorPlan.fromJson(v)).toList(growable: true == growable);

  static Map<String, FloorPlan> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FloorPlan>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FloorPlan.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FloorPlan-objects as value to a dart map
  static Map<String, List<FloorPlan>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FloorPlan>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FloorPlan.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

