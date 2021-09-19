//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderPostPayload {
  /// Returns a new [OrderPostPayload] instance.
  OrderPostPayload({
    this.fulfillmentStatus,
    this.paymentStatus,
    this.placeId,
  });

  /// The fulfillment status of the order. Defaults to \"UNFULFILLED\".
  OrderPostPayloadFulfillmentStatusEnum fulfillmentStatus;

  /// The payment status of the order. Defaults to \"UNPAID\". 
  OrderPostPayloadPaymentStatusEnum paymentStatus;

  /// Google Places ID of the address to attach to the order.
  String placeId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderPostPayload &&
     other.fulfillmentStatus == fulfillmentStatus &&
     other.paymentStatus == paymentStatus &&
     other.placeId == placeId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (fulfillmentStatus == null ? 0 : fulfillmentStatus.hashCode) +
    (paymentStatus == null ? 0 : paymentStatus.hashCode) +
    (placeId == null ? 0 : placeId.hashCode);

  @override
  String toString() => 'OrderPostPayload[fulfillmentStatus=$fulfillmentStatus, paymentStatus=$paymentStatus, placeId=$placeId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fulfillmentStatus != null) {
      json[r'fulfillment_status'] = fulfillmentStatus;
    }
    if (paymentStatus != null) {
      json[r'payment_status'] = paymentStatus;
    }
    if (placeId != null) {
      json[r'place_id'] = placeId;
    }
    return json;
  }

  /// Returns a new [OrderPostPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderPostPayload fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderPostPayload(
        fulfillmentStatus: OrderPostPayloadFulfillmentStatusEnum.fromJson(json[r'fulfillment_status']),
        paymentStatus: OrderPostPayloadPaymentStatusEnum.fromJson(json[r'payment_status']),
        placeId: mapValueOfType<String>(json, r'place_id'),
      );
    }
    return null;
  }

  static List<OrderPostPayload> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderPostPayload.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderPostPayload>[];

  static Map<String, OrderPostPayload> mapFromJson(dynamic json) {
    final map = <String, OrderPostPayload>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderPostPayload.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderPostPayload-objects as value to a dart map
  static Map<String, List<OrderPostPayload>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderPostPayload>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderPostPayload.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// The fulfillment status of the order. Defaults to \"UNFULFILLED\".
class OrderPostPayloadFulfillmentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderPostPayloadFulfillmentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const FULFILLED = OrderPostPayloadFulfillmentStatusEnum._(r'FULFILLED');
  static const UNFULFILLED = OrderPostPayloadFulfillmentStatusEnum._(r'UNFULFILLED');

  /// List of all possible values in this [enum][OrderPostPayloadFulfillmentStatusEnum].
  static const values = <OrderPostPayloadFulfillmentStatusEnum>[
    FULFILLED,
    UNFULFILLED,
  ];

  static OrderPostPayloadFulfillmentStatusEnum fromJson(dynamic value) =>
    OrderPostPayloadFulfillmentStatusEnumTypeTransformer().decode(value);

  static List<OrderPostPayloadFulfillmentStatusEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderPostPayloadFulfillmentStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderPostPayloadFulfillmentStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [OrderPostPayloadFulfillmentStatusEnum] to String,
/// and [decode] dynamic data back to [OrderPostPayloadFulfillmentStatusEnum].
class OrderPostPayloadFulfillmentStatusEnumTypeTransformer {
  factory OrderPostPayloadFulfillmentStatusEnumTypeTransformer() => _instance ??= const OrderPostPayloadFulfillmentStatusEnumTypeTransformer._();

  const OrderPostPayloadFulfillmentStatusEnumTypeTransformer._();

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
    if (data != null) {
      switch (data.toString()) {
        case r'FULFILLED': return OrderPostPayloadFulfillmentStatusEnum.FULFILLED;
        case r'UNFULFILLED': return OrderPostPayloadFulfillmentStatusEnum.UNFULFILLED;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderPostPayloadFulfillmentStatusEnumTypeTransformer] instance.
  static OrderPostPayloadFulfillmentStatusEnumTypeTransformer _instance;
}


/// The payment status of the order. Defaults to \"UNPAID\". 
class OrderPostPayloadPaymentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderPostPayloadPaymentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const PAID = OrderPostPayloadPaymentStatusEnum._(r'PAID');
  static const UNPAID = OrderPostPayloadPaymentStatusEnum._(r'UNPAID');

  /// List of all possible values in this [enum][OrderPostPayloadPaymentStatusEnum].
  static const values = <OrderPostPayloadPaymentStatusEnum>[
    PAID,
    UNPAID,
  ];

  static OrderPostPayloadPaymentStatusEnum fromJson(dynamic value) =>
    OrderPostPayloadPaymentStatusEnumTypeTransformer().decode(value);

  static List<OrderPostPayloadPaymentStatusEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderPostPayloadPaymentStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderPostPayloadPaymentStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [OrderPostPayloadPaymentStatusEnum] to String,
/// and [decode] dynamic data back to [OrderPostPayloadPaymentStatusEnum].
class OrderPostPayloadPaymentStatusEnumTypeTransformer {
  factory OrderPostPayloadPaymentStatusEnumTypeTransformer() => _instance ??= const OrderPostPayloadPaymentStatusEnumTypeTransformer._();

  const OrderPostPayloadPaymentStatusEnumTypeTransformer._();

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
    if (data != null) {
      switch (data.toString()) {
        case r'PAID': return OrderPostPayloadPaymentStatusEnum.PAID;
        case r'UNPAID': return OrderPostPayloadPaymentStatusEnum.UNPAID;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderPostPayloadPaymentStatusEnumTypeTransformer] instance.
  static OrderPostPayloadPaymentStatusEnumTypeTransformer _instance;
}


