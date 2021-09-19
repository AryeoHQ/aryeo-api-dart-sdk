//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiFail422 {
  /// Returns a new [ApiFail422] instance.
  ApiFail422({
    @required this.status,
  });

  /// What was the state of the request?
  String status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiFail422 &&
     other.status == status;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (status == null ? 0 : status.hashCode);

  @override
  String toString() => 'ApiFail422[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
    return json;
  }

  /// Returns a new [ApiFail422] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiFail422 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ApiFail422(
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ApiFail422> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ApiFail422.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ApiFail422>[];

  static Map<String, ApiFail422> mapFromJson(dynamic json) {
    final map = <String, ApiFail422>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ApiFail422.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiFail422-objects as value to a dart map
  static Map<String, List<ApiFail422>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ApiFail422>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ApiFail422.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

