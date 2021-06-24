//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Currency {
  /// Returns a new [Currency] instance.
  Currency({
    @required this.id,
    @required this.name,
    @required this.symbol,
    @required this.enabled,
  });

  /// The ID of the currency.
  String id;

  /// The name of the currency.
  String name;

  /// The currency symbol.
  String symbol;

  /// Is this currency enabled for Aryeo?
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Currency &&
     other.id == id &&
     other.name == name &&
     other.symbol == symbol &&
     other.enabled == enabled;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (symbol == null ? 0 : symbol.hashCode) +
    (enabled == null ? 0 : enabled.hashCode);

  @override
  String toString() => 'Currency[id=$id, name=$name, symbol=$symbol, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'name'] = name;
      json[r'symbol'] = symbol;
      json[r'enabled'] = enabled;
    return json;
  }

  /// Returns a new [Currency] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Currency fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Currency(
        id: json[r'id'],
        name: json[r'name'],
        symbol: json[r'symbol'],
        enabled: json[r'enabled'],
    );

  static List<Currency> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Currency>[]
      : json.map((dynamic value) => Currency.fromJson(value)).toList(growable: true == growable);

  static Map<String, Currency> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Currency>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Currency.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Currency-objects as value to a dart map
  static Map<String, List<Currency>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Currency>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Currency.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

