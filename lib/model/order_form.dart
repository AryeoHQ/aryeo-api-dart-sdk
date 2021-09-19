//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderForm {
  /// Returns a new [OrderForm] instance.
  OrderForm({
    @required this.id,
    this.title,
    @required this.url,
  });

  /// ID of the order form. UUID Version 4.
  String id;

  /// The title or name of the order form.
  String title;

  /// A URL of a publicly-accessible webpage for this order form.
  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderForm &&
     other.id == id &&
     other.title == title &&
     other.url == url;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'OrderForm[id=$id, title=$title, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (title != null) {
      json[r'title'] = title;
    }
      json[r'url'] = url;
    return json;
  }

  /// Returns a new [OrderForm] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderForm fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderForm(
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<OrderForm> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderForm.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderForm>[];

  static Map<String, OrderForm> mapFromJson(dynamic json) {
    final map = <String, OrderForm>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderForm.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderForm-objects as value to a dart map
  static Map<String, List<OrderForm>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderForm>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderForm.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

