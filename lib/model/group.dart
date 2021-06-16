//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Group {
  /// Returns a new [Group] instance.
  Group({
    @required this.id,
    @required this.groupType,
    @required this.name,
    this.logo,
    this.email,
    this.phone,
    this.website,
    @required this.isBrokerageOrBrokerageAgent,
    this.socialProfiles,
    this.agentProperties,
    this.users = const [],
    this.defaultOrderForm,
    this.orderForms = const [],
  });

  /// ID of the group.
  String id;

  /// The type of group.
  GroupGroupTypeEnum groupType;

  /// The name of the group.
  String name;

  /// Group logo.
  String logo;

  /// Email.
  String email;

  /// Phone number.
  String phone;

  /// Website.
  String website;

  /// Does this group represent a brokerage or an agent who belongs to a brokerage?
  bool isBrokerageOrBrokerageAgent;

  SocialProfiles socialProfiles;

  GroupAgentProperties agentProperties;

  /// users
  List<User> users;

  OrderForm defaultOrderForm;

  /// An array of order forms.
  List<OrderForm> orderForms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Group &&
     other.id == id &&
     other.groupType == groupType &&
     other.name == name &&
     other.logo == logo &&
     other.email == email &&
     other.phone == phone &&
     other.website == website &&
     other.isBrokerageOrBrokerageAgent == isBrokerageOrBrokerageAgent &&
     other.socialProfiles == socialProfiles &&
     other.agentProperties == agentProperties &&
     other.users == users &&
     other.defaultOrderForm == defaultOrderForm &&
     other.orderForms == orderForms;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (groupType == null ? 0 : groupType.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (logo == null ? 0 : logo.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (phone == null ? 0 : phone.hashCode) +
    (website == null ? 0 : website.hashCode) +
    (isBrokerageOrBrokerageAgent == null ? 0 : isBrokerageOrBrokerageAgent.hashCode) +
    (socialProfiles == null ? 0 : socialProfiles.hashCode) +
    (agentProperties == null ? 0 : agentProperties.hashCode) +
    (users == null ? 0 : users.hashCode) +
    (defaultOrderForm == null ? 0 : defaultOrderForm.hashCode) +
    (orderForms == null ? 0 : orderForms.hashCode);

  @override
  String toString() => 'Group[id=$id, groupType=$groupType, name=$name, logo=$logo, email=$email, phone=$phone, website=$website, isBrokerageOrBrokerageAgent=$isBrokerageOrBrokerageAgent, socialProfiles=$socialProfiles, agentProperties=$agentProperties, users=$users, defaultOrderForm=$defaultOrderForm, orderForms=$orderForms]';

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
    if (website != null) {
      json[r'website'] = website;
    }
      json[r'is_brokerage_or_brokerage_agent'] = isBrokerageOrBrokerageAgent;
    if (socialProfiles != null) {
      json[r'social_profiles'] = socialProfiles;
    }
    if (agentProperties != null) {
      json[r'agent_properties'] = agentProperties;
    }
    if (users != null) {
      json[r'users'] = users;
    }
    if (defaultOrderForm != null) {
      json[r'default_order_form'] = defaultOrderForm;
    }
    if (orderForms != null) {
      json[r'order_forms'] = orderForms;
    }
    return json;
  }

  /// Returns a new [Group] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Group fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Group(
        id: json[r'id'],
        groupType: GroupGroupTypeEnum.fromJson(json[r'group_type']),
        name: json[r'name'],
        logo: json[r'logo'],
        email: json[r'email'],
        phone: json[r'phone'],
        website: json[r'website'],
        isBrokerageOrBrokerageAgent: json[r'is_brokerage_or_brokerage_agent'],
        socialProfiles: SocialProfiles.fromJson(json[r'social_profiles']),
        agentProperties: GroupAgentProperties.fromJson(json[r'agent_properties']),
        users: User.listFromJson(json[r'users']),
        defaultOrderForm: OrderForm.fromJson(json[r'default_order_form']),
        orderForms: OrderForm.listFromJson(json[r'order_forms']),
    );

  static List<Group> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Group>[]
      : json.map((v) => Group.fromJson(v)).toList(growable: true == growable);

  static Map<String, Group> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Group>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Group.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Group-objects as value to a dart map
  static Map<String, List<Group>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Group>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Group.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// The type of group.
class GroupGroupTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GroupGroupTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const creator = GroupGroupTypeEnum._(r'creator');
  static const agent = GroupGroupTypeEnum._(r'agent');
  static const brokerage = GroupGroupTypeEnum._(r'brokerage');

  /// List of all possible values in this [enum][GroupGroupTypeEnum].
  static const values = <GroupGroupTypeEnum>[
    creator,
    agent,
    brokerage,
  ];

  static GroupGroupTypeEnum fromJson(dynamic value) =>
    GroupGroupTypeEnumTypeTransformer().decode(value);

  static List<GroupGroupTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GroupGroupTypeEnum>[]
      : json
          .map((value) => GroupGroupTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GroupGroupTypeEnum] to String,
/// and [decode] dynamic data back to [GroupGroupTypeEnum].
class GroupGroupTypeEnumTypeTransformer {
  const GroupGroupTypeEnumTypeTransformer._();

  factory GroupGroupTypeEnumTypeTransformer() => _instance ??= GroupGroupTypeEnumTypeTransformer._();

  String encode(GroupGroupTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GroupGroupTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GroupGroupTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'creator': return GroupGroupTypeEnum.creator;
      case r'agent': return GroupGroupTypeEnum.agent;
      case r'brokerage': return GroupGroupTypeEnum.brokerage;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GroupGroupTypeEnumTypeTransformer] instance.
  static GroupGroupTypeEnumTypeTransformer _instance;
}

