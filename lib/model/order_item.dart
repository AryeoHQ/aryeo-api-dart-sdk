//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderItem {
  /// Returns a new [OrderItem] instance.
  OrderItem({
    @required this.id,
    this.title,
    this.description,
    this.amount,
    this.quantity,
  });

  /// ID of the item. UUID Version 4.
  String id;

  /// The title of the item.
  String title;

  /// The description of the item.
  String description;

  /// A positive integer in the smallest currency unit (that is, 100 cents for $1.00) representing the cost of a single instance of this item. This is multiplied by the quantity to calculate what was or will be charged.
  // minimum: 0
  int amount;

  /// A positive integer representing the number of instances of this item that was or will be charged.
  // minimum: 0
  int quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderItem &&
     other.id == id &&
     other.title == title &&
     other.description == description &&
     other.amount == amount &&
     other.quantity == quantity;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (amount == null ? 0 : amount.hashCode) +
    (quantity == null ? 0 : quantity.hashCode);

  @override
  String toString() => 'OrderItem[id=$id, title=$title, description=$description, amount=$amount, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (title != null) {
      json[r'title'] = title;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (amount != null) {
      json[r'amount'] = amount;
    }
    if (quantity != null) {
      json[r'quantity'] = quantity;
    }
    return json;
  }

  /// Returns a new [OrderItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderItem fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderItem(
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        amount: mapValueOfType<int>(json, r'amount'),
        quantity: mapValueOfType<int>(json, r'quantity'),
      );
    }
    return null;
  }

  static List<OrderItem> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderItem.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderItem>[];

  static Map<String, OrderItem> mapFromJson(dynamic json) {
    final map = <String, OrderItem>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderItem-objects as value to a dart map
  static Map<String, List<OrderItem>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderItem>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderItem.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

