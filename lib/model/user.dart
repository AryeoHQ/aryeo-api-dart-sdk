//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class User {
  /// Returns a new [User] instance.
  User({
    @required this.id,
    this.avatar,
    @required this.email,
    this.firstName,
    this.lastName,
    this.timezone,
    this.phone,
    this.relationship,
  });

  /// UUID of the user.
  String id;

  /// Avatar.
  String avatar;

  /// Email.
  String email;

  /// First name.
  String firstName;

  /// Last name.
  String lastName;

  /// Timezone.
  String timezone;

  /// Phone number.
  String phone;

  /// Describes user's relationship (access level) to a specified group.
  String relationship;

  @override
  bool operator ==(Object other) => identical(this, other) || other is User &&
     other.id == id &&
     other.avatar == avatar &&
     other.email == email &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.timezone == timezone &&
     other.phone == phone &&
     other.relationship == relationship;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (avatar == null ? 0 : avatar.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (timezone == null ? 0 : timezone.hashCode) +
    (phone == null ? 0 : phone.hashCode) +
    (relationship == null ? 0 : relationship.hashCode);

  @override
  String toString() => 'User[id=$id, avatar=$avatar, email=$email, firstName=$firstName, lastName=$lastName, timezone=$timezone, phone=$phone, relationship=$relationship]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (avatar != null) {
      json[r'avatar'] = avatar;
    }
      json[r'email'] = email;
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    if (timezone != null) {
      json[r'timezone'] = timezone;
    }
    if (phone != null) {
      json[r'phone'] = phone;
    }
    if (relationship != null) {
      json[r'relationship'] = relationship;
    }
    return json;
  }

  /// Returns a new [User] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static User fromJson(Map<String, dynamic> json) => json == null
    ? null
    : User(
        id: json[r'id'],
        avatar: json[r'avatar'],
        email: json[r'email'],
        firstName: json[r'first_name'],
        lastName: json[r'last_name'],
        timezone: json[r'timezone'],
        phone: json[r'phone'],
        relationship: json[r'relationship'],
    );

  static List<User> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <User>[]
      : json.map((dynamic value) => User.fromJson(value)).toList(growable: true == growable);

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    final map = <String, User>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<User>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = User.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

