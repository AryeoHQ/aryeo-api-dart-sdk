//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InteractiveContent fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InteractiveContent(
        id: mapValueOfType<String>(json, r'id'),
        displayType: InteractiveContentDisplayTypeEnum.fromJson(json[r'display_type']),
        contentType: InteractiveContentContentTypeEnum.fromJson(json[r'content_type']),
        url: mapValueOfType<String>(json, r'url'),
        thumbnailUrl: mapValueOfType<String>(json, r'thumbnail_url'),
      );
    }
    return null;
  }

  static List<InteractiveContent> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InteractiveContent.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InteractiveContent>[];

  static Map<String, InteractiveContent> mapFromJson(dynamic json) {
    final map = <String, InteractiveContent>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InteractiveContent.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InteractiveContent-objects as value to a dart map
  static Map<String, List<InteractiveContent>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InteractiveContent>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InteractiveContent.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
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
  String toString() => value ?? '';

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

  static List<InteractiveContentDisplayTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InteractiveContentDisplayTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InteractiveContentDisplayTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [InteractiveContentDisplayTypeEnum] to String,
/// and [decode] dynamic data back to [InteractiveContentDisplayTypeEnum].
class InteractiveContentDisplayTypeEnumTypeTransformer {
  factory InteractiveContentDisplayTypeEnumTypeTransformer() => _instance ??= const InteractiveContentDisplayTypeEnumTypeTransformer._();

  const InteractiveContentDisplayTypeEnumTypeTransformer._();

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
    if (data != null) {
      switch (data.toString()) {
        case r'BRANDED': return InteractiveContentDisplayTypeEnum.BRANDED;
        case r'UNBRANDED': return InteractiveContentDisplayTypeEnum.UNBRANDED;
        case r'BOTH': return InteractiveContentDisplayTypeEnum.BOTH;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
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
  String toString() => value ?? '';

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

  static List<InteractiveContentContentTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InteractiveContentContentTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InteractiveContentContentTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [InteractiveContentContentTypeEnum] to String,
/// and [decode] dynamic data back to [InteractiveContentContentTypeEnum].
class InteractiveContentContentTypeEnumTypeTransformer {
  factory InteractiveContentContentTypeEnumTypeTransformer() => _instance ??= const InteractiveContentContentTypeEnumTypeTransformer._();

  const InteractiveContentContentTypeEnumTypeTransformer._();

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
    if (data != null) {
      switch (data.toString()) {
        case r'MATTERPORT': return InteractiveContentContentTypeEnum.MATTERPORT;
        case r'OTHER': return InteractiveContentContentTypeEnum.OTHER;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InteractiveContentContentTypeEnumTypeTransformer] instance.
  static InteractiveContentContentTypeEnumTypeTransformer _instance;
}


