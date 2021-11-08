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
    this.internalNotes,
    this.addressId,
    this.customerId,
    this.notify,
  });

  /// The fulfillment status of the order. Defaults to \"UNFULFILLED\".
  OrderPostPayloadFulfillmentStatusEnum fulfillmentStatus;

  /// Internal notes that will be attached to the order. Viewable only by the team.
  String internalNotes;

  /// ID of the address to associate with the order. UUID Version 4.
  String addressId;

  /// ID of the customer to associate with the order. UUID Version 4.
  String customerId;

  /// Indicates if the customer and creator notifications should be sent when creating the order. Requires an address and customer to be set in order for the notifications to be sent.
  bool notify;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderPostPayload &&
     other.fulfillmentStatus == fulfillmentStatus &&
     other.internalNotes == internalNotes &&
     other.addressId == addressId &&
     other.customerId == customerId &&
     other.notify == notify;

  @override
  int get hashCode =>
    (fulfillmentStatus == null ? 0 : fulfillmentStatus.hashCode) +
    (internalNotes == null ? 0 : internalNotes.hashCode) +
    (addressId == null ? 0 : addressId.hashCode) +
    (customerId == null ? 0 : customerId.hashCode) +
    (notify == null ? 0 : notify.hashCode);

  @override
  String toString() => 'OrderPostPayload[fulfillmentStatus=$fulfillmentStatus, internalNotes=$internalNotes, addressId=$addressId, customerId=$customerId, notify=$notify]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fulfillmentStatus != null) {
      json[r'fulfillment_status'] = fulfillmentStatus;
    }
    if (internalNotes != null) {
      json[r'internal_notes'] = internalNotes;
    }
    if (addressId != null) {
      json[r'address_id'] = addressId;
    }
    if (customerId != null) {
      json[r'customer_id'] = customerId;
    }
    if (notify != null) {
      json[r'notify'] = notify;
    }
    return json;
  }

  /// Returns a new [OrderPostPayload] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrderPostPayload fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrderPostPayload(
        fulfillmentStatus: OrderPostPayloadFulfillmentStatusEnum.fromJson(json[r'fulfillment_status']),
        internalNotes: json[r'internal_notes'],
        addressId: json[r'address_id'],
        customerId: json[r'customer_id'],
        notify: json[r'notify'],
    );

  static List<OrderPostPayload> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderPostPayload>[]
      : json.map((dynamic value) => OrderPostPayload.fromJson(value)).toList(growable: true == growable);

  static Map<String, OrderPostPayload> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrderPostPayload>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = OrderPostPayload.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderPostPayload-objects as value to a dart map
  static Map<String, List<OrderPostPayload>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderPostPayload>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = OrderPostPayload.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
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
  String toString() => value;

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
      case r'FULFILLED': return OrderPostPayloadFulfillmentStatusEnum.FULFILLED;
      case r'UNFULFILLED': return OrderPostPayloadFulfillmentStatusEnum.UNFULFILLED;
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

