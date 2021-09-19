//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiError403 {
  /// Returns a new [ApiError403] instance.
  ApiError403({
    @required this.status,
    @required this.message,
    this.code,
  });

  /// What was the state of the request?
  String status;

  /// The error message.
  String message;

  /// A numeric code corresponding to the error.
  int code;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiError403 &&
     other.status == status &&
     other.message == message &&
     other.code == code;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (status == null ? 0 : status.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (code == null ? 0 : code.hashCode);

  @override
  String toString() => 'ApiError403[status=$status, message=$message, code=$code]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
      json[r'message'] = message;
    if (code != null) {
      json[r'code'] = code;
    }
    return json;
  }

  /// Returns a new [ApiError403] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiError403 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ApiError403(
        status: mapValueOfType<String>(json, r'status'),
        message: mapValueOfType<String>(json, r'message'),
        code: mapValueOfType<int>(json, r'code'),
      );
    }
    return null;
  }

  static List<ApiError403> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ApiError403.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ApiError403>[];

  static Map<String, ApiError403> mapFromJson(dynamic json) {
    final map = <String, ApiError403>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ApiError403.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiError403-objects as value to a dart map
  static Map<String, List<ApiError403>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ApiError403>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ApiError403.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

