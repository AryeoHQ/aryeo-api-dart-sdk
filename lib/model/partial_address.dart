//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PartialAddress {
  /// Returns a new [PartialAddress] instance.
  PartialAddress({
    @required this.id,
    this.fullAddress,
    @required this.formattedAddress1,
    @required this.formattedAddress2,
    @required this.latitude,
    @required this.longitude,
    this.placeId,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.state,
    this.postalCode,
  });

  /// ID of address.
  int id;

  /// The full address string containing address_1 and address_2.
  String fullAddress;

  /// A formatted address string containing the street.
  String formattedAddress1;

  /// A formatted address string containing the city, state, and zipcode.
  String formattedAddress2;

  /// Latitude of the address.
  double latitude;

  /// Longitude of the address.
  double longitude;

  /// ID of place.
  String placeId;

  /// Address line 1
  String addressLine1;

  /// Address line 2
  String addressLine2;

  /// City
  String city;

  /// State
  String state;

  /// Postal Code
  String postalCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PartialAddress &&
     other.id == id &&
     other.fullAddress == fullAddress &&
     other.formattedAddress1 == formattedAddress1 &&
     other.formattedAddress2 == formattedAddress2 &&
     other.latitude == latitude &&
     other.longitude == longitude &&
     other.placeId == placeId &&
     other.addressLine1 == addressLine1 &&
     other.addressLine2 == addressLine2 &&
     other.city == city &&
     other.state == state &&
     other.postalCode == postalCode;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (fullAddress == null ? 0 : fullAddress.hashCode) +
    (formattedAddress1 == null ? 0 : formattedAddress1.hashCode) +
    (formattedAddress2 == null ? 0 : formattedAddress2.hashCode) +
    (latitude == null ? 0 : latitude.hashCode) +
    (longitude == null ? 0 : longitude.hashCode) +
    (placeId == null ? 0 : placeId.hashCode) +
    (addressLine1 == null ? 0 : addressLine1.hashCode) +
    (addressLine2 == null ? 0 : addressLine2.hashCode) +
    (city == null ? 0 : city.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (postalCode == null ? 0 : postalCode.hashCode);

  @override
  String toString() => 'PartialAddress[id=$id, fullAddress=$fullAddress, formattedAddress1=$formattedAddress1, formattedAddress2=$formattedAddress2, latitude=$latitude, longitude=$longitude, placeId=$placeId, addressLine1=$addressLine1, addressLine2=$addressLine2, city=$city, state=$state, postalCode=$postalCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (fullAddress != null) {
      json[r'full_address'] = fullAddress;
    }
      json[r'formatted_address_1'] = formattedAddress1;
      json[r'formatted_address_2'] = formattedAddress2;
      json[r'latitude'] = latitude;
      json[r'longitude'] = longitude;
    if (placeId != null) {
      json[r'place_id'] = placeId;
    }
    if (addressLine1 != null) {
      json[r'address_line_1'] = addressLine1;
    }
    if (addressLine2 != null) {
      json[r'address_line_2'] = addressLine2;
    }
    if (city != null) {
      json[r'city'] = city;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (postalCode != null) {
      json[r'postal_code'] = postalCode;
    }
    return json;
  }

  /// Returns a new [PartialAddress] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PartialAddress fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PartialAddress(
        id: json[r'id'],
        fullAddress: json[r'full_address'],
        formattedAddress1: json[r'formatted_address_1'],
        formattedAddress2: json[r'formatted_address_2'],
        latitude: json[r'latitude'],
        longitude: json[r'longitude'],
        placeId: json[r'place_id'],
        addressLine1: json[r'address_line_1'],
        addressLine2: json[r'address_line_2'],
        city: json[r'city'],
        state: json[r'state'],
        postalCode: json[r'postal_code'],
    );

  static List<PartialAddress> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PartialAddress>[]
      : json.map((v) => PartialAddress.fromJson(v)).toList(growable: true == growable);

  static Map<String, PartialAddress> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PartialAddress>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PartialAddress.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PartialAddress-objects as value to a dart map
  static Map<String, List<PartialAddress>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PartialAddress>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PartialAddress.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

