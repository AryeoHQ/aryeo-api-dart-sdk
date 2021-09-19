//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PropertyWebsite {
  /// Returns a new [PropertyWebsite] instance.
  PropertyWebsite({
    @required this.id,
    @required this.brandedUrl,
    @required this.unbrandedUrl,
  });

  /// ID of the website. UUID Version 4.
  String id;

  /// URL for branded version of website.
  String brandedUrl;

  /// URL for unbranded version of website.
  String unbrandedUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PropertyWebsite &&
     other.id == id &&
     other.brandedUrl == brandedUrl &&
     other.unbrandedUrl == unbrandedUrl;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (brandedUrl == null ? 0 : brandedUrl.hashCode) +
    (unbrandedUrl == null ? 0 : unbrandedUrl.hashCode);

  @override
  String toString() => 'PropertyWebsite[id=$id, brandedUrl=$brandedUrl, unbrandedUrl=$unbrandedUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'branded_url'] = brandedUrl;
      json[r'unbranded_url'] = unbrandedUrl;
    return json;
  }

  /// Returns a new [PropertyWebsite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PropertyWebsite fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PropertyWebsite(
        id: mapValueOfType<String>(json, r'id'),
        brandedUrl: mapValueOfType<String>(json, r'branded_url'),
        unbrandedUrl: mapValueOfType<String>(json, r'unbranded_url'),
      );
    }
    return null;
  }

  static List<PropertyWebsite> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PropertyWebsite.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PropertyWebsite>[];

  static Map<String, PropertyWebsite> mapFromJson(dynamic json) {
    final map = <String, PropertyWebsite>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PropertyWebsite.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PropertyWebsite-objects as value to a dart map
  static Map<String, List<PropertyWebsite>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PropertyWebsite>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PropertyWebsite.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

