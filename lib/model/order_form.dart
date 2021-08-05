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
  /// [json] if it's non-null, null if [json] is null.
  static OrderForm fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrderForm(
        id: json[r'id'],
        title: json[r'title'],
        url: json[r'url'],
    );

  static List<OrderForm> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderForm>[]
      : json.map((dynamic value) => OrderForm.fromJson(value)).toList(growable: true == growable);

  static Map<String, OrderForm> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrderForm>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = OrderForm.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderForm-objects as value to a dart map
  static Map<String, List<OrderForm>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderForm>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = OrderForm.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

