//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PropertyDetails {
  /// Returns a new [PropertyDetails] instance.
  PropertyDetails({
    this.price,
    this.mlsNumber,
    this.bedrooms,
    this.bathrooms,
    this.squareFeet,
    this.lotAcres,
    this.parkingSpots,
    this.yearBuilt,
    this.propertyType,
    this.description,
  });

  /// The price of the property in dollars.
  int price;

  /// A number assigned to a real-estate listing for the purposes of information sharing.
  String mlsNumber;

  /// Number of bedrooms.
  int bedrooms;

  /// Number of bathrooms. Represented as a number in order to support half-baths.
  num bathrooms;

  /// Total number of square feet.
  num squareFeet;

  /// Total acres.
  num lotAcres;

  /// Number of parking spaces.
  int parkingSpots;

  /// Year the property was built.
  int yearBuilt;

  /// Type of property.
  PropertyDetailsPropertyTypeEnum propertyType;

  /// Property description.
  String description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PropertyDetails &&
     other.price == price &&
     other.mlsNumber == mlsNumber &&
     other.bedrooms == bedrooms &&
     other.bathrooms == bathrooms &&
     other.squareFeet == squareFeet &&
     other.lotAcres == lotAcres &&
     other.parkingSpots == parkingSpots &&
     other.yearBuilt == yearBuilt &&
     other.propertyType == propertyType &&
     other.description == description;

  @override
  int get hashCode =>
    (price == null ? 0 : price.hashCode) +
    (mlsNumber == null ? 0 : mlsNumber.hashCode) +
    (bedrooms == null ? 0 : bedrooms.hashCode) +
    (bathrooms == null ? 0 : bathrooms.hashCode) +
    (squareFeet == null ? 0 : squareFeet.hashCode) +
    (lotAcres == null ? 0 : lotAcres.hashCode) +
    (parkingSpots == null ? 0 : parkingSpots.hashCode) +
    (yearBuilt == null ? 0 : yearBuilt.hashCode) +
    (propertyType == null ? 0 : propertyType.hashCode) +
    (description == null ? 0 : description.hashCode);

  @override
  String toString() => 'PropertyDetails[price=$price, mlsNumber=$mlsNumber, bedrooms=$bedrooms, bathrooms=$bathrooms, squareFeet=$squareFeet, lotAcres=$lotAcres, parkingSpots=$parkingSpots, yearBuilt=$yearBuilt, propertyType=$propertyType, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (price != null) {
      json[r'price'] = price;
    }
    if (mlsNumber != null) {
      json[r'mls_number'] = mlsNumber;
    }
    if (bedrooms != null) {
      json[r'bedrooms'] = bedrooms;
    }
    if (bathrooms != null) {
      json[r'bathrooms'] = bathrooms;
    }
    if (squareFeet != null) {
      json[r'square_feet'] = squareFeet;
    }
    if (lotAcres != null) {
      json[r'lot_acres'] = lotAcres;
    }
    if (parkingSpots != null) {
      json[r'parking_spots'] = parkingSpots;
    }
    if (yearBuilt != null) {
      json[r'year_built'] = yearBuilt;
    }
    if (propertyType != null) {
      json[r'property_type'] = propertyType;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    return json;
  }

  /// Returns a new [PropertyDetails] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PropertyDetails fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PropertyDetails(
        price: json[r'price'],
        mlsNumber: json[r'mls_number'],
        bedrooms: json[r'bedrooms'],
        bathrooms: json[r'bathrooms'] == null ?
          null :
          json[r'bathrooms'].toDouble(),
        squareFeet: json[r'square_feet'] == null ?
          null :
          json[r'square_feet'].toDouble(),
        lotAcres: json[r'lot_acres'] == null ?
          null :
          json[r'lot_acres'].toDouble(),
        parkingSpots: json[r'parking_spots'],
        yearBuilt: json[r'year_built'],
        propertyType: PropertyDetailsPropertyTypeEnum.fromJson(json[r'property_type']),
        description: json[r'description'],
    );

  static List<PropertyDetails> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PropertyDetails>[]
      : json.map((dynamic value) => PropertyDetails.fromJson(value)).toList(growable: true == growable);

  static Map<String, PropertyDetails> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PropertyDetails>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = PropertyDetails.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PropertyDetails-objects as value to a dart map
  static Map<String, List<PropertyDetails>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PropertyDetails>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = PropertyDetails.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

/// Type of property.
class PropertyDetailsPropertyTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PropertyDetailsPropertyTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const singleFamily = PropertyDetailsPropertyTypeEnum._(r'Single Family');
  static const singleFamilyAttached = PropertyDetailsPropertyTypeEnum._(r'Single Family Attached');
  static const singleFamilyDetached = PropertyDetailsPropertyTypeEnum._(r'Single Family Detached');
  static const colonial = PropertyDetailsPropertyTypeEnum._(r'Colonial');
  static const condo = PropertyDetailsPropertyTypeEnum._(r'Condo');
  static const townhome = PropertyDetailsPropertyTypeEnum._(r'Townhome');
  static const twinhome = PropertyDetailsPropertyTypeEnum._(r'Twinhome');
  static const duplex = PropertyDetailsPropertyTypeEnum._(r'Duplex');
  static const lot = PropertyDetailsPropertyTypeEnum._(r'Lot');
  static const land = PropertyDetailsPropertyTypeEnum._(r'Land');
  static const manufacturedHome = PropertyDetailsPropertyTypeEnum._(r'Manufactured Home');
  static const semiDetached = PropertyDetailsPropertyTypeEnum._(r'Semi-Detached');
  static const rental = PropertyDetailsPropertyTypeEnum._(r'Rental');
  static const rowHouse = PropertyDetailsPropertyTypeEnum._(r'Row House');
  static const horseFarm = PropertyDetailsPropertyTypeEnum._(r'Horse Farm');
  static const other = PropertyDetailsPropertyTypeEnum._(r'Other');

  /// List of all possible values in this [enum][PropertyDetailsPropertyTypeEnum].
  static const values = <PropertyDetailsPropertyTypeEnum>[
    singleFamily,
    singleFamilyAttached,
    singleFamilyDetached,
    colonial,
    condo,
    townhome,
    twinhome,
    duplex,
    lot,
    land,
    manufacturedHome,
    semiDetached,
    rental,
    rowHouse,
    horseFarm,
    other,
  ];

  static PropertyDetailsPropertyTypeEnum fromJson(dynamic value) =>
    PropertyDetailsPropertyTypeEnumTypeTransformer().decode(value);

  static List<PropertyDetailsPropertyTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PropertyDetailsPropertyTypeEnum>[]
      : json
          .map((value) => PropertyDetailsPropertyTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [PropertyDetailsPropertyTypeEnum] to String,
/// and [decode] dynamic data back to [PropertyDetailsPropertyTypeEnum].
class PropertyDetailsPropertyTypeEnumTypeTransformer {
  const PropertyDetailsPropertyTypeEnumTypeTransformer._();

  factory PropertyDetailsPropertyTypeEnumTypeTransformer() => _instance ??= PropertyDetailsPropertyTypeEnumTypeTransformer._();

  String encode(PropertyDetailsPropertyTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PropertyDetailsPropertyTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PropertyDetailsPropertyTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'Single Family': return PropertyDetailsPropertyTypeEnum.singleFamily;
      case r'Single Family Attached': return PropertyDetailsPropertyTypeEnum.singleFamilyAttached;
      case r'Single Family Detached': return PropertyDetailsPropertyTypeEnum.singleFamilyDetached;
      case r'Colonial': return PropertyDetailsPropertyTypeEnum.colonial;
      case r'Condo': return PropertyDetailsPropertyTypeEnum.condo;
      case r'Townhome': return PropertyDetailsPropertyTypeEnum.townhome;
      case r'Twinhome': return PropertyDetailsPropertyTypeEnum.twinhome;
      case r'Duplex': return PropertyDetailsPropertyTypeEnum.duplex;
      case r'Lot': return PropertyDetailsPropertyTypeEnum.lot;
      case r'Land': return PropertyDetailsPropertyTypeEnum.land;
      case r'Manufactured Home': return PropertyDetailsPropertyTypeEnum.manufacturedHome;
      case r'Semi-Detached': return PropertyDetailsPropertyTypeEnum.semiDetached;
      case r'Rental': return PropertyDetailsPropertyTypeEnum.rental;
      case r'Row House': return PropertyDetailsPropertyTypeEnum.rowHouse;
      case r'Horse Farm': return PropertyDetailsPropertyTypeEnum.horseFarm;
      case r'Other': return PropertyDetailsPropertyTypeEnum.other;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PropertyDetailsPropertyTypeEnumTypeTransformer] instance.
  static PropertyDetailsPropertyTypeEnumTypeTransformer _instance;
}

