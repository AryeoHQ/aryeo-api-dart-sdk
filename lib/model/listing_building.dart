//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListingBuilding {
  /// Returns a new [ListingBuilding] instance.
  ListingBuilding({
    this.bedrooms,
    this.bathrooms,
    this.squareFeet,
    this.yearBuilt,
  });

  /// Total number of bedrooms.
  int bedrooms;

  /// Sum of the number of bathrooms. Represented as a number in order to support half-baths.
  num bathrooms;

  /// Total number of square feet.
  num squareFeet;

  /// Year the property was built.
  int yearBuilt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListingBuilding &&
     other.bedrooms == bedrooms &&
     other.bathrooms == bathrooms &&
     other.squareFeet == squareFeet &&
     other.yearBuilt == yearBuilt;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (bedrooms == null ? 0 : bedrooms.hashCode) +
    (bathrooms == null ? 0 : bathrooms.hashCode) +
    (squareFeet == null ? 0 : squareFeet.hashCode) +
    (yearBuilt == null ? 0 : yearBuilt.hashCode);

  @override
  String toString() => 'ListingBuilding[bedrooms=$bedrooms, bathrooms=$bathrooms, squareFeet=$squareFeet, yearBuilt=$yearBuilt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (bedrooms != null) {
      json[r'bedrooms'] = bedrooms;
    }
    if (bathrooms != null) {
      json[r'bathrooms'] = bathrooms;
    }
    if (squareFeet != null) {
      json[r'square_feet'] = squareFeet;
    }
    if (yearBuilt != null) {
      json[r'year_built'] = yearBuilt;
    }
    return json;
  }

  /// Returns a new [ListingBuilding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListingBuilding fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListingBuilding(
        bedrooms: mapValueOfType<int>(json, r'bedrooms'),
        bathrooms: json[r'bathrooms'] == null
          ? null
          : num.parse(json[r'bathrooms'].toString()),
        squareFeet: json[r'square_feet'] == null
          ? null
          : num.parse(json[r'square_feet'].toString()),
        yearBuilt: mapValueOfType<int>(json, r'year_built'),
      );
    }
    return null;
  }

  static List<ListingBuilding> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListingBuilding.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListingBuilding>[];

  static Map<String, ListingBuilding> mapFromJson(dynamic json) {
    final map = <String, ListingBuilding>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListingBuilding.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListingBuilding-objects as value to a dart map
  static Map<String, List<ListingBuilding>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListingBuilding>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListingBuilding.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

