//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CalendarDay {
  /// Returns a new [CalendarDay] instance.
  CalendarDay({
    @required this.date,
    @required this.isAvailable,
  });

  /// Calendar day that has available timeslots.
  String date;

  /// Does the day have availability?
  bool isAvailable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarDay &&
     other.date == date &&
     other.isAvailable == isAvailable;

  @override
  int get hashCode =>
    (date == null ? 0 : date.hashCode) +
    (isAvailable == null ? 0 : isAvailable.hashCode);

  @override
  String toString() => 'CalendarDay[date=$date, isAvailable=$isAvailable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'date'] = date;
      json[r'is_available'] = isAvailable;
    return json;
  }

  /// Returns a new [CalendarDay] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CalendarDay fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CalendarDay(
        date: json[r'date'],
        isAvailable: json[r'is_available'],
    );

  static List<CalendarDay> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CalendarDay>[]
      : json.map((dynamic value) => CalendarDay.fromJson(value)).toList(growable: true == growable);

  static Map<String, CalendarDay> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CalendarDay>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = CalendarDay.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CalendarDay-objects as value to a dart map
  static Map<String, List<CalendarDay>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CalendarDay>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = CalendarDay.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

