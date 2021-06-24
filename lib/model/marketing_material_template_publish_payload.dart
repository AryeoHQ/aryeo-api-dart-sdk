//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MarketingMaterialTemplatePublishPayload {
  /// Returns a new [MarketingMaterialTemplatePublishPayload] instance.
  MarketingMaterialTemplatePublishPayload({
    this.polotnoJson,
  });

  /// String representation of a polotno JSON object.
  String polotnoJson;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MarketingMaterialTemplatePublishPayload &&
     other.polotnoJson == polotnoJson;

  @override
  int get hashCode =>
    (polotnoJson == null ? 0 : polotnoJson.hashCode);

  @override
  String toString() => 'MarketingMaterialTemplatePublishPayload[polotnoJson=$polotnoJson]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (polotnoJson != null) {
      json[r'polotno_json'] = polotnoJson;
    }
    return json;
  }

  /// Returns a new [MarketingMaterialTemplatePublishPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarketingMaterialTemplatePublishPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : MarketingMaterialTemplatePublishPayload(
        polotnoJson: json[r'polotno_json'],
    );

  static List<MarketingMaterialTemplatePublishPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MarketingMaterialTemplatePublishPayload>[]
      : json.map((dynamic value) => MarketingMaterialTemplatePublishPayload.fromJson(value)).toList(growable: true == growable);

  static Map<String, MarketingMaterialTemplatePublishPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MarketingMaterialTemplatePublishPayload>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = MarketingMaterialTemplatePublishPayload.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MarketingMaterialTemplatePublishPayload-objects as value to a dart map
  static Map<String, List<MarketingMaterialTemplatePublishPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MarketingMaterialTemplatePublishPayload>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = MarketingMaterialTemplatePublishPayload.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

