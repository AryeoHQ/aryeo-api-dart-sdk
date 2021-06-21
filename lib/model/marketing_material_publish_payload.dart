//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MarketingMaterialPublishPayload {
  /// Returns a new [MarketingMaterialPublishPayload] instance.
  MarketingMaterialPublishPayload({
    this.polotnoJson,
  });

  /// String representation of a polotno JSON object.
  String polotnoJson;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MarketingMaterialPublishPayload &&
     other.polotnoJson == polotnoJson;

  @override
  int get hashCode =>
    (polotnoJson == null ? 0 : polotnoJson.hashCode);

  @override
  String toString() => 'MarketingMaterialPublishPayload[polotnoJson=$polotnoJson]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (polotnoJson != null) {
      json[r'polotno_json'] = polotnoJson;
    }
    return json;
  }

  /// Returns a new [MarketingMaterialPublishPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarketingMaterialPublishPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : MarketingMaterialPublishPayload(
        polotnoJson: json[r'polotno_json'],
    );

  static List<MarketingMaterialPublishPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MarketingMaterialPublishPayload>[]
      : json.map((v) => MarketingMaterialPublishPayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, MarketingMaterialPublishPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MarketingMaterialPublishPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = MarketingMaterialPublishPayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of MarketingMaterialPublishPayload-objects as value to a dart map
  static Map<String, List<MarketingMaterialPublishPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MarketingMaterialPublishPayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = MarketingMaterialPublishPayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

