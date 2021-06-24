//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Listing {
  /// Returns a new [Listing] instance.
  Listing({
    @required this.id,
    @required this.address,
    @required this.deliveryStatus,
    this.thumbnailUrl,
    this.agent,
    this.coAgent,
    this.images = const [],
    this.videos = const [],
    this.floorPlans = const [],
    this.propertyWebsites,
    this.interactiveContent = const [],
    this.propertyDetails,
    @required this.downloadsEnabled,
    this.orders = const [],
  });

  /// ID of the listing.
  String id;

  PartialAddress address;

  /// Has this listing been delivered?
  ListingDeliveryStatusEnum deliveryStatus;

  /// Thumbnail URL for the listing.
  String thumbnailUrl;

  Group agent;

  Group coAgent;

  /// images
  List<Image> images;

  /// videos
  List<Video> videos;

  /// floor_plans
  List<FloorPlan> floorPlans;

  PropertyWebsites propertyWebsites;

  /// interactive_content
  List<InteractiveContent> interactiveContent;

  PropertyDetails propertyDetails;

  /// Are downloads enabled for this listing?
  bool downloadsEnabled;

  /// orders
  List<Order> orders;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Listing &&
     other.id == id &&
     other.address == address &&
     other.deliveryStatus == deliveryStatus &&
     other.thumbnailUrl == thumbnailUrl &&
     other.agent == agent &&
     other.coAgent == coAgent &&
     other.images == images &&
     other.videos == videos &&
     other.floorPlans == floorPlans &&
     other.propertyWebsites == propertyWebsites &&
     other.interactiveContent == interactiveContent &&
     other.propertyDetails == propertyDetails &&
     other.downloadsEnabled == downloadsEnabled &&
     other.orders == orders;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (address == null ? 0 : address.hashCode) +
    (deliveryStatus == null ? 0 : deliveryStatus.hashCode) +
    (thumbnailUrl == null ? 0 : thumbnailUrl.hashCode) +
    (agent == null ? 0 : agent.hashCode) +
    (coAgent == null ? 0 : coAgent.hashCode) +
    (images == null ? 0 : images.hashCode) +
    (videos == null ? 0 : videos.hashCode) +
    (floorPlans == null ? 0 : floorPlans.hashCode) +
    (propertyWebsites == null ? 0 : propertyWebsites.hashCode) +
    (interactiveContent == null ? 0 : interactiveContent.hashCode) +
    (propertyDetails == null ? 0 : propertyDetails.hashCode) +
    (downloadsEnabled == null ? 0 : downloadsEnabled.hashCode) +
    (orders == null ? 0 : orders.hashCode);

  @override
  String toString() => 'Listing[id=$id, address=$address, deliveryStatus=$deliveryStatus, thumbnailUrl=$thumbnailUrl, agent=$agent, coAgent=$coAgent, images=$images, videos=$videos, floorPlans=$floorPlans, propertyWebsites=$propertyWebsites, interactiveContent=$interactiveContent, propertyDetails=$propertyDetails, downloadsEnabled=$downloadsEnabled, orders=$orders]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'address'] = address;
      json[r'delivery_status'] = deliveryStatus;
    if (thumbnailUrl != null) {
      json[r'thumbnail_url'] = thumbnailUrl;
    }
    if (agent != null) {
      json[r'agent'] = agent;
    }
    if (coAgent != null) {
      json[r'co_agent'] = coAgent;
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
    if (propertyWebsites != null) {
      json[r'property_websites'] = propertyWebsites;
    }
    if (interactiveContent != null) {
      json[r'interactive_content'] = interactiveContent;
    }
    if (propertyDetails != null) {
      json[r'property_details'] = propertyDetails;
    }
      json[r'downloads_enabled'] = downloadsEnabled;
    if (orders != null) {
      json[r'orders'] = orders;
    }
    return json;
  }

  /// Returns a new [Listing] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Listing fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Listing(
        id: json[r'id'],
        address: PartialAddress.fromJson(json[r'address']),
        deliveryStatus: ListingDeliveryStatusEnum.fromJson(json[r'delivery_status']),
        thumbnailUrl: json[r'thumbnail_url'],
        agent: Group.fromJson(json[r'agent']),
        coAgent: Group.fromJson(json[r'co_agent']),
        images: Image.listFromJson(json[r'images']),
        videos: Video.listFromJson(json[r'videos']),
        floorPlans: FloorPlan.listFromJson(json[r'floor_plans']),
        propertyWebsites: PropertyWebsites.fromJson(json[r'property_websites']),
        interactiveContent: InteractiveContent.listFromJson(json[r'interactive_content']),
        propertyDetails: PropertyDetails.fromJson(json[r'property_details']),
        downloadsEnabled: json[r'downloads_enabled'],
        orders: Order.listFromJson(json[r'orders']),
    );

  static List<Listing> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Listing>[]
      : json.map((dynamic value) => Listing.fromJson(value)).toList(growable: true == growable);

  static Map<String, Listing> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Listing>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Listing.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Listing-objects as value to a dart map
  static Map<String, List<Listing>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Listing>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Listing.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

/// Has this listing been delivered?
class ListingDeliveryStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ListingDeliveryStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const delivered = ListingDeliveryStatusEnum._(r'delivered');
  static const undelivered = ListingDeliveryStatusEnum._(r'undelivered');

  /// List of all possible values in this [enum][ListingDeliveryStatusEnum].
  static const values = <ListingDeliveryStatusEnum>[
    delivered,
    undelivered,
  ];

  static ListingDeliveryStatusEnum fromJson(dynamic value) =>
    ListingDeliveryStatusEnumTypeTransformer().decode(value);

  static List<ListingDeliveryStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListingDeliveryStatusEnum>[]
      : json
          .map((value) => ListingDeliveryStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ListingDeliveryStatusEnum] to String,
/// and [decode] dynamic data back to [ListingDeliveryStatusEnum].
class ListingDeliveryStatusEnumTypeTransformer {
  const ListingDeliveryStatusEnumTypeTransformer._();

  factory ListingDeliveryStatusEnumTypeTransformer() => _instance ??= ListingDeliveryStatusEnumTypeTransformer._();

  String encode(ListingDeliveryStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListingDeliveryStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListingDeliveryStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'delivered': return ListingDeliveryStatusEnum.delivered;
      case r'undelivered': return ListingDeliveryStatusEnum.undelivered;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ListingDeliveryStatusEnumTypeTransformer] instance.
  static ListingDeliveryStatusEnumTypeTransformer _instance;
}

