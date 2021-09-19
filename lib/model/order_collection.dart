//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCollection {
  /// Returns a new [OrderCollection] instance.
  OrderCollection({
    @required this.status,
    this.data,
    this.meta,
    this.links,
  });

  /// What was the state of the request?
  String status;

  /// 
  List<Order> data;

  PaginationMeta meta;

  PaginationLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderCollection &&
     other.status == status &&
     other.data == data &&
     other.meta == meta &&
     other.links == links;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (status == null ? 0 : status.hashCode) +
    (data == null ? 0 : data.hashCode) +
    (meta == null ? 0 : meta.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'OrderCollection[status=$status, data=$data, meta=$meta, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
    if (data != null) {
      json[r'data'] = data;
    }
    if (meta != null) {
      json[r'meta'] = meta;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  /// Returns a new [OrderCollection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderCollection fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderCollection(
        status: mapValueOfType<String>(json, r'status'),
        data: Order.listFromJson(json[r'data']),
        meta: PaginationMeta.fromJson(json[r'meta']),
        links: PaginationLinks.fromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<OrderCollection> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderCollection.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderCollection>[];

  static Map<String, OrderCollection> mapFromJson(dynamic json) {
    final map = <String, OrderCollection>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderCollection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderCollection-objects as value to a dart map
  static Map<String, List<OrderCollection>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderCollection>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderCollection.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

