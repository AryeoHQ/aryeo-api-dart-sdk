//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Image {
  /// Returns a new [Image] instance.
  Image({
    @required this.id,
    @required this.thumbnailUrl,
    @required this.largeUrl,
    @required this.originalUrl,
    this.index,
    this.caption,
    @required this.displayInGallery,
  });

  /// ID of the image. UUID Version 4.
  String id;

  /// A URL for a thumbnail-sized version of the image.
  String thumbnailUrl;

  /// A URL for a large version of the image.
  String largeUrl;

  /// A URL for the original, full-resolution version of the image. Useful for downloading.
  String originalUrl;

  /// The order in which the image should be displayed amongst other related images.
  int index;

  /// A brief explanation of the image.
  String caption;

  /// Should the image be displayed in a gallery?
  bool displayInGallery;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Image &&
     other.id == id &&
     other.thumbnailUrl == thumbnailUrl &&
     other.largeUrl == largeUrl &&
     other.originalUrl == originalUrl &&
     other.index == index &&
     other.caption == caption &&
     other.displayInGallery == displayInGallery;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (thumbnailUrl == null ? 0 : thumbnailUrl.hashCode) +
    (largeUrl == null ? 0 : largeUrl.hashCode) +
    (originalUrl == null ? 0 : originalUrl.hashCode) +
    (index == null ? 0 : index.hashCode) +
    (caption == null ? 0 : caption.hashCode) +
    (displayInGallery == null ? 0 : displayInGallery.hashCode);

  @override
  String toString() => 'Image[id=$id, thumbnailUrl=$thumbnailUrl, largeUrl=$largeUrl, originalUrl=$originalUrl, index=$index, caption=$caption, displayInGallery=$displayInGallery]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'thumbnail_url'] = thumbnailUrl;
      json[r'large_url'] = largeUrl;
      json[r'original_url'] = originalUrl;
    if (index != null) {
      json[r'index'] = index;
    }
    if (caption != null) {
      json[r'caption'] = caption;
    }
      json[r'display_in_gallery'] = displayInGallery;
    return json;
  }

  /// Returns a new [Image] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Image fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Image(
        id: mapValueOfType<String>(json, r'id'),
        thumbnailUrl: mapValueOfType<String>(json, r'thumbnail_url'),
        largeUrl: mapValueOfType<String>(json, r'large_url'),
        originalUrl: mapValueOfType<String>(json, r'original_url'),
        index: mapValueOfType<int>(json, r'index'),
        caption: mapValueOfType<String>(json, r'caption'),
        displayInGallery: mapValueOfType<bool>(json, r'display_in_gallery'),
      );
    }
    return null;
  }

  static List<Image> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Image.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Image>[];

  static Map<String, Image> mapFromJson(dynamic json) {
    final map = <String, Image>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Image.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Image-objects as value to a dart map
  static Map<String, List<Image>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Image>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Image.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

