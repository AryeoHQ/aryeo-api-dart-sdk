//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductVariant {
  /// Returns a new [ProductVariant] instance.
  ProductVariant({
    @required this.id,
    @required this.title,
    @required this.price,
    this.duration,
  });

  /// ID of the product variant. UUID Version 4.
  String id;

  /// The title of the product variant.
  String title;

  /// A positive integer in the smallest currency unit (that is, 100 cents for $1.00) representing the price of the product variant.
  int price;

  /// The duration of the product item, in minutes.
  // minimum: 0
  int duration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductVariant &&
     other.id == id &&
     other.title == title &&
     other.price == price &&
     other.duration == duration;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (duration == null ? 0 : duration.hashCode);

  @override
  String toString() => 'ProductVariant[id=$id, title=$title, price=$price, duration=$duration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'title'] = title;
      json[r'price'] = price;
    if (duration != null) {
      json[r'duration'] = duration;
    }
    return json;
  }

  /// Returns a new [ProductVariant] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProductVariant fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ProductVariant(
        id: json[r'id'],
        title: json[r'title'],
        price: json[r'price'],
        duration: json[r'duration'],
    );

  static List<ProductVariant> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ProductVariant>[]
      : json.map((dynamic value) => ProductVariant.fromJson(value)).toList(growable: true == growable);

  static Map<String, ProductVariant> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ProductVariant>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ProductVariant.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProductVariant-objects as value to a dart map
  static Map<String, List<ProductVariant>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ProductVariant>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ProductVariant.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

