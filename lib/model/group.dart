//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Group {
  /// Returns a new [Group] instance.
  Group({
    @required this.id,
    @required this.type,
    @required this.name,
    this.email,
    this.phone,
    this.websiteUrl,
    this.logoUrl,
    this.avatarUrl,
    this.officeName,
    this.licenseNumber,
    this.socialProfiles,
    this.defaultOrderForm,
    this.orderForms,
    this.owner,
    this.users,
    @required this.isBrokerageOrBrokerageAgent,
  });

  /// ID of the group. UUID Version 4.
  String id;

  /// The type of the group. Can be CREATOR, AGENT, or BROKERAGE, and may dictate the attributes of the group returned.
  GroupTypeEnum type;

  /// The name of the group.
  String name;

  /// The email address of a group.
  String email;

  /// A phone number represented in whichever standards specified by the group, typically ###-###-#### (separated by hyphens).
  String phone;

  /// The website URL of a group.
  String websiteUrl;

  /// The logo URL of a group.
  String logoUrl;

  /// The profile image URL of a real estate agent. Only returned if group's type is AGENT.
  String avatarUrl;

  /// The name of the brokerage or team of a real estate agent. Only returned if group's type is AGENT.
  String officeName;

  /// The license number of a real estate agent. Only returned if group's type is AGENT.
  String licenseNumber;

  SocialProfiles socialProfiles;

  OrderForm defaultOrderForm;

  /// An array of order forms a vendor group provides for placing orders. Only returned if group's type is CREATOR. 
  List<OrderForm> orderForms;

  User owner;

  /// The Aryeo users associated with this group.
  List<User> users;

  /// Does this group represent a brokerage or an agent who belongs to a brokerage?
  bool isBrokerageOrBrokerageAgent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Group &&
     other.id == id &&
     other.type == type &&
     other.name == name &&
     other.email == email &&
     other.phone == phone &&
     other.websiteUrl == websiteUrl &&
     other.logoUrl == logoUrl &&
     other.avatarUrl == avatarUrl &&
     other.officeName == officeName &&
     other.licenseNumber == licenseNumber &&
     other.socialProfiles == socialProfiles &&
     other.defaultOrderForm == defaultOrderForm &&
     other.orderForms == orderForms &&
     other.owner == owner &&
     other.users == users &&
     other.isBrokerageOrBrokerageAgent == isBrokerageOrBrokerageAgent;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (phone == null ? 0 : phone.hashCode) +
    (websiteUrl == null ? 0 : websiteUrl.hashCode) +
    (logoUrl == null ? 0 : logoUrl.hashCode) +
    (avatarUrl == null ? 0 : avatarUrl.hashCode) +
    (officeName == null ? 0 : officeName.hashCode) +
    (licenseNumber == null ? 0 : licenseNumber.hashCode) +
    (socialProfiles == null ? 0 : socialProfiles.hashCode) +
    (defaultOrderForm == null ? 0 : defaultOrderForm.hashCode) +
    (orderForms == null ? 0 : orderForms.hashCode) +
    (owner == null ? 0 : owner.hashCode) +
    (users == null ? 0 : users.hashCode) +
    (isBrokerageOrBrokerageAgent == null ? 0 : isBrokerageOrBrokerageAgent.hashCode);

  @override
  String toString() => 'Group[id=$id, type=$type, name=$name, email=$email, phone=$phone, websiteUrl=$websiteUrl, logoUrl=$logoUrl, avatarUrl=$avatarUrl, officeName=$officeName, licenseNumber=$licenseNumber, socialProfiles=$socialProfiles, defaultOrderForm=$defaultOrderForm, orderForms=$orderForms, owner=$owner, users=$users, isBrokerageOrBrokerageAgent=$isBrokerageOrBrokerageAgent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'type'] = type;
      json[r'name'] = name;
    if (email != null) {
      json[r'email'] = email;
    }
    if (phone != null) {
      json[r'phone'] = phone;
    }
    if (websiteUrl != null) {
      json[r'website_url'] = websiteUrl;
    }
    if (logoUrl != null) {
      json[r'logo_url'] = logoUrl;
    }
    if (avatarUrl != null) {
      json[r'avatar_url'] = avatarUrl;
    }
    if (officeName != null) {
      json[r'office_name'] = officeName;
    }
    if (licenseNumber != null) {
      json[r'license_number'] = licenseNumber;
    }
    if (socialProfiles != null) {
      json[r'social_profiles'] = socialProfiles;
    }
    if (defaultOrderForm != null) {
      json[r'default_order_form'] = defaultOrderForm;
    }
    if (orderForms != null) {
      json[r'order_forms'] = orderForms;
    }
    if (owner != null) {
      json[r'owner'] = owner;
    }
    if (users != null) {
      json[r'users'] = users;
    }
      json[r'is_brokerage_or_brokerage_agent'] = isBrokerageOrBrokerageAgent;
    return json;
  }

  /// Returns a new [Group] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Group fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Group(
        id: mapValueOfType<String>(json, r'id'),
        type: GroupTypeEnum.fromJson(json[r'type']),
        name: mapValueOfType<String>(json, r'name'),
        email: mapValueOfType<String>(json, r'email'),
        phone: mapValueOfType<String>(json, r'phone'),
        websiteUrl: mapValueOfType<String>(json, r'website_url'),
        logoUrl: mapValueOfType<String>(json, r'logo_url'),
        avatarUrl: mapValueOfType<String>(json, r'avatar_url'),
        officeName: mapValueOfType<String>(json, r'office_name'),
        licenseNumber: mapValueOfType<String>(json, r'license_number'),
        socialProfiles: SocialProfiles.fromJson(json[r'social_profiles']),
        defaultOrderForm: OrderForm.fromJson(json[r'default_order_form']),
        orderForms: OrderForm.listFromJson(json[r'order_forms']),
        owner: User.fromJson(json[r'owner']),
        users: User.listFromJson(json[r'users']),
        isBrokerageOrBrokerageAgent: mapValueOfType<bool>(json, r'is_brokerage_or_brokerage_agent'),
      );
    }
    return null;
  }

  static List<Group> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Group.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Group>[];

  static Map<String, Group> mapFromJson(dynamic json) {
    final map = <String, Group>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Group.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Group-objects as value to a dart map
  static Map<String, List<Group>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Group>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Group.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// The type of the group. Can be CREATOR, AGENT, or BROKERAGE, and may dictate the attributes of the group returned.
class GroupTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GroupTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const CREATOR = GroupTypeEnum._(r'CREATOR');
  static const AGENT = GroupTypeEnum._(r'AGENT');
  static const BROKERAGE = GroupTypeEnum._(r'BROKERAGE');

  /// List of all possible values in this [enum][GroupTypeEnum].
  static const values = <GroupTypeEnum>[
    CREATOR,
    AGENT,
    BROKERAGE,
  ];

  static GroupTypeEnum fromJson(dynamic value) =>
    GroupTypeEnumTypeTransformer().decode(value);

  static List<GroupTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GroupTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GroupTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [GroupTypeEnum] to String,
/// and [decode] dynamic data back to [GroupTypeEnum].
class GroupTypeEnumTypeTransformer {
  factory GroupTypeEnumTypeTransformer() => _instance ??= const GroupTypeEnumTypeTransformer._();

  const GroupTypeEnumTypeTransformer._();

  String encode(GroupTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GroupTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GroupTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'CREATOR': return GroupTypeEnum.CREATOR;
        case r'AGENT': return GroupTypeEnum.AGENT;
        case r'BROKERAGE': return GroupTypeEnum.BROKERAGE;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GroupTypeEnumTypeTransformer] instance.
  static GroupTypeEnumTypeTransformer _instance;
}


