//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Order {
  /// Returns a new [Order] instance.
  Order({
    @required this.id,
    @required this.displayId,
    @required this.totalPriceCents,
    @required this.currency,
    @required this.paymentStatus,
    this.paymentUrl,
    this.listing,
    @required this.fulfillmentStatus,
    this.statusUrl,
  });

  /// ID of the order.
  String id;

  /// A vanity id to be displayed for the order. For example, \"Order #1000\".
  int displayId;

  /// The total price of the order given in cents.
  int totalPriceCents;

  Currency currency;

  /// The payment status of the order.
  OrderPaymentStatusEnum paymentStatus;

  /// A URL for to pay for the order.
  String paymentUrl;

  PartialListing listing;

  /// The fulfillment status of the order.
  OrderFulfillmentStatusEnum fulfillmentStatus;

  /// A URL to see the order's status.
  String statusUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Order &&
     other.id == id &&
     other.displayId == displayId &&
     other.totalPriceCents == totalPriceCents &&
     other.currency == currency &&
     other.paymentStatus == paymentStatus &&
     other.paymentUrl == paymentUrl &&
     other.listing == listing &&
     other.fulfillmentStatus == fulfillmentStatus &&
     other.statusUrl == statusUrl;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (displayId == null ? 0 : displayId.hashCode) +
    (totalPriceCents == null ? 0 : totalPriceCents.hashCode) +
    (currency == null ? 0 : currency.hashCode) +
    (paymentStatus == null ? 0 : paymentStatus.hashCode) +
    (paymentUrl == null ? 0 : paymentUrl.hashCode) +
    (listing == null ? 0 : listing.hashCode) +
    (fulfillmentStatus == null ? 0 : fulfillmentStatus.hashCode) +
    (statusUrl == null ? 0 : statusUrl.hashCode);

  @override
  String toString() => 'Order[id=$id, displayId=$displayId, totalPriceCents=$totalPriceCents, currency=$currency, paymentStatus=$paymentStatus, paymentUrl=$paymentUrl, listing=$listing, fulfillmentStatus=$fulfillmentStatus, statusUrl=$statusUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'display_id'] = displayId;
      json[r'total_price_cents'] = totalPriceCents;
      json[r'currency'] = currency;
      json[r'payment_status'] = paymentStatus;
    if (paymentUrl != null) {
      json[r'payment_url'] = paymentUrl;
    }
    if (listing != null) {
      json[r'listing'] = listing;
    }
      json[r'fulfillment_status'] = fulfillmentStatus;
    if (statusUrl != null) {
      json[r'status_url'] = statusUrl;
    }
    return json;
  }

  /// Returns a new [Order] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Order fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Order(
        id: json[r'id'],
        displayId: json[r'display_id'],
        totalPriceCents: json[r'total_price_cents'],
        currency: Currency.fromJson(json[r'currency']),
        paymentStatus: OrderPaymentStatusEnum.fromJson(json[r'payment_status']),
        paymentUrl: json[r'payment_url'],
        listing: PartialListing.fromJson(json[r'listing']),
        fulfillmentStatus: OrderFulfillmentStatusEnum.fromJson(json[r'fulfillment_status']),
        statusUrl: json[r'status_url'],
    );

  static List<Order> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Order>[]
      : json.map((v) => Order.fromJson(v)).toList(growable: true == growable);

  static Map<String, Order> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Order>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Order.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Order-objects as value to a dart map
  static Map<String, List<Order>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Order>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Order.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// The payment status of the order.
class OrderPaymentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderPaymentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const paid = OrderPaymentStatusEnum._(r'paid');
  static const unpaid = OrderPaymentStatusEnum._(r'unpaid');

  /// List of all possible values in this [enum][OrderPaymentStatusEnum].
  static const values = <OrderPaymentStatusEnum>[
    paid,
    unpaid,
  ];

  static OrderPaymentStatusEnum fromJson(dynamic value) =>
    OrderPaymentStatusEnumTypeTransformer().decode(value);

  static List<OrderPaymentStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderPaymentStatusEnum>[]
      : json
          .map((value) => OrderPaymentStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OrderPaymentStatusEnum] to String,
/// and [decode] dynamic data back to [OrderPaymentStatusEnum].
class OrderPaymentStatusEnumTypeTransformer {
  const OrderPaymentStatusEnumTypeTransformer._();

  factory OrderPaymentStatusEnumTypeTransformer() => _instance ??= OrderPaymentStatusEnumTypeTransformer._();

  String encode(OrderPaymentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderPaymentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderPaymentStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'paid': return OrderPaymentStatusEnum.paid;
      case r'unpaid': return OrderPaymentStatusEnum.unpaid;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OrderPaymentStatusEnumTypeTransformer] instance.
  static OrderPaymentStatusEnumTypeTransformer _instance;
}

/// The fulfillment status of the order.
class OrderFulfillmentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderFulfillmentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const fulfilled = OrderFulfillmentStatusEnum._(r'fulfilled');
  static const unfulfilled = OrderFulfillmentStatusEnum._(r'unfulfilled');

  /// List of all possible values in this [enum][OrderFulfillmentStatusEnum].
  static const values = <OrderFulfillmentStatusEnum>[
    fulfilled,
    unfulfilled,
  ];

  static OrderFulfillmentStatusEnum fromJson(dynamic value) =>
    OrderFulfillmentStatusEnumTypeTransformer().decode(value);

  static List<OrderFulfillmentStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderFulfillmentStatusEnum>[]
      : json
          .map((value) => OrderFulfillmentStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OrderFulfillmentStatusEnum] to String,
/// and [decode] dynamic data back to [OrderFulfillmentStatusEnum].
class OrderFulfillmentStatusEnumTypeTransformer {
  const OrderFulfillmentStatusEnumTypeTransformer._();

  factory OrderFulfillmentStatusEnumTypeTransformer() => _instance ??= OrderFulfillmentStatusEnumTypeTransformer._();

  String encode(OrderFulfillmentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderFulfillmentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderFulfillmentStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'fulfilled': return OrderFulfillmentStatusEnum.fulfilled;
      case r'unfulfilled': return OrderFulfillmentStatusEnum.unfulfilled;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OrderFulfillmentStatusEnumTypeTransformer] instance.
  static OrderFulfillmentStatusEnumTypeTransformer _instance;
}

