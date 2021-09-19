//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SocialProfiles {
  /// Returns a new [SocialProfiles] instance.
  SocialProfiles({
    this.facebookProfileUrl,
    this.instagramProfileUrl,
    this.twitterProfileUrl,
    this.linkedinProfileUrl,
    this.zillowProfileUrl,
  });

  /// URL for Facebook.
  String facebookProfileUrl;

  /// URL for Instagram.
  String instagramProfileUrl;

  /// URL for Twitter.
  String twitterProfileUrl;

  /// URL for LinkedIn.
  String linkedinProfileUrl;

  /// URL for Zillow.
  String zillowProfileUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SocialProfiles &&
     other.facebookProfileUrl == facebookProfileUrl &&
     other.instagramProfileUrl == instagramProfileUrl &&
     other.twitterProfileUrl == twitterProfileUrl &&
     other.linkedinProfileUrl == linkedinProfileUrl &&
     other.zillowProfileUrl == zillowProfileUrl;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (facebookProfileUrl == null ? 0 : facebookProfileUrl.hashCode) +
    (instagramProfileUrl == null ? 0 : instagramProfileUrl.hashCode) +
    (twitterProfileUrl == null ? 0 : twitterProfileUrl.hashCode) +
    (linkedinProfileUrl == null ? 0 : linkedinProfileUrl.hashCode) +
    (zillowProfileUrl == null ? 0 : zillowProfileUrl.hashCode);

  @override
  String toString() => 'SocialProfiles[facebookProfileUrl=$facebookProfileUrl, instagramProfileUrl=$instagramProfileUrl, twitterProfileUrl=$twitterProfileUrl, linkedinProfileUrl=$linkedinProfileUrl, zillowProfileUrl=$zillowProfileUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (facebookProfileUrl != null) {
      json[r'facebook_profile_url'] = facebookProfileUrl;
    }
    if (instagramProfileUrl != null) {
      json[r'instagram_profile_url'] = instagramProfileUrl;
    }
    if (twitterProfileUrl != null) {
      json[r'twitter_profile_url'] = twitterProfileUrl;
    }
    if (linkedinProfileUrl != null) {
      json[r'linkedin_profile_url'] = linkedinProfileUrl;
    }
    if (zillowProfileUrl != null) {
      json[r'zillow_profile_url'] = zillowProfileUrl;
    }
    return json;
  }

  /// Returns a new [SocialProfiles] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SocialProfiles fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SocialProfiles(
        facebookProfileUrl: mapValueOfType<String>(json, r'facebook_profile_url'),
        instagramProfileUrl: mapValueOfType<String>(json, r'instagram_profile_url'),
        twitterProfileUrl: mapValueOfType<String>(json, r'twitter_profile_url'),
        linkedinProfileUrl: mapValueOfType<String>(json, r'linkedin_profile_url'),
        zillowProfileUrl: mapValueOfType<String>(json, r'zillow_profile_url'),
      );
    }
    return null;
  }

  static List<SocialProfiles> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SocialProfiles.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SocialProfiles>[];

  static Map<String, SocialProfiles> mapFromJson(dynamic json) {
    final map = <String, SocialProfiles>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SocialProfiles.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SocialProfiles-objects as value to a dart map
  static Map<String, List<SocialProfiles>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SocialProfiles>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SocialProfiles.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

