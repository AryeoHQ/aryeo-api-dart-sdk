//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  /// [json] if it's non-null, null if [json] is null.
  static ListingLot fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListingLot(
        sizeAcres: json[r'size_acres'] == null ?
          null :
          json[r'size_acres'].toDouble(),
        openParkingSpaces: json[r'open_parking_spaces'] == null ?
          null :
          json[r'open_parking_spaces'].toDouble(),
    );

  static List<ListingLot> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListingLot>[]
      : json.map((dynamic value) => ListingLot.fromJson(value)).toList(growable: true == growable);

  static Map<String, ListingLot> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListingLot>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ListingLot.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListingLot-objects as value to a dart map
  static Map<String, List<ListingLot>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListingLot>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ListingLot.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

