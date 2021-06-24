//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupCollection {
  /// Returns a new [GroupCollection] instance.
  GroupCollection({
    this.data = const [],
    this.meta,
    this.links,
  });

  List<Group> data;

  PaginationMeta meta;

  PaginationLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupCollection &&
     other.data == data &&
     other.meta == meta &&
     other.links == links;

  @override
  int get hashCode =>
    (data == null ? 0 : data.hashCode) +
    (meta == null ? 0 : meta.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'GroupCollection[data=$data, meta=$meta, links=$links]';

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

  /// Returns a new [GroupCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GroupCollection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GroupCollection(
        data: Group.listFromJson(json[r'data']),
        meta: PaginationMeta.fromJson(json[r'meta']),
        links: PaginationLinks.fromJson(json[r'links']),
    );

  static List<GroupCollection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GroupCollection>[]
      : json.map((dynamic value) => GroupCollection.fromJson(value)).toList(growable: true == growable);

  static Map<String, GroupCollection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GroupCollection>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GroupCollection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GroupCollection-objects as value to a dart map
  static Map<String, List<GroupCollection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GroupCollection>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GroupCollection.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

