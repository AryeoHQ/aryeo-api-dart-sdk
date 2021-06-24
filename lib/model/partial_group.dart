//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PartialGroup {
  /// Returns a new [PartialGroup] instance.
  PartialGroup({
    @required this.id,
    @required this.groupType,
    @required this.name,
    this.logo,
    this.email,
    this.phone,
    @required this.isBrokerageOrBrokerageAgent,
  });

  /// ID of the group.
  String id;

  /// The type of group.
  PartialGroupGroupTypeEnum groupType;

  /// The name of the group.
  String name;

  /// Group logo.
  String logo;

  /// Email.
  String email;

  /// Phone number.
  String phone;

  /// Does this group represent a brokerage or an agent who belongs to a brokerage?
  bool isBrokerageOrBrokerageAgent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PartialGroup &&
     other.id == id &&
     other.groupType == groupType &&
     other.name == name &&
     other.logo == logo &&
     other.email == email &&
     other.phone == phone &&
     other.isBrokerageOrBrokerageAgent == isBrokerageOrBrokerageAgent;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (groupType == null ? 0 : groupType.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (logo == null ? 0 : logo.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (phone == null ? 0 : phone.hashCode) +
    (isBrokerageOrBrokerageAgent == null ? 0 : isBrokerageOrBrokerageAgent.hashCode);

  @override
  String toString() => 'PartialGroup[id=$id, groupType=$groupType, name=$name, logo=$logo, email=$email, phone=$phone, isBrokerageOrBrokerageAgent=$isBrokerageOrBrokerageAgent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'group_type'] = groupType;
      json[r'name'] = name;
    if (logo != null) {
      json[r'logo'] = logo;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (phone != null) {
      json[r'phone'] = phone;
    }
      json[r'is_brokerage_or_brokerage_agent'] = isBrokerageOrBrokerageAgent;
    return json;
  }

  /// Returns a new [PartialGroup] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PartialGroup fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PartialGroup(
        id: json[r'id'],
        groupType: PartialGroupGroupTypeEnum.fromJson(json[r'group_type']),
        name: json[r'name'],
        logo: json[r'logo'],
        email: json[r'email'],
        phone: json[r'phone'],
        isBrokerageOrBrokerageAgent: json[r'is_brokerage_or_brokerage_agent'],
    );

  static List<PartialGroup> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PartialGroup>[]
      : json.map((dynamic value) => PartialGroup.fromJson(value)).toList(growable: true == growable);

  static Map<String, PartialGroup> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PartialGroup>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = PartialGroup.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PartialGroup-objects as value to a dart map
  static Map<String, List<PartialGroup>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PartialGroup>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = PartialGroup.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

/// The type of group.
class PartialGroupGroupTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PartialGroupGroupTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const creator = PartialGroupGroupTypeEnum._(r'creator');
  static const agent = PartialGroupGroupTypeEnum._(r'agent');
  static const brokerage = PartialGroupGroupTypeEnum._(r'brokerage');

  /// List of all possible values in this [enum][PartialGroupGroupTypeEnum].
  static const values = <PartialGroupGroupTypeEnum>[
    creator,
    agent,
    brokerage,
  ];

  static PartialGroupGroupTypeEnum fromJson(dynamic value) =>
    PartialGroupGroupTypeEnumTypeTransformer().decode(value);

  static List<PartialGroupGroupTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PartialGroupGroupTypeEnum>[]
      : json
          .map((value) => PartialGroupGroupTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [PartialGroupGroupTypeEnum] to String,
/// and [decode] dynamic data back to [PartialGroupGroupTypeEnum].
class PartialGroupGroupTypeEnumTypeTransformer {
  const PartialGroupGroupTypeEnumTypeTransformer._();

  factory PartialGroupGroupTypeEnumTypeTransformer() => _instance ??= PartialGroupGroupTypeEnumTypeTransformer._();

  String encode(PartialGroupGroupTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PartialGroupGroupTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PartialGroupGroupTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'creator': return PartialGroupGroupTypeEnum.creator;
      case r'agent': return PartialGroupGroupTypeEnum.agent;
      case r'brokerage': return PartialGroupGroupTypeEnum.brokerage;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PartialGroupGroupTypeEnumTypeTransformer] instance.
  static PartialGroupGroupTypeEnumTypeTransformer _instance;
}

