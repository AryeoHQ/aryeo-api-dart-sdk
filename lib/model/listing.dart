//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Listing {
  /// Returns a new [Listing] instance.
  Listing({
    @required this.id,
    @required this.address,
    this.mlsNumber,
    this.type,
    this.subType,
    this.status,
    this.standardStatus,
    this.description,
    this.lot,
    this.building,
    this.price,
    this.listAgent,
    this.coListAgent,
    this.images = const [],
    this.videos = const [],
    this.floorPlans = const [],
    this.interactiveContent = const [],
    this.propertyWebsite,
    this.orders = const [],
    @required this.downloadsEnabled,
  });

  /// ID of the listing. UUID Version 4.
  String id;

  Address address;

  /// The identifier for a listing on its local MLS. 
  String mlsNumber;

  /// General type of the listing, primarily categorizing its use case. Examples include residential and commercial. 
  ListingTypeEnum type;

  /// Further specifies the listing type. Examples include family residence and condominium.
  ListingSubTypeEnum subType;

  /// Local, regional, or otherwise custom status for the listing used by the parties involved in the listing transaction. While variable, these statuses are typically mapped to the listing's standard status.
  ListingStatusEnum status;

  /// The status of the listing as it reflects the state of the contract between the listing agent and seller or an agreement with a buyer, including Active, Active Under Contract, Canceled, Closed, Expired, Pending, and Withdrawn.
  ListingStandardStatusEnum standardStatus;

  /// Description of the selling points of the building and/or land for sale. 
  String description;

  ListingLot lot;

  ListingBuilding building;

  ListingPrice price;

  Group listAgent;

  Group coListAgent;

  /// images
  List<Image> images;

  /// videos
  List<Video> videos;

  /// floor_plans
  List<FloorPlan> floorPlans;

  /// interactive_content
  List<InteractiveContent> interactiveContent;

  PropertyWebsite propertyWebsite;

  /// orders
  List<Order> orders;

  /// Are downloads enabled for this listing?
  bool downloadsEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Listing &&
     other.id == id &&
     other.address == address &&
     other.mlsNumber == mlsNumber &&
     other.type == type &&
     other.subType == subType &&
     other.status == status &&
     other.standardStatus == standardStatus &&
     other.description == description &&
     other.lot == lot &&
     other.building == building &&
     other.price == price &&
     other.listAgent == listAgent &&
     other.coListAgent == coListAgent &&
     other.images == images &&
     other.videos == videos &&
     other.floorPlans == floorPlans &&
     other.interactiveContent == interactiveContent &&
     other.propertyWebsite == propertyWebsite &&
     other.orders == orders &&
     other.downloadsEnabled == downloadsEnabled;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (address == null ? 0 : address.hashCode) +
    (mlsNumber == null ? 0 : mlsNumber.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (subType == null ? 0 : subType.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (standardStatus == null ? 0 : standardStatus.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (lot == null ? 0 : lot.hashCode) +
    (building == null ? 0 : building.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (listAgent == null ? 0 : listAgent.hashCode) +
    (coListAgent == null ? 0 : coListAgent.hashCode) +
    (images == null ? 0 : images.hashCode) +
    (videos == null ? 0 : videos.hashCode) +
    (floorPlans == null ? 0 : floorPlans.hashCode) +
    (interactiveContent == null ? 0 : interactiveContent.hashCode) +
    (propertyWebsite == null ? 0 : propertyWebsite.hashCode) +
    (orders == null ? 0 : orders.hashCode) +
    (downloadsEnabled == null ? 0 : downloadsEnabled.hashCode);

  @override
  String toString() => 'Listing[id=$id, address=$address, mlsNumber=$mlsNumber, type=$type, subType=$subType, status=$status, standardStatus=$standardStatus, description=$description, lot=$lot, building=$building, price=$price, listAgent=$listAgent, coListAgent=$coListAgent, images=$images, videos=$videos, floorPlans=$floorPlans, interactiveContent=$interactiveContent, propertyWebsite=$propertyWebsite, orders=$orders, downloadsEnabled=$downloadsEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'address'] = address;
    if (mlsNumber != null) {
      json[r'mls_number'] = mlsNumber;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (subType != null) {
      json[r'sub_type'] = subType;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (standardStatus != null) {
      json[r'standard_status'] = standardStatus;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (lot != null) {
      json[r'lot'] = lot;
    }
    if (building != null) {
      json[r'building'] = building;
    }
    if (price != null) {
      json[r'price'] = price;
    }
    if (listAgent != null) {
      json[r'list_agent'] = listAgent;
    }
    if (coListAgent != null) {
      json[r'co_list_agent'] = coListAgent;
    }
    if (images != null) {
      json[r'images'] = images;
    }
    if (videos != null) {
      json[r'videos'] = videos;
    }
    if (floorPlans != null) {
      json[r'floor_plans'] = floorPlans;
    }
    if (interactiveContent != null) {
      json[r'interactive_content'] = interactiveContent;
    }
    if (propertyWebsite != null) {
      json[r'property_website'] = propertyWebsite;
    }
    if (orders != null) {
      json[r'orders'] = orders;
    }
      json[r'downloads_enabled'] = downloadsEnabled;
    return json;
  }

  /// Returns a new [Listing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Listing fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Listing(
        id: mapValueOfType<String>(json, r'id'),
        address: Address.fromJson(json[r'address']),
        mlsNumber: mapValueOfType<String>(json, r'mls_number'),
        type: ListingTypeEnum.fromJson(json[r'type']),
        subType: ListingSubTypeEnum.fromJson(json[r'sub_type']),
        status: ListingStatusEnum.fromJson(json[r'status']),
        standardStatus: ListingStandardStatusEnum.fromJson(json[r'standard_status']),
        description: mapValueOfType<String>(json, r'description'),
        lot: ListingLot.fromJson(json[r'lot']),
        building: ListingBuilding.fromJson(json[r'building']),
        price: ListingPrice.fromJson(json[r'price']),
        listAgent: Group.fromJson(json[r'list_agent']),
        coListAgent: Group.fromJson(json[r'co_list_agent']),
        images: Image.listFromJson(json[r'images']),
        videos: Video.listFromJson(json[r'videos']),
        floorPlans: FloorPlan.listFromJson(json[r'floor_plans']),
        interactiveContent: InteractiveContent.listFromJson(json[r'interactive_content']),
        propertyWebsite: PropertyWebsite.fromJson(json[r'property_website']),
        orders: Order.listFromJson(json[r'orders']),
        downloadsEnabled: mapValueOfType<bool>(json, r'downloads_enabled'),
      );
    }
    return null;
  }

  static List<Listing> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Listing.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Listing>[];

  static Map<String, Listing> mapFromJson(dynamic json) {
    final map = <String, Listing>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Listing.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Listing-objects as value to a dart map
  static Map<String, List<Listing>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Listing>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Listing.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// General type of the listing, primarily categorizing its use case. Examples include residential and commercial. 
class ListingTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ListingTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const BUSINESS_OPPORTUNITY = ListingTypeEnum._(r'BUSINESS_OPPORTUNITY');
  static const COMMERCIAL_LEASE = ListingTypeEnum._(r'COMMERCIAL_LEASE');
  static const COMMERCIAL_SALE = ListingTypeEnum._(r'COMMERCIAL_SALE');
  static const FARM = ListingTypeEnum._(r'FARM');
  static const LAND = ListingTypeEnum._(r'LAND');
  static const MANUFACTURED_IN_PARK = ListingTypeEnum._(r'MANUFACTURED_IN_PARK');
  static const RESIDENTIAL = ListingTypeEnum._(r'RESIDENTIAL');
  static const RESIDENTIAL_INCOME = ListingTypeEnum._(r'RESIDENTIAL_INCOME');
  static const RESIDENTIAL_LEASE = ListingTypeEnum._(r'RESIDENTIAL_LEASE');

  /// List of all possible values in this [enum][ListingTypeEnum].
  static const values = <ListingTypeEnum>[
    BUSINESS_OPPORTUNITY,
    COMMERCIAL_LEASE,
    COMMERCIAL_SALE,
    FARM,
    LAND,
    MANUFACTURED_IN_PARK,
    RESIDENTIAL,
    RESIDENTIAL_INCOME,
    RESIDENTIAL_LEASE,
  ];

  static ListingTypeEnum fromJson(dynamic value) =>
    ListingTypeEnumTypeTransformer().decode(value);

  static List<ListingTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListingTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListingTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [ListingTypeEnum] to String,
/// and [decode] dynamic data back to [ListingTypeEnum].
class ListingTypeEnumTypeTransformer {
  factory ListingTypeEnumTypeTransformer() => _instance ??= const ListingTypeEnumTypeTransformer._();

  const ListingTypeEnumTypeTransformer._();

  String encode(ListingTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListingTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListingTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'BUSINESS_OPPORTUNITY': return ListingTypeEnum.BUSINESS_OPPORTUNITY;
        case r'COMMERCIAL_LEASE': return ListingTypeEnum.COMMERCIAL_LEASE;
        case r'COMMERCIAL_SALE': return ListingTypeEnum.COMMERCIAL_SALE;
        case r'FARM': return ListingTypeEnum.FARM;
        case r'LAND': return ListingTypeEnum.LAND;
        case r'MANUFACTURED_IN_PARK': return ListingTypeEnum.MANUFACTURED_IN_PARK;
        case r'RESIDENTIAL': return ListingTypeEnum.RESIDENTIAL;
        case r'RESIDENTIAL_INCOME': return ListingTypeEnum.RESIDENTIAL_INCOME;
        case r'RESIDENTIAL_LEASE': return ListingTypeEnum.RESIDENTIAL_LEASE;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ListingTypeEnumTypeTransformer] instance.
  static ListingTypeEnumTypeTransformer _instance;
}


/// Further specifies the listing type. Examples include family residence and condominium.
class ListingSubTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ListingSubTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const APARTMENT = ListingSubTypeEnum._(r'APARTMENT');
  static const CONDOMINIUM = ListingSubTypeEnum._(r'CONDOMINIUM');
  static const DUPLEX = ListingSubTypeEnum._(r'DUPLEX');
  static const FARM = ListingSubTypeEnum._(r'FARM');
  static const SINGLE_FAMILY_RESIDENCE = ListingSubTypeEnum._(r'SINGLE_FAMILY_RESIDENCE');
  static const TIMESHARE = ListingSubTypeEnum._(r'TIMESHARE');
  static const TOWNHOUSE = ListingSubTypeEnum._(r'TOWNHOUSE');
  static const OFFICE = ListingSubTypeEnum._(r'OFFICE');

  /// List of all possible values in this [enum][ListingSubTypeEnum].
  static const values = <ListingSubTypeEnum>[
    APARTMENT,
    CONDOMINIUM,
    DUPLEX,
    FARM,
    SINGLE_FAMILY_RESIDENCE,
    TIMESHARE,
    TOWNHOUSE,
    OFFICE,
  ];

  static ListingSubTypeEnum fromJson(dynamic value) =>
    ListingSubTypeEnumTypeTransformer().decode(value);

  static List<ListingSubTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListingSubTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListingSubTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [ListingSubTypeEnum] to String,
/// and [decode] dynamic data back to [ListingSubTypeEnum].
class ListingSubTypeEnumTypeTransformer {
  factory ListingSubTypeEnumTypeTransformer() => _instance ??= const ListingSubTypeEnumTypeTransformer._();

  const ListingSubTypeEnumTypeTransformer._();

  String encode(ListingSubTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListingSubTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListingSubTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'APARTMENT': return ListingSubTypeEnum.APARTMENT;
        case r'CONDOMINIUM': return ListingSubTypeEnum.CONDOMINIUM;
        case r'DUPLEX': return ListingSubTypeEnum.DUPLEX;
        case r'FARM': return ListingSubTypeEnum.FARM;
        case r'SINGLE_FAMILY_RESIDENCE': return ListingSubTypeEnum.SINGLE_FAMILY_RESIDENCE;
        case r'TIMESHARE': return ListingSubTypeEnum.TIMESHARE;
        case r'TOWNHOUSE': return ListingSubTypeEnum.TOWNHOUSE;
        case r'OFFICE': return ListingSubTypeEnum.OFFICE;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ListingSubTypeEnumTypeTransformer] instance.
  static ListingSubTypeEnumTypeTransformer _instance;
}


/// Local, regional, or otherwise custom status for the listing used by the parties involved in the listing transaction. While variable, these statuses are typically mapped to the listing's standard status.
class ListingStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ListingStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const DRAFT = ListingStatusEnum._(r'DRAFT');
  static const COMING_SOON = ListingStatusEnum._(r'COMING_SOON');
  static const FOR_SALE = ListingStatusEnum._(r'FOR_SALE');
  static const FOR_LEASE = ListingStatusEnum._(r'FOR_LEASE');
  static const PENDING_SALE = ListingStatusEnum._(r'PENDING_SALE');
  static const PENDING_LEASE = ListingStatusEnum._(r'PENDING_LEASE');
  static const SOLD = ListingStatusEnum._(r'SOLD');
  static const LEASED = ListingStatusEnum._(r'LEASED');
  static const OFF_MARKET = ListingStatusEnum._(r'OFF_MARKET');

  /// List of all possible values in this [enum][ListingStatusEnum].
  static const values = <ListingStatusEnum>[
    DRAFT,
    COMING_SOON,
    FOR_SALE,
    FOR_LEASE,
    PENDING_SALE,
    PENDING_LEASE,
    SOLD,
    LEASED,
    OFF_MARKET,
  ];

  static ListingStatusEnum fromJson(dynamic value) =>
    ListingStatusEnumTypeTransformer().decode(value);

  static List<ListingStatusEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListingStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListingStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [ListingStatusEnum] to String,
/// and [decode] dynamic data back to [ListingStatusEnum].
class ListingStatusEnumTypeTransformer {
  factory ListingStatusEnumTypeTransformer() => _instance ??= const ListingStatusEnumTypeTransformer._();

  const ListingStatusEnumTypeTransformer._();

  String encode(ListingStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListingStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListingStatusEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'DRAFT': return ListingStatusEnum.DRAFT;
        case r'COMING_SOON': return ListingStatusEnum.COMING_SOON;
        case r'FOR_SALE': return ListingStatusEnum.FOR_SALE;
        case r'FOR_LEASE': return ListingStatusEnum.FOR_LEASE;
        case r'PENDING_SALE': return ListingStatusEnum.PENDING_SALE;
        case r'PENDING_LEASE': return ListingStatusEnum.PENDING_LEASE;
        case r'SOLD': return ListingStatusEnum.SOLD;
        case r'LEASED': return ListingStatusEnum.LEASED;
        case r'OFF_MARKET': return ListingStatusEnum.OFF_MARKET;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ListingStatusEnumTypeTransformer] instance.
  static ListingStatusEnumTypeTransformer _instance;
}


/// The status of the listing as it reflects the state of the contract between the listing agent and seller or an agreement with a buyer, including Active, Active Under Contract, Canceled, Closed, Expired, Pending, and Withdrawn.
class ListingStandardStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ListingStandardStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const ACTIVE = ListingStandardStatusEnum._(r'ACTIVE');
  static const ACTIVE_UNDER_CONTRACT = ListingStandardStatusEnum._(r'ACTIVE_UNDER_CONTRACT');
  static const CANCELED = ListingStandardStatusEnum._(r'CANCELED');
  static const CLOSED = ListingStandardStatusEnum._(r'CLOSED');
  static const COMING_SOON = ListingStandardStatusEnum._(r'COMING_SOON');
  static const DELETE = ListingStandardStatusEnum._(r'DELETE');
  static const EXPIRED = ListingStandardStatusEnum._(r'EXPIRED');
  static const HOLD = ListingStandardStatusEnum._(r'HOLD');
  static const INCOMPLETE = ListingStandardStatusEnum._(r'INCOMPLETE');
  static const PENDING = ListingStandardStatusEnum._(r'PENDING');
  static const WITHDRAWN = ListingStandardStatusEnum._(r'WITHDRAWN');

  /// List of all possible values in this [enum][ListingStandardStatusEnum].
  static const values = <ListingStandardStatusEnum>[
    ACTIVE,
    ACTIVE_UNDER_CONTRACT,
    CANCELED,
    CLOSED,
    COMING_SOON,
    DELETE,
    EXPIRED,
    HOLD,
    INCOMPLETE,
    PENDING,
    WITHDRAWN,
  ];

  static ListingStandardStatusEnum fromJson(dynamic value) =>
    ListingStandardStatusEnumTypeTransformer().decode(value);

  static List<ListingStandardStatusEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListingStandardStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListingStandardStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [ListingStandardStatusEnum] to String,
/// and [decode] dynamic data back to [ListingStandardStatusEnum].
class ListingStandardStatusEnumTypeTransformer {
  factory ListingStandardStatusEnumTypeTransformer() => _instance ??= const ListingStandardStatusEnumTypeTransformer._();

  const ListingStandardStatusEnumTypeTransformer._();

  String encode(ListingStandardStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListingStandardStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListingStandardStatusEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'ACTIVE': return ListingStandardStatusEnum.ACTIVE;
        case r'ACTIVE_UNDER_CONTRACT': return ListingStandardStatusEnum.ACTIVE_UNDER_CONTRACT;
        case r'CANCELED': return ListingStandardStatusEnum.CANCELED;
        case r'CLOSED': return ListingStandardStatusEnum.CLOSED;
        case r'COMING_SOON': return ListingStandardStatusEnum.COMING_SOON;
        case r'DELETE': return ListingStandardStatusEnum.DELETE;
        case r'EXPIRED': return ListingStandardStatusEnum.EXPIRED;
        case r'HOLD': return ListingStandardStatusEnum.HOLD;
        case r'INCOMPLETE': return ListingStandardStatusEnum.INCOMPLETE;
        case r'PENDING': return ListingStandardStatusEnum.PENDING;
        case r'WITHDRAWN': return ListingStandardStatusEnum.WITHDRAWN;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ListingStandardStatusEnumTypeTransformer] instance.
  static ListingStandardStatusEnumTypeTransformer _instance;
}


