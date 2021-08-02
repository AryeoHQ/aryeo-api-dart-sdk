//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  /// [json] if it's non-null, null if [json] is null.
  static ListingBuilding fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListingBuilding(
        bedrooms: json[r'bedrooms'],
        bathrooms: json[r'bathrooms'] == null ?
          null :
          json[r'bathrooms'].toDouble(),
        squareFeet: json[r'square_feet'] == null ?
          null :
          json[r'square_feet'].toDouble(),
        yearBuilt: json[r'year_built'],
    );

  static List<ListingBuilding> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListingBuilding>[]
      : json.map((dynamic value) => ListingBuilding.fromJson(value)).toList(growable: true == growable);

  static Map<String, ListingBuilding> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListingBuilding>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ListingBuilding.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListingBuilding-objects as value to a dart map
  static Map<String, List<ListingBuilding>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListingBuilding>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ListingBuilding.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

