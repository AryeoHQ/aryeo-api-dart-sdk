//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductVariant {
  /// Returns a new [ProductVariant] instance.
  ProductVariant({
    @required this.id,
    @required this.title,
    @required this.price,
  });

  /// ID of the product variant. UUID Version 4.
  String id;

  /// The title of the product variant.
  String title;

  /// A positive integer in the smallest currency unit (that is, 100 cents for $1.00) representing the price of the product variant.
  int price;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductVariant &&
     other.id == id &&
     other.title == title &&
     other.price == price;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (price == null ? 0 : price.hashCode);

  @override
  String toString() => 'ProductVariant[id=$id, title=$title, price=$price]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'title'] = title;
      json[r'price'] = price;
    return json;
  }

  /// Returns a new [ProductVariant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductVariant fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ProductVariant(
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        price: mapValueOfType<int>(json, r'price'),
      );
    }
    return null;
  }

  static List<ProductVariant> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ProductVariant.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ProductVariant>[];

  static Map<String, ProductVariant> mapFromJson(dynamic json) {
    final map = <String, ProductVariant>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ProductVariant.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProductVariant-objects as value to a dart map
  static Map<String, List<ProductVariant>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ProductVariant>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ProductVariant.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

