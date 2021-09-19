//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Product fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Product(
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        type: ProductTypeEnum.fromJson(json[r'type']),
        variants: ProductVariant.listFromJson(json[r'variants']),
        categories: ProductCategory.listFromJson(json[r'categories']),
      );
    }
    return null;
  }

  static List<Product> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Product.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Product>[];

  static Map<String, Product> mapFromJson(dynamic json) {
    final map = <String, Product>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Product.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Product-objects as value to a dart map
  static Map<String, List<Product>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Product>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Product.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
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
  String toString() => value ?? '';

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

  static List<ProductTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ProductTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ProductTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [ProductTypeEnum] to String,
/// and [decode] dynamic data back to [ProductTypeEnum].
class ProductTypeEnumTypeTransformer {
  factory ProductTypeEnumTypeTransformer() => _instance ??= const ProductTypeEnumTypeTransformer._();

  const ProductTypeEnumTypeTransformer._();

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
    if (data != null) {
      switch (data.toString()) {
        case r'MAIN': return ProductTypeEnum.MAIN;
        case r'ADDON': return ProductTypeEnum.ADDON;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProductTypeEnumTypeTransformer] instance.
  static ProductTypeEnumTypeTransformer _instance;
}


