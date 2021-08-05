//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:aryeo/api.dart';
import 'package:test/test.dart';

// tests for Group
void main() {
  final instance = Group();

  group('test Group', () {
    // ID of the group. UUID Version 4.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The type of the group. Can be CREATOR, AGENT, or BROKERAGE, and may dictate the attributes of the group returned.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // The name of the group.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The email address of a group.
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // A phone number represented in whichever standards specified by the group, typically ###-###-#### (separated by hyphens).
    // String phone
    test('to test the property `phone`', () async {
      // TODO
    });

    // The website URL of a group.
    // String websiteUrl
    test('to test the property `websiteUrl`', () async {
      // TODO
    });

    // The logo URL of a group.
    // String logoUrl
    test('to test the property `logoUrl`', () async {
      // TODO
    });

    // The profile image URL of a real estate agent. Only returned if group's type is AGENT.
    // String avatarUrl
    test('to test the property `avatarUrl`', () async {
      // TODO
    });

    // The name of the brokerage or team of a real estate agent. Only returned if group's type is AGENT.
    // String officeName
    test('to test the property `officeName`', () async {
      // TODO
    });

    // The license number of a real estate agent. Only returned if group's type is AGENT.
    // String licenseNumber
    test('to test the property `licenseNumber`', () async {
      // TODO
    });

    // SocialProfiles socialProfiles
    test('to test the property `socialProfiles`', () async {
      // TODO
    });

    // OrderForm defaultOrderForm
    test('to test the property `defaultOrderForm`', () async {
      // TODO
    });

    // An array of order forms a vendor group provides for placing orders. Only returned if group's type is CREATOR. 
    // List<OrderForm> orderForms (default value: const [])
    test('to test the property `orderForms`', () async {
      // TODO
    });

    // User owner
    test('to test the property `owner`', () async {
      // TODO
    });

    // The Aryeo users associated with this group.
    // List<User> users (default value: const [])
    test('to test the property `users`', () async {
      // TODO
    });

    // Does this group represent a brokerage or an agent who belongs to a brokerage?
    // bool isBrokerageOrBrokerageAgent
    test('to test the property `isBrokerageOrBrokerageAgent`', () async {
      // TODO
    });


  });

}
