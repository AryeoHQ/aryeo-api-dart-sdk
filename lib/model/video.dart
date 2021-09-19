//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Video {
  /// Returns a new [Video] instance.
  Video({
    @required this.id,
    this.title,
    this.duration,
    @required this.displayType,
    @required this.sourceType,
    @required this.thumbnailUrl,
    @required this.playbackUrl,
    this.downloadUrl,
    this.shareUrl,
  });

  /// ID of the video. UUID Version 4.
  String id;

  /// The title of the video given by the uploading user.
  String title;

  /// The video's runtime in seconds.
  int duration;

  /// The display type determines if the video is branded or unbranded (can also be none or both). This affects whether the video is displayed on branded or unbranded marketing materials such as the property website.
  VideoDisplayTypeEnum displayType;

  /// The original upload source of the video, used to determine how to handle the playback_url of the video and other display properties. 
  VideoSourceTypeEnum sourceType;

  /// A thumbnail image URL for the video.
  String thumbnailUrl;

  /// A URL linking to playback stream of the video.
  String playbackUrl;

  /// A URL for downloading the video.
  String downloadUrl;

  /// A URL linking to a public viewing optimized webpage the video.
  String shareUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Video &&
     other.id == id &&
     other.title == title &&
     other.duration == duration &&
     other.displayType == displayType &&
     other.sourceType == sourceType &&
     other.thumbnailUrl == thumbnailUrl &&
     other.playbackUrl == playbackUrl &&
     other.downloadUrl == downloadUrl &&
     other.shareUrl == shareUrl;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (duration == null ? 0 : duration.hashCode) +
    (displayType == null ? 0 : displayType.hashCode) +
    (sourceType == null ? 0 : sourceType.hashCode) +
    (thumbnailUrl == null ? 0 : thumbnailUrl.hashCode) +
    (playbackUrl == null ? 0 : playbackUrl.hashCode) +
    (downloadUrl == null ? 0 : downloadUrl.hashCode) +
    (shareUrl == null ? 0 : shareUrl.hashCode);

  @override
  String toString() => 'Video[id=$id, title=$title, duration=$duration, displayType=$displayType, sourceType=$sourceType, thumbnailUrl=$thumbnailUrl, playbackUrl=$playbackUrl, downloadUrl=$downloadUrl, shareUrl=$shareUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (title != null) {
      json[r'title'] = title;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
      json[r'display_type'] = displayType;
      json[r'source_type'] = sourceType;
      json[r'thumbnail_url'] = thumbnailUrl;
      json[r'playback_url'] = playbackUrl;
    if (downloadUrl != null) {
      json[r'download_url'] = downloadUrl;
    }
    if (shareUrl != null) {
      json[r'share_url'] = shareUrl;
    }
    return json;
  }

  /// Returns a new [Video] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Video fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Video(
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        duration: mapValueOfType<int>(json, r'duration'),
        displayType: VideoDisplayTypeEnum.fromJson(json[r'display_type']),
        sourceType: VideoSourceTypeEnum.fromJson(json[r'source_type']),
        thumbnailUrl: mapValueOfType<String>(json, r'thumbnail_url'),
        playbackUrl: mapValueOfType<String>(json, r'playback_url'),
        downloadUrl: mapValueOfType<String>(json, r'download_url'),
        shareUrl: mapValueOfType<String>(json, r'share_url'),
      );
    }
    return null;
  }

  static List<Video> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Video.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Video>[];

  static Map<String, Video> mapFromJson(dynamic json) {
    final map = <String, Video>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Video.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Video-objects as value to a dart map
  static Map<String, List<Video>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Video>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Video.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// The display type determines if the video is branded or unbranded (can also be none or both). This affects whether the video is displayed on branded or unbranded marketing materials such as the property website.
class VideoDisplayTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const VideoDisplayTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const BRANDED = VideoDisplayTypeEnum._(r'BRANDED');
  static const UNBRANDED = VideoDisplayTypeEnum._(r'UNBRANDED');
  static const BOTH = VideoDisplayTypeEnum._(r'BOTH');
  static const NONE = VideoDisplayTypeEnum._(r'NONE');

  /// List of all possible values in this [enum][VideoDisplayTypeEnum].
  static const values = <VideoDisplayTypeEnum>[
    BRANDED,
    UNBRANDED,
    BOTH,
    NONE,
  ];

  static VideoDisplayTypeEnum fromJson(dynamic value) =>
    VideoDisplayTypeEnumTypeTransformer().decode(value);

  static List<VideoDisplayTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(VideoDisplayTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <VideoDisplayTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [VideoDisplayTypeEnum] to String,
/// and [decode] dynamic data back to [VideoDisplayTypeEnum].
class VideoDisplayTypeEnumTypeTransformer {
  factory VideoDisplayTypeEnumTypeTransformer() => _instance ??= const VideoDisplayTypeEnumTypeTransformer._();

  const VideoDisplayTypeEnumTypeTransformer._();

  String encode(VideoDisplayTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VideoDisplayTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VideoDisplayTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'BRANDED': return VideoDisplayTypeEnum.BRANDED;
        case r'UNBRANDED': return VideoDisplayTypeEnum.UNBRANDED;
        case r'BOTH': return VideoDisplayTypeEnum.BOTH;
        case r'NONE': return VideoDisplayTypeEnum.NONE;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VideoDisplayTypeEnumTypeTransformer] instance.
  static VideoDisplayTypeEnumTypeTransformer _instance;
}


/// The original upload source of the video, used to determine how to handle the playback_url of the video and other display properties. 
class VideoSourceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const VideoSourceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const YOUTUBE = VideoSourceTypeEnum._(r'YOUTUBE');
  static const VIMEO = VideoSourceTypeEnum._(r'VIMEO');
  static const OPTIMIZED = VideoSourceTypeEnum._(r'OPTIMIZED');
  static const UPLOADED = VideoSourceTypeEnum._(r'UPLOADED');
  static const LINK = VideoSourceTypeEnum._(r'LINK');

  /// List of all possible values in this [enum][VideoSourceTypeEnum].
  static const values = <VideoSourceTypeEnum>[
    YOUTUBE,
    VIMEO,
    OPTIMIZED,
    UPLOADED,
    LINK,
  ];

  static VideoSourceTypeEnum fromJson(dynamic value) =>
    VideoSourceTypeEnumTypeTransformer().decode(value);

  static List<VideoSourceTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(VideoSourceTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <VideoSourceTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [VideoSourceTypeEnum] to String,
/// and [decode] dynamic data back to [VideoSourceTypeEnum].
class VideoSourceTypeEnumTypeTransformer {
  factory VideoSourceTypeEnumTypeTransformer() => _instance ??= const VideoSourceTypeEnumTypeTransformer._();

  const VideoSourceTypeEnumTypeTransformer._();

  String encode(VideoSourceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VideoSourceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VideoSourceTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'YOUTUBE': return VideoSourceTypeEnum.YOUTUBE;
        case r'VIMEO': return VideoSourceTypeEnum.VIMEO;
        case r'OPTIMIZED': return VideoSourceTypeEnum.OPTIMIZED;
        case r'UPLOADED': return VideoSourceTypeEnum.UPLOADED;
        case r'LINK': return VideoSourceTypeEnum.LINK;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VideoSourceTypeEnumTypeTransformer] instance.
  static VideoSourceTypeEnumTypeTransformer _instance;
}


