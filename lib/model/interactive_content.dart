//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InteractiveContent {
  /// Returns a new [InteractiveContent] instance.
  InteractiveContent({
    @required this.id,
    @required this.displayType,
    @required this.contentType,
    @required this.url,
    this.thumbnailUrl,
  });

  /// ID of the content. UUID Version 4.
  String id;

  /// Is the content branded, unbranded, or both?
  InteractiveContentDisplayTypeEnum displayType;

  /// The type of interactive content.
  InteractiveContentContentTypeEnum contentType;

  /// URL for the content.
  String url;

  /// A URL for a thumbnail-sized preview of the content.
  String thumbnailUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InteractiveContent &&
     other.id == id &&
     other.displayType == displayType &&
     other.contentType == contentType &&
     other.url == url &&
     other.thumbnailUrl == thumbnailUrl;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (displayType == null ? 0 : displayType.hashCode) +
    (contentType == null ? 0 : contentType.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (thumbnailUrl == null ? 0 : thumbnailUrl.hashCode);

  @override
  String toString() => 'InteractiveContent[id=$id, displayType=$displayType, contentType=$contentType, url=$url, thumbnailUrl=$thumbnailUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'display_type'] = displayType;
      json[r'content_type'] = contentType;
      json[r'url'] = url;
    if (thumbnailUrl != null) {
      json[r'thumbnail_url'] = thumbnailUrl;
    }
    return json;
  }

  /// Returns a new [InteractiveContent] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InteractiveContent fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InteractiveContent(
        id: json[r'id'],
        displayType: InteractiveContentDisplayTypeEnum.fromJson(json[r'display_type']),
        contentType: InteractiveContentContentTypeEnum.fromJson(json[r'content_type']),
        url: json[r'url'],
        thumbnailUrl: json[r'thumbnail_url'],
    );

  static List<InteractiveContent> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InteractiveContent>[]
      : json.map((dynamic value) => InteractiveContent.fromJson(value)).toList(growable: true == growable);

  static Map<String, InteractiveContent> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InteractiveContent>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = InteractiveContent.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InteractiveContent-objects as value to a dart map
  static Map<String, List<InteractiveContent>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InteractiveContent>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = InteractiveContent.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

/// Is the content branded, unbranded, or both?
class InteractiveContentDisplayTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InteractiveContentDisplayTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BRANDED = InteractiveContentDisplayTypeEnum._(r'BRANDED');
  static const UNBRANDED = InteractiveContentDisplayTypeEnum._(r'UNBRANDED');
  static const BOTH = InteractiveContentDisplayTypeEnum._(r'BOTH');

  /// List of all possible values in this [enum][InteractiveContentDisplayTypeEnum].
  static const values = <InteractiveContentDisplayTypeEnum>[
    BRANDED,
    UNBRANDED,
    BOTH,
  ];

  static InteractiveContentDisplayTypeEnum fromJson(dynamic value) =>
    InteractiveContentDisplayTypeEnumTypeTransformer().decode(value);

  static List<InteractiveContentDisplayTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InteractiveContentDisplayTypeEnum>[]
      : json
          .map((value) => InteractiveContentDisplayTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InteractiveContentDisplayTypeEnum] to String,
/// and [decode] dynamic data back to [InteractiveContentDisplayTypeEnum].
class InteractiveContentDisplayTypeEnumTypeTransformer {
  const InteractiveContentDisplayTypeEnumTypeTransformer._();

  factory InteractiveContentDisplayTypeEnumTypeTransformer() => _instance ??= InteractiveContentDisplayTypeEnumTypeTransformer._();

  String encode(InteractiveContentDisplayTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InteractiveContentDisplayTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InteractiveContentDisplayTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'BRANDED': return InteractiveContentDisplayTypeEnum.BRANDED;
      case r'UNBRANDED': return InteractiveContentDisplayTypeEnum.UNBRANDED;
      case r'BOTH': return InteractiveContentDisplayTypeEnum.BOTH;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InteractiveContentDisplayTypeEnumTypeTransformer] instance.
  static InteractiveContentDisplayTypeEnumTypeTransformer _instance;
}

/// The type of interactive content.
class InteractiveContentContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InteractiveContentContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MATTERPORT = InteractiveContentContentTypeEnum._(r'MATTERPORT');
  static const OTHER = InteractiveContentContentTypeEnum._(r'OTHER');

  /// List of all possible values in this [enum][InteractiveContentContentTypeEnum].
  static const values = <InteractiveContentContentTypeEnum>[
    MATTERPORT,
    OTHER,
  ];

  static InteractiveContentContentTypeEnum fromJson(dynamic value) =>
    InteractiveContentContentTypeEnumTypeTransformer().decode(value);

  static List<InteractiveContentContentTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InteractiveContentContentTypeEnum>[]
      : json
          .map((value) => InteractiveContentContentTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InteractiveContentContentTypeEnum] to String,
/// and [decode] dynamic data back to [InteractiveContentContentTypeEnum].
class InteractiveContentContentTypeEnumTypeTransformer {
  const InteractiveContentContentTypeEnumTypeTransformer._();

  factory InteractiveContentContentTypeEnumTypeTransformer() => _instance ??= InteractiveContentContentTypeEnumTypeTransformer._();

  String encode(InteractiveContentContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InteractiveContentContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InteractiveContentContentTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'MATTERPORT': return InteractiveContentContentTypeEnum.MATTERPORT;
      case r'OTHER': return InteractiveContentContentTypeEnum.OTHER;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InteractiveContentContentTypeEnumTypeTransformer] instance.
  static InteractiveContentContentTypeEnumTypeTransformer _instance;
}

