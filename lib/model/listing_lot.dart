//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListingLot {
  /// Returns a new [ListingLot] instance.
  ListingLot({
    this.sizeAcres,
    this.openParkingSpaces,
  });

  /// Total area of the lot of a listing in acres. 
  // minimum: 0
  num sizeAcres;

  /// Number of parking spaces.
  // minimum: 0
  num openParkingSpaces;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListingLot &&
     other.sizeAcres == sizeAcres &&
     other.openParkingSpaces == openParkingSpaces;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (sizeAcres == null ? 0 : sizeAcres.hashCode) +
    (openParkingSpaces == null ? 0 : openParkingSpaces.hashCode);

  @override
  String toString() => 'ListingLot[sizeAcres=$sizeAcres, openParkingSpaces=$openParkingSpaces]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (sizeAcres != null) {
      json[r'size_acres'] = sizeAcres;
    }
    if (openParkingSpaces != null) {
      json[r'open_parking_spaces'] = openParkingSpaces;
    }
    return json;
  }

  /// Returns a new [ListingLot] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListingLot fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListingLot(
        sizeAcres: json[r'size_acres'] == null
          ? null
          : num.parse(json[r'size_acres'].toString()),
        openParkingSpaces: json[r'open_parking_spaces'] == null
          ? null
          : num.parse(json[r'open_parking_spaces'].toString()),
      );
    }
    return null;
  }

  static List<ListingLot> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListingLot.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListingLot>[];

  static Map<String, ListingLot> mapFromJson(dynamic json) {
    final map = <String, ListingLot>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListingLot.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListingLot-objects as value to a dart map
  static Map<String, List<ListingLot>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListingLot>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListingLot.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

