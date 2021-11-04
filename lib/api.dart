//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/appointments_api.dart';
part 'api/listings_api.dart';
part 'api/orders_api.dart';
part 'api/vendors_api.dart';

part 'model/address.dart';
part 'model/api_error403.dart';
part 'model/api_error404.dart';
part 'model/api_error409.dart';
part 'model/api_error500.dart';
part 'model/api_fail422.dart';
part 'model/appointment.dart';
part 'model/appointment_cancel_put_payload.dart';
part 'model/appointment_collection.dart';
part 'model/appointment_reschedule_put_payload.dart';
part 'model/appointment_resource.dart';
part 'model/calendar_day.dart';
part 'model/calendar_day_collection.dart';
part 'model/floor_plan.dart';
part 'model/group.dart';
part 'model/group_collection.dart';
part 'model/group_resource.dart';
part 'model/image.dart';
part 'model/interactive_content.dart';
part 'model/listing.dart';
part 'model/listing_building.dart';
part 'model/listing_collection.dart';
part 'model/listing_lot.dart';
part 'model/listing_price.dart';
part 'model/listing_resource.dart';
part 'model/order.dart';
part 'model/order_collection.dart';
part 'model/order_form.dart';
part 'model/order_item.dart';
part 'model/order_post_payload.dart';
part 'model/order_resource.dart';
part 'model/pagination_links.dart';
part 'model/pagination_meta.dart';
part 'model/product.dart';
part 'model/product_category.dart';
part 'model/product_collection.dart';
part 'model/product_variant.dart';
part 'model/property_website.dart';
part 'model/social_profiles.dart';
part 'model/timeslot.dart';
part 'model/timeslot_collection.dart';
part 'model/unconfirmed_appointment.dart';
part 'model/unconfirmed_appointment_collection.dart';
part 'model/unconfirmed_appointment_resource.dart';
part 'model/user.dart';
part 'model/video.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
