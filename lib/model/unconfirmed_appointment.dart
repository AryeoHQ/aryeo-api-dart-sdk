//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnconfirmedAppointment {
  /// Returns a new [UnconfirmedAppointment] instance.
  UnconfirmedAppointment({
    @required this.id,
    this.title,
    this.description,
    this.order,
    this.users,
    this.preferenceType,
    this.preferredStartAt,
    this.preferredStartAtDay,
    this.preferredStartAtTimeOfDay,
    this.duration,
  });

  /// The ID of the appointment.
  String id;

  /// The title of the appointment.
  String title;

  /// The multi-line description of the appointment.
  String description;

  Order order;

  /// Users attached to the appointment.
  List<User> users;

  /// The type of preferred scheduling information provided by a customer to aid in scheduling this appointment.
  UnconfirmedAppointmentPreferenceTypeEnum preferenceType;

  /// A preferred date and time (ISO 8601 format) for when the appointment could start. Only returned if unconfirmed appointment's preference type is TIME. 
  DateTime preferredStartAt;

  /// A preferred date (ISO 8601 format) for when the appointment could start. Only returned if unconfirmed appointment's preference type is TIME_OF_DAY. 
  DateTime preferredStartAtDay;

  /// A preferred time of day for when the appointment could start. Only returned if unconfirmed appointment's preference type is TIME_OF_DAY. 
  UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum preferredStartAtTimeOfDay;

  /// The estimated length of the appointment in minutes, if available.
  int duration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnconfirmedAppointment &&
     other.id == id &&
     other.title == title &&
     other.description == description &&
     other.order == order &&
     other.users == users &&
     other.preferenceType == preferenceType &&
     other.preferredStartAt == preferredStartAt &&
     other.preferredStartAtDay == preferredStartAtDay &&
     other.preferredStartAtTimeOfDay == preferredStartAtTimeOfDay &&
     other.duration == duration;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (order == null ? 0 : order.hashCode) +
    (users == null ? 0 : users.hashCode) +
    (preferenceType == null ? 0 : preferenceType.hashCode) +
    (preferredStartAt == null ? 0 : preferredStartAt.hashCode) +
    (preferredStartAtDay == null ? 0 : preferredStartAtDay.hashCode) +
    (preferredStartAtTimeOfDay == null ? 0 : preferredStartAtTimeOfDay.hashCode) +
    (duration == null ? 0 : duration.hashCode);

  @override
  String toString() => 'UnconfirmedAppointment[id=$id, title=$title, description=$description, order=$order, users=$users, preferenceType=$preferenceType, preferredStartAt=$preferredStartAt, preferredStartAtDay=$preferredStartAtDay, preferredStartAtTimeOfDay=$preferredStartAtTimeOfDay, duration=$duration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (title != null) {
      json[r'title'] = title;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (order != null) {
      json[r'order'] = order;
    }
    if (users != null) {
      json[r'users'] = users;
    }
    if (preferenceType != null) {
      json[r'preference_type'] = preferenceType;
    }
    if (preferredStartAt != null) {
      json[r'preferred_start_at'] = preferredStartAt.toUtc().toIso8601String();
    }
    if (preferredStartAtDay != null) {
      json[r'preferred_start_at_day'] = _dateFormatter.format(preferredStartAtDay.toUtc());
    }
    if (preferredStartAtTimeOfDay != null) {
      json[r'preferred_start_at_time_of_day'] = preferredStartAtTimeOfDay;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    return json;
  }

  /// Returns a new [UnconfirmedAppointment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnconfirmedAppointment fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UnconfirmedAppointment(
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        order: Order.fromJson(json[r'order']),
        users: User.listFromJson(json[r'users']),
        preferenceType: UnconfirmedAppointmentPreferenceTypeEnum.fromJson(json[r'preference_type']),
        preferredStartAt: mapDateTime(json, r'preferred_start_at', ''),
        preferredStartAtDay: mapDateTime(json, r'preferred_start_at_day', ''),
        preferredStartAtTimeOfDay: UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum.fromJson(json[r'preferred_start_at_time_of_day']),
        duration: mapValueOfType<int>(json, r'duration'),
      );
    }
    return null;
  }

  static List<UnconfirmedAppointment> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UnconfirmedAppointment.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UnconfirmedAppointment>[];

  static Map<String, UnconfirmedAppointment> mapFromJson(dynamic json) {
    final map = <String, UnconfirmedAppointment>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UnconfirmedAppointment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UnconfirmedAppointment-objects as value to a dart map
  static Map<String, List<UnconfirmedAppointment>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UnconfirmedAppointment>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UnconfirmedAppointment.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// The type of preferred scheduling information provided by a customer to aid in scheduling this appointment.
class UnconfirmedAppointmentPreferenceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UnconfirmedAppointmentPreferenceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const ASAP = UnconfirmedAppointmentPreferenceTypeEnum._(r'ASAP');
  static const TIME = UnconfirmedAppointmentPreferenceTypeEnum._(r'TIME');
  static const TIME_OF_DAY = UnconfirmedAppointmentPreferenceTypeEnum._(r'TIME_OF_DAY');

  /// List of all possible values in this [enum][UnconfirmedAppointmentPreferenceTypeEnum].
  static const values = <UnconfirmedAppointmentPreferenceTypeEnum>[
    ASAP,
    TIME,
    TIME_OF_DAY,
  ];

  static UnconfirmedAppointmentPreferenceTypeEnum fromJson(dynamic value) =>
    UnconfirmedAppointmentPreferenceTypeEnumTypeTransformer().decode(value);

  static List<UnconfirmedAppointmentPreferenceTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UnconfirmedAppointmentPreferenceTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UnconfirmedAppointmentPreferenceTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [UnconfirmedAppointmentPreferenceTypeEnum] to String,
/// and [decode] dynamic data back to [UnconfirmedAppointmentPreferenceTypeEnum].
class UnconfirmedAppointmentPreferenceTypeEnumTypeTransformer {
  factory UnconfirmedAppointmentPreferenceTypeEnumTypeTransformer() => _instance ??= const UnconfirmedAppointmentPreferenceTypeEnumTypeTransformer._();

  const UnconfirmedAppointmentPreferenceTypeEnumTypeTransformer._();

  String encode(UnconfirmedAppointmentPreferenceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UnconfirmedAppointmentPreferenceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UnconfirmedAppointmentPreferenceTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'ASAP': return UnconfirmedAppointmentPreferenceTypeEnum.ASAP;
        case r'TIME': return UnconfirmedAppointmentPreferenceTypeEnum.TIME;
        case r'TIME_OF_DAY': return UnconfirmedAppointmentPreferenceTypeEnum.TIME_OF_DAY;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnconfirmedAppointmentPreferenceTypeEnumTypeTransformer] instance.
  static UnconfirmedAppointmentPreferenceTypeEnumTypeTransformer _instance;
}


/// A preferred time of day for when the appointment could start. Only returned if unconfirmed appointment's preference type is TIME_OF_DAY. 
class UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum {
  /// Instantiate a new enum with the provided [value].
  const UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const MORNING = UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum._(r'MORNING');
  static const AFTERNOON = UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum._(r'AFTERNOON');
  static const TWILIGHT = UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum._(r'TWILIGHT');

  /// List of all possible values in this [enum][UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum].
  static const values = <UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum>[
    MORNING,
    AFTERNOON,
    TWILIGHT,
  ];

  static UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum fromJson(dynamic value) =>
    UnconfirmedAppointmentPreferredStartAtTimeOfDayEnumTypeTransformer().decode(value);

  static List<UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum>[];
}

/// Transformation class that can [encode] an instance of [UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum] to String,
/// and [decode] dynamic data back to [UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum].
class UnconfirmedAppointmentPreferredStartAtTimeOfDayEnumTypeTransformer {
  factory UnconfirmedAppointmentPreferredStartAtTimeOfDayEnumTypeTransformer() => _instance ??= const UnconfirmedAppointmentPreferredStartAtTimeOfDayEnumTypeTransformer._();

  const UnconfirmedAppointmentPreferredStartAtTimeOfDayEnumTypeTransformer._();

  String encode(UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'MORNING': return UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum.MORNING;
        case r'AFTERNOON': return UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum.AFTERNOON;
        case r'TWILIGHT': return UnconfirmedAppointmentPreferredStartAtTimeOfDayEnum.TWILIGHT;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnconfirmedAppointmentPreferredStartAtTimeOfDayEnumTypeTransformer] instance.
  static UnconfirmedAppointmentPreferredStartAtTimeOfDayEnumTypeTransformer _instance;
}


