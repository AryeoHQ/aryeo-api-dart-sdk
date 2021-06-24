//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PropertyWebsites {
  /// Returns a new [PropertyWebsites] instance.
  PropertyWebsites({
    @required this.brandedUrl,
    @required this.unbrandedUrl,
    @required this.id,
  });

  /// URL for website.
  String brandedUrl;

  /// URL for website.
  String unbrandedUrl;

  /// ID for property website
  int id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PropertyWebsites &&
     other.brandedUrl == brandedUrl &&
     other.unbrandedUrl == unbrandedUrl &&
     other.id == id;

  @override
  int get hashCode =>
    (brandedUrl == null ? 0 : brandedUrl.hashCode) +
    (unbrandedUrl == null ? 0 : unbrandedUrl.hashCode) +
    (id == null ? 0 : id.hashCode);

  @override
  String toString() => 'PropertyWebsites[brandedUrl=$brandedUrl, unbrandedUrl=$unbrandedUrl, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'branded_url'] = brandedUrl;
      json[r'unbranded_url'] = unbrandedUrl;
      json[r'id'] = id;
    return json;
  }

  /// Returns a new [PropertyWebsites] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PropertyWebsites fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PropertyWebsites(
        brandedUrl: json[r'branded_url'],
        unbrandedUrl: json[r'unbranded_url'],
        id: json[r'id'],
    );

  static List<PropertyWebsites> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PropertyWebsites>[]
      : json.map((dynamic value) => PropertyWebsites.fromJson(value)).toList(growable: true == growable);

  static Map<String, PropertyWebsites> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PropertyWebsites>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = PropertyWebsites.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PropertyWebsites-objects as value to a dart map
  static Map<String, List<PropertyWebsites>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PropertyWebsites>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = PropertyWebsites.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

