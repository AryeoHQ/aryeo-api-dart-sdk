//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  /// [json] if it's non-null, null if [json] is null.
  static ProductCategory fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ProductCategory(
        id: json[r'id'],
        title: json[r'title'],
    );

  static List<ProductCategory> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ProductCategory>[]
      : json.map((dynamic value) => ProductCategory.fromJson(value)).toList(growable: true == growable);

  static Map<String, ProductCategory> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ProductCategory>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ProductCategory.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProductCategory-objects as value to a dart map
  static Map<String, List<ProductCategory>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ProductCategory>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ProductCategory.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

