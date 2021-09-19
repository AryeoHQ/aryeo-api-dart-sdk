//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupResource {
  /// Returns a new [GroupResource] instance.
  GroupResource({
    @required this.status,
    this.data,
  });

  /// What was the state of the request?
  String status;

  Group data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupResource &&
     other.status == status &&
     other.data == data;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (status == null ? 0 : status.hashCode) +
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'GroupResource[status=$status, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
    if (data != null) {
      json[r'data'] = data;
    }
    return json;
  }

  /// Returns a new [GroupResource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupResource fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GroupResource(
        status: mapValueOfType<String>(json, r'status'),
        data: Group.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<GroupResource> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GroupResource.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GroupResource>[];

  static Map<String, GroupResource> mapFromJson(dynamic json) {
    final map = <String, GroupResource>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GroupResource.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GroupResource-objects as value to a dart map
  static Map<String, List<GroupResource>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GroupResource>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GroupResource.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

