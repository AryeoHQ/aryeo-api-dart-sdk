//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Product {
  /// Returns a new [Product] instance.
  Product({
    @required this.id,
    @required this.title,
    this.description,
    @required this.type,
    this.variants = const [],
    this.categories = const [],
  });

  /// ID of the product. UUID Version 4.
  String id;

  /// The title of the product.
  String title;

  /// The description of the product.
  String description;

  /// The type of product.
  ProductTypeEnum type;

  List<ProductVariant> variants;

  List<ProductCategory> categories;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Product &&
     other.id == id &&
     other.title == title &&
     other.description == description &&
     other.type == type &&
     other.variants == variants &&
     other.categories == categories;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (variants == null ? 0 : variants.hashCode) +
    (categories == null ? 0 : categories.hashCode);

  @override
  String toString() => 'Product[id=$id, title=$title, description=$description, type=$type, variants=$variants, categories=$categories]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'title'] = title;
    if (description != null) {
      json[r'description'] = description;
    }
      json[r'type'] = type;
    if (variants != null) {
      json[r'variants'] = variants;
    }
    if (categories != null) {
      json[r'categories'] = categories;
    }
    return json;
  }

  /// Returns a new [Product] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Product fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Product(
        id: json[r'id'],
        title: json[r'title'],
        description: json[r'description'],
        type: ProductTypeEnum.fromJson(json[r'type']),
        variants: ProductVariant.listFromJson(json[r'variants']),
        categories: ProductCategory.listFromJson(json[r'categories']),
    );

  static List<Product> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Product>[]
      : json.map((dynamic value) => Product.fromJson(value)).toList(growable: true == growable);

  static Map<String, Product> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Product>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Product.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Product-objects as value to a dart map
  static Map<String, List<Product>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Product>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Product.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

/// The type of product.
class ProductTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProductTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MAIN = ProductTypeEnum._(r'MAIN');
  static const ADDON = ProductTypeEnum._(r'ADDON');

  /// List of all possible values in this [enum][ProductTypeEnum].
  static const values = <ProductTypeEnum>[
    MAIN,
    ADDON,
  ];

  static ProductTypeEnum fromJson(dynamic value) =>
    ProductTypeEnumTypeTransformer().decode(value);

  static List<ProductTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ProductTypeEnum>[]
      : json
          .map((value) => ProductTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ProductTypeEnum] to String,
/// and [decode] dynamic data back to [ProductTypeEnum].
class ProductTypeEnumTypeTransformer {
  const ProductTypeEnumTypeTransformer._();

  factory ProductTypeEnumTypeTransformer() => _instance ??= ProductTypeEnumTypeTransformer._();

  String encode(ProductTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProductTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProductTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'MAIN': return ProductTypeEnum.MAIN;
      case r'ADDON': return ProductTypeEnum.ADDON;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ProductTypeEnumTypeTransformer] instance.
  static ProductTypeEnumTypeTransformer _instance;
}

