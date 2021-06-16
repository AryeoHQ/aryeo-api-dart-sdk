//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductItem {
  /// Returns a new [ProductItem] instance.
  ProductItem({
    this.id,
  });

  /// ID of the product item.
  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductItem &&
     other.id == id;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode);

  @override
  String toString() => 'ProductItem[id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    return json;
  }

  /// Returns a new [ProductItem] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProductItem fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ProductItem(
        id: json[r'id'],
    );

  static List<ProductItem> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ProductItem>[]
      : json.map((v) => ProductItem.fromJson(v)).toList(growable: true == growable);

  static Map<String, ProductItem> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ProductItem>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ProductItem.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ProductItem-objects as value to a dart map
  static Map<String, List<ProductItem>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ProductItem>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ProductItem.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

