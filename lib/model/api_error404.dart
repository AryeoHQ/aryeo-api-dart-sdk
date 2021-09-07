//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiError404 {
  /// Returns a new [ApiError404] instance.
  ApiError404({
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
  bool operator ==(Object other) => identical(this, other) || other is ApiError404 &&
     other.status == status &&
     other.message == message &&
     other.code == code;

  @override
  int get hashCode =>
    (status == null ? 0 : status.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (code == null ? 0 : code.hashCode);

  @override
  String toString() => 'ApiError404[status=$status, message=$message, code=$code]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
      json[r'message'] = message;
    if (code != null) {
      json[r'code'] = code;
    }
    return json;
  }

  /// Returns a new [ApiError404] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApiError404 fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ApiError404(
        status: json[r'status'],
        message: json[r'message'],
        code: json[r'code'],
    );

  static List<ApiError404> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ApiError404>[]
      : json.map((dynamic value) => ApiError404.fromJson(value)).toList(growable: true == growable);

  static Map<String, ApiError404> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ApiError404>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ApiError404.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiError404-objects as value to a dart map
  static Map<String, List<ApiError404>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ApiError404>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ApiError404.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

