//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
    (status == null ? 0 : status.hashCode);

  @override
  String toString() => 'ApiFail422[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
    return json;
  }

  /// Returns a new [ApiFail422] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApiFail422 fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ApiFail422(
        status: json[r'status'],
    );

  static List<ApiFail422> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ApiFail422>[]
      : json.map((dynamic value) => ApiFail422.fromJson(value)).toList(growable: true == growable);

  static Map<String, ApiFail422> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ApiFail422>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ApiFail422.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiFail422-objects as value to a dart map
  static Map<String, List<ApiFail422>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ApiFail422>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ApiFail422.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

