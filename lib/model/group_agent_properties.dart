//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupAgentProperties {
  /// Returns a new [GroupAgentProperties] instance.
  GroupAgentProperties({
    this.brokerageName,
    this.agentLicenseNumber,
    this.agentAvatar,
  });

  /// Name of brokerage.
  String brokerageName;

  /// Agent's license number.
  String agentLicenseNumber;

  /// Agent's profile image URL.
  String agentAvatar;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupAgentProperties &&
     other.brokerageName == brokerageName &&
     other.agentLicenseNumber == agentLicenseNumber &&
     other.agentAvatar == agentAvatar;

  @override
  int get hashCode =>
    (brokerageName == null ? 0 : brokerageName.hashCode) +
    (agentLicenseNumber == null ? 0 : agentLicenseNumber.hashCode) +
    (agentAvatar == null ? 0 : agentAvatar.hashCode);

  @override
  String toString() => 'GroupAgentProperties[brokerageName=$brokerageName, agentLicenseNumber=$agentLicenseNumber, agentAvatar=$agentAvatar]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (brokerageName != null) {
      json[r'brokerage_name'] = brokerageName;
    }
    if (agentLicenseNumber != null) {
      json[r'agent_license_number'] = agentLicenseNumber;
    }
    if (agentAvatar != null) {
      json[r'agent_avatar'] = agentAvatar;
    }
    return json;
  }

  /// Returns a new [GroupAgentProperties] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GroupAgentProperties fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GroupAgentProperties(
        brokerageName: json[r'brokerage_name'],
        agentLicenseNumber: json[r'agent_license_number'],
        agentAvatar: json[r'agent_avatar'],
    );

  static List<GroupAgentProperties> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GroupAgentProperties>[]
      : json.map((v) => GroupAgentProperties.fromJson(v)).toList(growable: true == growable);

  static Map<String, GroupAgentProperties> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GroupAgentProperties>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = GroupAgentProperties.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of GroupAgentProperties-objects as value to a dart map
  static Map<String, List<GroupAgentProperties>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GroupAgentProperties>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = GroupAgentProperties.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

