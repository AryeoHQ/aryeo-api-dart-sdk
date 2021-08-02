//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  /// [json] if it's non-null, null if [json] is null.
  static ListingPrice fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListingPrice(
        listPrice: json[r'list_price'],
    );

  static List<ListingPrice> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListingPrice>[]
      : json.map((dynamic value) => ListingPrice.fromJson(value)).toList(growable: true == growable);

  static Map<String, ListingPrice> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListingPrice>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ListingPrice.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListingPrice-objects as value to a dart map
  static Map<String, List<ListingPrice>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListingPrice>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ListingPrice.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

