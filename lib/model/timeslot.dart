//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Timeslot {
  /// Returns a new [Timeslot] instance.
  Timeslot({
    @required this.startAt,
    @required this.endAt,
    this.users = const [],
  });

  /// Start time of the available slot
  String startAt;

  /// End time of the available slot
  String endAt;

  List<User> users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Timeslot &&
     other.startAt == startAt &&
     other.endAt == endAt &&
     other.users == users;

  @override
  int get hashCode =>
    (startAt == null ? 0 : startAt.hashCode) +
    (endAt == null ? 0 : endAt.hashCode) +
    (users == null ? 0 : users.hashCode);

  @override
  String toString() => 'Timeslot[startAt=$startAt, endAt=$endAt, users=$users]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'start_at'] = startAt;
      json[r'end_at'] = endAt;
    if (users != null) {
      json[r'users'] = users;
    }
    return json;
  }

  /// Returns a new [Timeslot] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Timeslot fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Timeslot(
        startAt: json[r'start_at'],
        endAt: json[r'end_at'],
        users: User.listFromJson(json[r'users']),
    );

  static List<Timeslot> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Timeslot>[]
      : json.map((dynamic value) => Timeslot.fromJson(value)).toList(growable: true == growable);

  static Map<String, Timeslot> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Timeslot>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Timeslot.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Timeslot-objects as value to a dart map
  static Map<String, List<Timeslot>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Timeslot>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Timeslot.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

