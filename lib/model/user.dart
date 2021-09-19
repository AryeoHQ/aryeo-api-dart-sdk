//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class User {
  /// Returns a new [User] instance.
  User({
    @required this.id,
    @required this.email,
    this.firstName,
    this.lastName,
    this.phone,
    this.avatarUrl,
    this.relationship,
  });

  /// ID of the user. UUID Version 4.
  String id;

  /// Email address of the user.
  String email;

  /// First name of the user.
  String firstName;

  /// Last name of the user.
  String lastName;

  /// A phone number represented in whichever standards specified by the user, typically ###-###-#### (separated by hyphens).
  String phone;

  /// The avatar image URL of a user.
  String avatarUrl;

  /// Describes user's relationship (access level) to a specified group. Only returned if this resource is returned as a sub-resource of a group.
  String relationship;

  @override
  bool operator ==(Object other) => identical(this, other) || other is User &&
     other.id == id &&
     other.email == email &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.phone == phone &&
     other.avatarUrl == avatarUrl &&
     other.relationship == relationship;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (phone == null ? 0 : phone.hashCode) +
    (avatarUrl == null ? 0 : avatarUrl.hashCode) +
    (relationship == null ? 0 : relationship.hashCode);

  @override
  String toString() => 'User[id=$id, email=$email, firstName=$firstName, lastName=$lastName, phone=$phone, avatarUrl=$avatarUrl, relationship=$relationship]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'email'] = email;
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    if (phone != null) {
      json[r'phone'] = phone;
    }
    if (avatarUrl != null) {
      json[r'avatar_url'] = avatarUrl;
    }
    if (relationship != null) {
      json[r'relationship'] = relationship;
    }
    return json;
  }

  /// Returns a new [User] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static User fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return User(
        id: mapValueOfType<String>(json, r'id'),
        email: mapValueOfType<String>(json, r'email'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        phone: mapValueOfType<String>(json, r'phone'),
        avatarUrl: mapValueOfType<String>(json, r'avatar_url'),
        relationship: mapValueOfType<String>(json, r'relationship'),
      );
    }
    return null;
  }

  static List<User> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(User.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <User>[];

  static Map<String, User> mapFromJson(dynamic json) {
    final map = <String, User>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<User>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = User.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

