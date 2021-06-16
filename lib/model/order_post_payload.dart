//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderPostPayload {
  /// Returns a new [OrderPostPayload] instance.
  OrderPostPayload({
    this.fulfillmentStatus,
    this.paymentStatus,
    this.productItems = const [],
  });

  /// The fulfillment status of the order.
  OrderPostPayloadFulfillmentStatusEnum fulfillmentStatus;

  /// The payment status of the order.
  OrderPostPayloadPaymentStatusEnum paymentStatus;

  /// product_items
  List<ProductItem> productItems;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderPostPayload &&
     other.fulfillmentStatus == fulfillmentStatus &&
     other.paymentStatus == paymentStatus &&
     other.productItems == productItems;

  @override
  int get hashCode =>
    (fulfillmentStatus == null ? 0 : fulfillmentStatus.hashCode) +
    (paymentStatus == null ? 0 : paymentStatus.hashCode) +
    (productItems == null ? 0 : productItems.hashCode);

  @override
  String toString() => 'OrderPostPayload[fulfillmentStatus=$fulfillmentStatus, paymentStatus=$paymentStatus, productItems=$productItems]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fulfillmentStatus != null) {
      json[r'fulfillment_status'] = fulfillmentStatus;
    }
    if (paymentStatus != null) {
      json[r'payment_status'] = paymentStatus;
    }
    if (productItems != null) {
      json[r'product_items'] = productItems;
    }
    return json;
  }

  /// Returns a new [OrderPostPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrderPostPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrderPostPayload(
        fulfillmentStatus: OrderPostPayloadFulfillmentStatusEnum.fromJson(json[r'fulfillment_status']),
        paymentStatus: OrderPostPayloadPaymentStatusEnum.fromJson(json[r'payment_status']),
        productItems: ProductItem.listFromJson(json[r'product_items']),
    );

  static List<OrderPostPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderPostPayload>[]
      : json.map((v) => OrderPostPayload.fromJson(v)).toList(growable: true == growable);

  static Map<String, OrderPostPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrderPostPayload>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = OrderPostPayload.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OrderPostPayload-objects as value to a dart map
  static Map<String, List<OrderPostPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderPostPayload>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OrderPostPayload.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// The fulfillment status of the order.
class OrderPostPayloadFulfillmentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderPostPayloadFulfillmentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const fulfilled = OrderPostPayloadFulfillmentStatusEnum._(r'fulfilled');
  static const unfulfilled = OrderPostPayloadFulfillmentStatusEnum._(r'unfulfilled');

  /// List of all possible values in this [enum][OrderPostPayloadFulfillmentStatusEnum].
  static const values = <OrderPostPayloadFulfillmentStatusEnum>[
    fulfilled,
    unfulfilled,
  ];

  static OrderPostPayloadFulfillmentStatusEnum fromJson(dynamic value) =>
    OrderPostPayloadFulfillmentStatusEnumTypeTransformer().decode(value);

  static List<OrderPostPayloadFulfillmentStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderPostPayloadFulfillmentStatusEnum>[]
      : json
          .map((value) => OrderPostPayloadFulfillmentStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OrderPostPayloadFulfillmentStatusEnum] to String,
/// and [decode] dynamic data back to [OrderPostPayloadFulfillmentStatusEnum].
class OrderPostPayloadFulfillmentStatusEnumTypeTransformer {
  const OrderPostPayloadFulfillmentStatusEnumTypeTransformer._();

  factory OrderPostPayloadFulfillmentStatusEnumTypeTransformer() => _instance ??= OrderPostPayloadFulfillmentStatusEnumTypeTransformer._();

  String encode(OrderPostPayloadFulfillmentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderPostPayloadFulfillmentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderPostPayloadFulfillmentStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'fulfilled': return OrderPostPayloadFulfillmentStatusEnum.fulfilled;
      case r'unfulfilled': return OrderPostPayloadFulfillmentStatusEnum.unfulfilled;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OrderPostPayloadFulfillmentStatusEnumTypeTransformer] instance.
  static OrderPostPayloadFulfillmentStatusEnumTypeTransformer _instance;
}

/// The payment status of the order.
class OrderPostPayloadPaymentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderPostPayloadPaymentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const paid = OrderPostPayloadPaymentStatusEnum._(r'paid');
  static const unpaid = OrderPostPayloadPaymentStatusEnum._(r'unpaid');

  /// List of all possible values in this [enum][OrderPostPayloadPaymentStatusEnum].
  static const values = <OrderPostPayloadPaymentStatusEnum>[
    paid,
    unpaid,
  ];

  static OrderPostPayloadPaymentStatusEnum fromJson(dynamic value) =>
    OrderPostPayloadPaymentStatusEnumTypeTransformer().decode(value);

  static List<OrderPostPayloadPaymentStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderPostPayloadPaymentStatusEnum>[]
      : json
          .map((value) => OrderPostPayloadPaymentStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OrderPostPayloadPaymentStatusEnum] to String,
/// and [decode] dynamic data back to [OrderPostPayloadPaymentStatusEnum].
class OrderPostPayloadPaymentStatusEnumTypeTransformer {
  const OrderPostPayloadPaymentStatusEnumTypeTransformer._();

  factory OrderPostPayloadPaymentStatusEnumTypeTransformer() => _instance ??= OrderPostPayloadPaymentStatusEnumTypeTransformer._();

  String encode(OrderPostPayloadPaymentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderPostPayloadPaymentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderPostPayloadPaymentStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'paid': return OrderPostPayloadPaymentStatusEnum.paid;
      case r'unpaid': return OrderPostPayloadPaymentStatusEnum.unpaid;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OrderPostPayloadPaymentStatusEnumTypeTransformer] instance.
  static OrderPostPayloadPaymentStatusEnumTypeTransformer _instance;
}

