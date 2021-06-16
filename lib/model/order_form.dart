//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderForm {
  /// Returns a new [OrderForm] instance.
  OrderForm({
    @required this.id,
    this.name,
    @required this.url,
  });

  /// UUID of the order form.
  String id;

  /// The name of the order form.
  String name;

  /// A URL of a publicly-accessible webpage for this order form.
  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderForm &&
     other.id == id &&
     other.name == name &&
     other.url == url;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'OrderForm[id=$id, name=$name, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'url'] = url;
    return json;
  }

  /// Returns a new [OrderForm] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrderForm fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrderForm(
        id: json[r'id'],
        name: json[r'name'],
        url: json[r'url'],
    );

  static List<OrderForm> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderForm>[]
      : json.map((v) => OrderForm.fromJson(v)).toList(growable: true == growable);

  static Map<String, OrderForm> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrderForm>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = OrderForm.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OrderForm-objects as value to a dart map
  static Map<String, List<OrderForm>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderForm>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OrderForm.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

