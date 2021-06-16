//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PartialListing {
  /// Returns a new [PartialListing] instance.
  PartialListing({
    @required this.id,
    @required this.address,
    @required this.deliveryStatus,
    this.thumbnailUrl,
    this.price,
    this.brandedUrl,
    this.squareFeet,
    this.bedrooms,
    this.bathrooms,
    @required this.downloadsEnabled,
    this.status,
    this.propertyDetails,
    this.agent,
    this.coAgent,
  });

  /// ID of the listing.
  String id;

  PartialAddress address;

  /// Has the listing been delivered?
  PartialListingDeliveryStatusEnum deliveryStatus;

  /// Thumbnail URL for the listing.
  String thumbnailUrl;

  /// The price of the property in dollars.
  int price;

  /// URL for branded property website.
  String brandedUrl;

  /// Total number of square feet.
  num squareFeet;

  /// Number of bedrooms.
  int bedrooms;

  /// Number of bathrooms.
  num bathrooms;

  /// Are downloads enabled for this listing?
  bool downloadsEnabled;

  /// Sales status for the listing.
  PartialListingStatusEnum status;

  PropertyDetails propertyDetails;

  PartialGroup agent;

  PartialGroup coAgent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PartialListing &&
     other.id == id &&
     other.address == address &&
     other.deliveryStatus == deliveryStatus &&
     other.thumbnailUrl == thumbnailUrl &&
     other.price == price &&
     other.brandedUrl == brandedUrl &&
     other.squareFeet == squareFeet &&
     other.bedrooms == bedrooms &&
     other.bathrooms == bathrooms &&
     other.downloadsEnabled == downloadsEnabled &&
     other.status == status &&
     other.propertyDetails == propertyDetails &&
     other.agent == agent &&
     other.coAgent == coAgent;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (address == null ? 0 : address.hashCode) +
    (deliveryStatus == null ? 0 : deliveryStatus.hashCode) +
    (thumbnailUrl == null ? 0 : thumbnailUrl.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (brandedUrl == null ? 0 : brandedUrl.hashCode) +
    (squareFeet == null ? 0 : squareFeet.hashCode) +
    (bedrooms == null ? 0 : bedrooms.hashCode) +
    (bathrooms == null ? 0 : bathrooms.hashCode) +
    (downloadsEnabled == null ? 0 : downloadsEnabled.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (propertyDetails == null ? 0 : propertyDetails.hashCode) +
    (agent == null ? 0 : agent.hashCode) +
    (coAgent == null ? 0 : coAgent.hashCode);

  @override
  String toString() => 'PartialListing[id=$id, address=$address, deliveryStatus=$deliveryStatus, thumbnailUrl=$thumbnailUrl, price=$price, brandedUrl=$brandedUrl, squareFeet=$squareFeet, bedrooms=$bedrooms, bathrooms=$bathrooms, downloadsEnabled=$downloadsEnabled, status=$status, propertyDetails=$propertyDetails, agent=$agent, coAgent=$coAgent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'address'] = address;
      json[r'delivery_status'] = deliveryStatus;
    if (thumbnailUrl != null) {
      json[r'thumbnail_url'] = thumbnailUrl;
    }
    if (price != null) {
      json[r'price'] = price;
    }
    if (brandedUrl != null) {
      json[r'branded_url'] = brandedUrl;
    }
    if (squareFeet != null) {
      json[r'square_feet'] = squareFeet;
    }
    if (bedrooms != null) {
      json[r'bedrooms'] = bedrooms;
    }
    if (bathrooms != null) {
      json[r'bathrooms'] = bathrooms;
    }
      json[r'downloads_enabled'] = downloadsEnabled;
    if (status != null) {
      json[r'status'] = status;
    }
    if (propertyDetails != null) {
      json[r'property_details'] = propertyDetails;
    }
    if (agent != null) {
      json[r'agent'] = agent;
    }
    if (coAgent != null) {
      json[r'co_agent'] = coAgent;
    }
    return json;
  }

  /// Returns a new [PartialListing] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PartialListing fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PartialListing(
        id: json[r'id'],
        address: PartialAddress.fromJson(json[r'address']),
        deliveryStatus: PartialListingDeliveryStatusEnum.fromJson(json[r'delivery_status']),
        thumbnailUrl: json[r'thumbnail_url'],
        price: json[r'price'],
        brandedUrl: json[r'branded_url'],
        squareFeet: json[r'square_feet'] == null ?
          null :
          json[r'square_feet'].toDouble(),
        bedrooms: json[r'bedrooms'],
        bathrooms: json[r'bathrooms'] == null ?
          null :
          json[r'bathrooms'].toDouble(),
        downloadsEnabled: json[r'downloads_enabled'],
        status: PartialListingStatusEnum.fromJson(json[r'status']),
        propertyDetails: PropertyDetails.fromJson(json[r'property_details']),
        agent: PartialGroup.fromJson(json[r'agent']),
        coAgent: PartialGroup.fromJson(json[r'co_agent']),
    );

  static List<PartialListing> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PartialListing>[]
      : json.map((v) => PartialListing.fromJson(v)).toList(growable: true == growable);

  static Map<String, PartialListing> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PartialListing>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PartialListing.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PartialListing-objects as value to a dart map
  static Map<String, List<PartialListing>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PartialListing>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PartialListing.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Has the listing been delivered?
class PartialListingDeliveryStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PartialListingDeliveryStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const delivered = PartialListingDeliveryStatusEnum._(r'delivered');
  static const undelivered = PartialListingDeliveryStatusEnum._(r'undelivered');

  /// List of all possible values in this [enum][PartialListingDeliveryStatusEnum].
  static const values = <PartialListingDeliveryStatusEnum>[
    delivered,
    undelivered,
  ];

  static PartialListingDeliveryStatusEnum fromJson(dynamic value) =>
    PartialListingDeliveryStatusEnumTypeTransformer().decode(value);

  static List<PartialListingDeliveryStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PartialListingDeliveryStatusEnum>[]
      : json
          .map((value) => PartialListingDeliveryStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [PartialListingDeliveryStatusEnum] to String,
/// and [decode] dynamic data back to [PartialListingDeliveryStatusEnum].
class PartialListingDeliveryStatusEnumTypeTransformer {
  const PartialListingDeliveryStatusEnumTypeTransformer._();

  factory PartialListingDeliveryStatusEnumTypeTransformer() => _instance ??= PartialListingDeliveryStatusEnumTypeTransformer._();

  String encode(PartialListingDeliveryStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PartialListingDeliveryStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PartialListingDeliveryStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'delivered': return PartialListingDeliveryStatusEnum.delivered;
      case r'undelivered': return PartialListingDeliveryStatusEnum.undelivered;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PartialListingDeliveryStatusEnumTypeTransformer] instance.
  static PartialListingDeliveryStatusEnumTypeTransformer _instance;
}

/// Sales status for the listing.
class PartialListingStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PartialListingStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const offMarket = PartialListingStatusEnum._(r'Off Market');
  static const pendingLease = PartialListingStatusEnum._(r'Pending Lease');
  static const vacationRental = PartialListingStatusEnum._(r'Vacation Rental');
  static const leased = PartialListingStatusEnum._(r'Leased');
  static const forSale = PartialListingStatusEnum._(r'For Sale');
  static const draft = PartialListingStatusEnum._(r'Draft');
  static const comingSoon = PartialListingStatusEnum._(r'Coming Soon');
  static const soldm = PartialListingStatusEnum._(r'Soldm');
  static const NULL = PartialListingStatusEnum._(r'NULL');
  static const forLease = PartialListingStatusEnum._(r'For Lease');
  static const pendingSale = PartialListingStatusEnum._(r'Pending Sale');
  static const priceReduction = PartialListingStatusEnum._(r'Price Reduction');
  static const sold = PartialListingStatusEnum._(r'Sold');

  /// List of all possible values in this [enum][PartialListingStatusEnum].
  static const values = <PartialListingStatusEnum>[
    offMarket,
    pendingLease,
    vacationRental,
    leased,
    forSale,
    draft,
    comingSoon,
    soldm,
    NULL,
    forLease,
    pendingSale,
    priceReduction,
    sold,
  ];

  static PartialListingStatusEnum fromJson(dynamic value) =>
    PartialListingStatusEnumTypeTransformer().decode(value);

  static List<PartialListingStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PartialListingStatusEnum>[]
      : json
          .map((value) => PartialListingStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [PartialListingStatusEnum] to String,
/// and [decode] dynamic data back to [PartialListingStatusEnum].
class PartialListingStatusEnumTypeTransformer {
  const PartialListingStatusEnumTypeTransformer._();

  factory PartialListingStatusEnumTypeTransformer() => _instance ??= PartialListingStatusEnumTypeTransformer._();

  String encode(PartialListingStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PartialListingStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PartialListingStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'Off Market': return PartialListingStatusEnum.offMarket;
      case r'Pending Lease': return PartialListingStatusEnum.pendingLease;
      case r'Vacation Rental': return PartialListingStatusEnum.vacationRental;
      case r'Leased': return PartialListingStatusEnum.leased;
      case r'For Sale': return PartialListingStatusEnum.forSale;
      case r'Draft': return PartialListingStatusEnum.draft;
      case r'Coming Soon': return PartialListingStatusEnum.comingSoon;
      case r'Soldm': return PartialListingStatusEnum.soldm;
      case r'NULL': return PartialListingStatusEnum.NULL;
      case r'For Lease': return PartialListingStatusEnum.forLease;
      case r'Pending Sale': return PartialListingStatusEnum.pendingSale;
      case r'Price Reduction': return PartialListingStatusEnum.priceReduction;
      case r'Sold': return PartialListingStatusEnum.sold;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PartialListingStatusEnumTypeTransformer] instance.
  static PartialListingStatusEnumTypeTransformer _instance;
}

