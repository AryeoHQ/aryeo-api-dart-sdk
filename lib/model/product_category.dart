//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductCategory {
  /// Returns a new [ProductCategory] instance.
  ProductCategory({
    @required this.id,
    @required this.title,
  });

  /// ID of the product category. UUID Version 4.
  String id;

  /// The title of the product category.
  String title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductCategory &&
     other.id == id &&
     other.title == title;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode);

  @override
  String toString() => 'ProductCategory[id=$id, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'title'] = title;
    return json;
  }

  /// Returns a new [ProductCategory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductCategory fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ProductCategory(
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<ProductCategory> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ProductCategory.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ProductCategory>[];

  static Map<String, ProductCategory> mapFromJson(dynamic json) {
    final map = <String, ProductCategory>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ProductCategory.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProductCategory-objects as value to a dart map
  static Map<String, List<ProductCategory>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ProductCategory>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ProductCategory.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

