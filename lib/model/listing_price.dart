//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListingPrice {
  /// Returns a new [ListingPrice] instance.
  ListingPrice({
    this.listPrice,
  });

  /// The current price of the listing.
  // minimum: 0
  int listPrice;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListingPrice &&
     other.listPrice == listPrice;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (listPrice == null ? 0 : listPrice.hashCode);

  @override
  String toString() => 'ListingPrice[listPrice=$listPrice]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (listPrice != null) {
      json[r'list_price'] = listPrice;
    }
    return json;
  }

  /// Returns a new [ListingPrice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListingPrice fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListingPrice(
        listPrice: mapValueOfType<int>(json, r'list_price'),
      );
    }
    return null;
  }

  static List<ListingPrice> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListingPrice.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListingPrice>[];

  static Map<String, ListingPrice> mapFromJson(dynamic json) {
    final map = <String, ListingPrice>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListingPrice.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListingPrice-objects as value to a dart map
  static Map<String, List<ListingPrice>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListingPrice>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListingPrice.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

