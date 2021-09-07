//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Appointment {
  /// Returns a new [Appointment] instance.
  Appointment({
    @required this.id,
    this.status,
    this.title,
    this.description,
    this.startAt,
    this.endAt,
    this.duration,
    this.order,
    this.users,
    this.items = const [],
  });

  /// The ID of the appointment.
  String id;

  /// The status of the appointment.
  AppointmentStatusEnum status;

  /// The title of the appointment.
  String title;

  /// The multi-line description of the appointment.
  String description;

  /// The date and time (ISO 8601 format) when the appointment is set to start.
  DateTime startAt;

  /// The date and time (ISO 8601 format) when the appointment is set to end.
  DateTime endAt;

  /// The length of the appointment in minutes.
  int duration;

  Order order;

  /// Users attached to the appointment.
  List<User> users;

  /// Items attached to the appointment.
  List<OrderItem> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Appointment &&
     other.id == id &&
     other.status == status &&
     other.title == title &&
     other.description == description &&
     other.startAt == startAt &&
     other.endAt == endAt &&
     other.duration == duration &&
     other.order == order &&
     other.users == users &&
     other.items == items;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (startAt == null ? 0 : startAt.hashCode) +
    (endAt == null ? 0 : endAt.hashCode) +
    (duration == null ? 0 : duration.hashCode) +
    (order == null ? 0 : order.hashCode) +
    (users == null ? 0 : users.hashCode) +
    (items == null ? 0 : items.hashCode);

  @override
  String toString() => 'Appointment[id=$id, status=$status, title=$title, description=$description, startAt=$startAt, endAt=$endAt, duration=$duration, order=$order, users=$users, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (startAt != null) {
      json[r'start_at'] = startAt.toUtc().toIso8601String();
    }
    if (endAt != null) {
      json[r'end_at'] = endAt.toUtc().toIso8601String();
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    if (order != null) {
      json[r'order'] = order;
    }
    if (users != null) {
      json[r'users'] = users;
    }
    if (items != null) {
      json[r'items'] = items;
    }
    return json;
  }

  /// Returns a new [Appointment] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Appointment fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Appointment(
        id: json[r'id'],
        status: AppointmentStatusEnum.fromJson(json[r'status']),
        title: json[r'title'],
        description: json[r'description'],
        startAt: json[r'start_at'] == null
          ? null
          : DateTime.parse(json[r'start_at']),
        endAt: json[r'end_at'] == null
          ? null
          : DateTime.parse(json[r'end_at']),
        duration: json[r'duration'],
        order: Order.fromJson(json[r'order']),
        users: User.listFromJson(json[r'users']),
        items: OrderItem.listFromJson(json[r'items']),
    );

  static List<Appointment> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Appointment>[]
      : json.map((dynamic value) => Appointment.fromJson(value)).toList(growable: true == growable);

  static Map<String, Appointment> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Appointment>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Appointment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Appointment-objects as value to a dart map
  static Map<String, List<Appointment>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Appointment>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Appointment.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

/// The status of the appointment.
class AppointmentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AppointmentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SCHEDULED = AppointmentStatusEnum._(r'SCHEDULED');
  static const UNSCHEDULED = AppointmentStatusEnum._(r'UNSCHEDULED');
  static const RESCHEDULED = AppointmentStatusEnum._(r'RESCHEDULED');
  static const CANCELED = AppointmentStatusEnum._(r'CANCELED');

  /// List of all possible values in this [enum][AppointmentStatusEnum].
  static const values = <AppointmentStatusEnum>[
    SCHEDULED,
    UNSCHEDULED,
    RESCHEDULED,
    CANCELED,
  ];

  static AppointmentStatusEnum fromJson(dynamic value) =>
    AppointmentStatusEnumTypeTransformer().decode(value);

  static List<AppointmentStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AppointmentStatusEnum>[]
      : json
          .map((value) => AppointmentStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [AppointmentStatusEnum] to String,
/// and [decode] dynamic data back to [AppointmentStatusEnum].
class AppointmentStatusEnumTypeTransformer {
  const AppointmentStatusEnumTypeTransformer._();

  factory AppointmentStatusEnumTypeTransformer() => _instance ??= AppointmentStatusEnumTypeTransformer._();

  String encode(AppointmentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AppointmentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AppointmentStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SCHEDULED': return AppointmentStatusEnum.SCHEDULED;
      case r'UNSCHEDULED': return AppointmentStatusEnum.UNSCHEDULED;
      case r'RESCHEDULED': return AppointmentStatusEnum.RESCHEDULED;
      case r'CANCELED': return AppointmentStatusEnum.CANCELED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [AppointmentStatusEnumTypeTransformer] instance.
  static AppointmentStatusEnumTypeTransformer _instance;
}

