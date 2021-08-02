//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Address {
  /// Returns a new [Address] instance.
  Address({
    @required this.id,
    @required this.latitude,
    @required this.longitude,
    this.streetNumber,
    this.streetName,
    this.unitNumber,
    this.postalCode,
    this.city,
    this.cityRegion,
    this.countyOrParish,
    this.stateOrProvince,
    this.stateOrProvinceRegion,
    this.country,
    this.countryRegion,
    this.unparsedAddress,
    this.unparsedAddressPartOne,
    this.unparsedAddressPartTwo,
  });

  /// ID of the address.
  String id;

  /// The geographic latitude of some reference point of the location, specified in degrees and decimal parts. Positive numbers must not include the plus symbol.
  // minimum: -180
  // maximum: 180
  num latitude;

  /// The geographic longitude of some reference point of the location, specified in degrees and decimal parts. Positive numbers must not include the plus symbol.
  // minimum: -180
  // maximum: 180
  num longitude;

  /// The street number portion of a location's address. In some areas, the street number may contain non-numeric characters. This field can also contain extensions and modifiers to the street number, such as \"1/2\" or \"-B\".
  String streetNumber;

  /// The street name portion of a location's address.
  String streetName;

  /// The number or portion of a larger building or complex. Examples are: \"APT G\", \"55\", etc.
  String unitNumber;

  /// The postal code portion of a location's address.
  String postalCode;

  /// The city of a location's address.
  String city;

  /// A sub-section or area of a defined city. Examples would be SoHo in New York, NY, Ironbound in Newark, NJ or Inside the Beltway.
  String cityRegion;

  /// The County, Parish or other regional authority of the location.
  String countyOrParish;

  /// The ISO 3166-2 subdivision code for the state or province of the location. For example, “MA” for Massachusetts, United States.
  String stateOrProvince;

  /// A sub-section or area of a defined state or province. Examples would be the Keys in FL or Hudson Valley in NY.
  String stateOrProvinceRegion;

  /// The ISO 3166-1 country code for this for the country of the location.
  String country;

  /// A sub-section or area of a defined country. Examples would be Napa Valley in the US, or the Amalfi Coast in Italy.
  String countryRegion;

  /// Unparsed text representation of the address. 
  String unparsedAddress;

  /// Unparsed text representation of the first part of the address, typically including the street number, street name, and unit number if applicable.  
  String unparsedAddressPartOne;

  /// Unparsed text representation of the second part of the address, typically including the city, state or province, and postal code.  
  String unparsedAddressPartTwo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Address &&
     other.id == id &&
     other.latitude == latitude &&
     other.longitude == longitude &&
     other.streetNumber == streetNumber &&
     other.streetName == streetName &&
     other.unitNumber == unitNumber &&
     other.postalCode == postalCode &&
     other.city == city &&
     other.cityRegion == cityRegion &&
     other.countyOrParish == countyOrParish &&
     other.stateOrProvince == stateOrProvince &&
     other.stateOrProvinceRegion == stateOrProvinceRegion &&
     other.country == country &&
     other.countryRegion == countryRegion &&
     other.unparsedAddress == unparsedAddress &&
     other.unparsedAddressPartOne == unparsedAddressPartOne &&
     other.unparsedAddressPartTwo == unparsedAddressPartTwo;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (latitude == null ? 0 : latitude.hashCode) +
    (longitude == null ? 0 : longitude.hashCode) +
    (streetNumber == null ? 0 : streetNumber.hashCode) +
    (streetName == null ? 0 : streetName.hashCode) +
    (unitNumber == null ? 0 : unitNumber.hashCode) +
    (postalCode == null ? 0 : postalCode.hashCode) +
    (city == null ? 0 : city.hashCode) +
    (cityRegion == null ? 0 : cityRegion.hashCode) +
    (countyOrParish == null ? 0 : countyOrParish.hashCode) +
    (stateOrProvince == null ? 0 : stateOrProvince.hashCode) +
    (stateOrProvinceRegion == null ? 0 : stateOrProvinceRegion.hashCode) +
    (country == null ? 0 : country.hashCode) +
    (countryRegion == null ? 0 : countryRegion.hashCode) +
    (unparsedAddress == null ? 0 : unparsedAddress.hashCode) +
    (unparsedAddressPartOne == null ? 0 : unparsedAddressPartOne.hashCode) +
    (unparsedAddressPartTwo == null ? 0 : unparsedAddressPartTwo.hashCode);

  @override
  String toString() => 'Address[id=$id, latitude=$latitude, longitude=$longitude, streetNumber=$streetNumber, streetName=$streetName, unitNumber=$unitNumber, postalCode=$postalCode, city=$city, cityRegion=$cityRegion, countyOrParish=$countyOrParish, stateOrProvince=$stateOrProvince, stateOrProvinceRegion=$stateOrProvinceRegion, country=$country, countryRegion=$countryRegion, unparsedAddress=$unparsedAddress, unparsedAddressPartOne=$unparsedAddressPartOne, unparsedAddressPartTwo=$unparsedAddressPartTwo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'latitude'] = latitude;
      json[r'longitude'] = longitude;
    if (streetNumber != null) {
      json[r'street_number'] = streetNumber;
    }
    if (streetName != null) {
      json[r'street_name'] = streetName;
    }
    if (unitNumber != null) {
      json[r'unit_number'] = unitNumber;
    }
    if (postalCode != null) {
      json[r'postal_code'] = postalCode;
    }
    if (city != null) {
      json[r'city'] = city;
    }
    if (cityRegion != null) {
      json[r'city_region'] = cityRegion;
    }
    if (countyOrParish != null) {
      json[r'county_or_parish'] = countyOrParish;
    }
    if (stateOrProvince != null) {
      json[r'state_or_province'] = stateOrProvince;
    }
    if (stateOrProvinceRegion != null) {
      json[r'state_or_province_region'] = stateOrProvinceRegion;
    }
    if (country != null) {
      json[r'country'] = country;
    }
    if (countryRegion != null) {
      json[r'country_region'] = countryRegion;
    }
    if (unparsedAddress != null) {
      json[r'unparsed_address'] = unparsedAddress;
    }
    if (unparsedAddressPartOne != null) {
      json[r'unparsed_address_part_one'] = unparsedAddressPartOne;
    }
    if (unparsedAddressPartTwo != null) {
      json[r'unparsed_address_part_two'] = unparsedAddressPartTwo;
    }
    return json;
  }

  /// Returns a new [Address] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Address fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Address(
        id: json[r'id'],
        latitude: json[r'latitude'] == null ?
          null :
          json[r'latitude'].toDouble(),
        longitude: json[r'longitude'] == null ?
          null :
          json[r'longitude'].toDouble(),
        streetNumber: json[r'street_number'],
        streetName: json[r'street_name'],
        unitNumber: json[r'unit_number'],
        postalCode: json[r'postal_code'],
        city: json[r'city'],
        cityRegion: json[r'city_region'],
        countyOrParish: json[r'county_or_parish'],
        stateOrProvince: json[r'state_or_province'],
        stateOrProvinceRegion: json[r'state_or_province_region'],
        country: json[r'country'],
        countryRegion: json[r'country_region'],
        unparsedAddress: json[r'unparsed_address'],
        unparsedAddressPartOne: json[r'unparsed_address_part_one'],
        unparsedAddressPartTwo: json[r'unparsed_address_part_two'],
    );

  static List<Address> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Address>[]
      : json.map((dynamic value) => Address.fromJson(value)).toList(growable: true == growable);

  static Map<String, Address> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Address>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Address.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Address-objects as value to a dart map
  static Map<String, List<Address>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Address>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Address.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

