//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:aryeo/api.dart';
import 'package:test/test.dart';

// tests for Order
void main() {
  final instance = Order();

  group('test Order', () {
    // ID of the order. UUID Version 4.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // A vanity id used for internal tracking of orders for a given vendor.
    // int number
    test('to test the property `number`', () async {
      // TODO
    });

    // The title of the order, generated by combining the order's number property with the prefix \"Order #\".
    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // The fulfillment status of the order.
    // String fulfillmentStatus
    test('to test the property `fulfillmentStatus`', () async {
      // TODO
    });

    // The payment status of the order.
    // String paymentStatus
    test('to test the property `paymentStatus`', () async {
      // TODO
    });

    // The three-letter ISO 4217 currency code for the currency in which this order was or will be transacted. Must be a supported currency of Aryeo.
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // A positive integer in the smallest currency unit (that is, 100 cents for $1.00) representing the total order amount that was or will be charged. This accounts for order items and taxes. 
    // int totalAmount
    test('to test the property `totalAmount`', () async {
      // TODO
    });

    // A URL of a publicly-accessible webpage to pay for the order.
    // String paymentUrl
    test('to test the property `paymentUrl`', () async {
      // TODO
    });

    // A URL of a publicly-accessible webpage to see the order's status.
    // String statusUrl
    test('to test the property `statusUrl`', () async {
      // TODO
    });

    // Indicates if the current user is allowed to download content from the attached listing.
    // bool downloadsAllowed
    test('to test the property `downloadsAllowed`', () async {
      // TODO
    });

    // Indicates if the current user is allowed to make a payment for the order.
    // bool paymentsAllowed
    test('to test the property `paymentsAllowed`', () async {
      // TODO
    });

    // Address address
    test('to test the property `address`', () async {
      // TODO
    });

    // Group customer
    test('to test the property `customer`', () async {
      // TODO
    });

    // Listing listing
    test('to test the property `listing`', () async {
      // TODO
    });

    // items
    // List<OrderItem> items (default value: const [])
    test('to test the property `items`', () async {
      // TODO
    });

    // List<Appointment> appointments (default value: const [])
    test('to test the property `appointments`', () async {
      // TODO
    });

    // List<UnconfirmedAppointment> unconfirmedAppointments (default value: const [])
    test('to test the property `unconfirmedAppointments`', () async {
      // TODO
    });


  });

}
