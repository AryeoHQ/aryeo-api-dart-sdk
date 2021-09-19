# Aryeo SDK

## Introduction

This is an auto-generated client SDK for interfacing with the Aryeo API. We support a variety of languages and frameworks that are a great starting point for experimenting with the API. If there is an additional language or framework that you want to see supported, then please reach out and make a contribution!

<p align="center"> <a href="https://github.com/AryeoHQ/aryeo-api-dart-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/dart.svg" alt="Dart" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-go-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/go.svg" alt="Go" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-js-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/js.svg" alt="Node JS" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-php-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/php.svg" alt="PHP" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-ruby-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/ruby.svg" alt="Ruby" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-rust-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/rust.svg" alt="Rust" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-swift-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/swift.svg" alt="Swift" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> </p>

## Authentication

To start using the Aryeo API, you will need to generate an API key from your group's developer settings. Then, make sure to provide your API key as a bearer token. Requests made without an API key will result in a `401 Unauthorized` error.

Example: `Authorization: Bearer {API_KEY}`

## Requirements

Dart 2.0 or later

## Installation & Usage

Add the following block to `pubspec.yaml`:

```yaml
dependencies:
  aryeo:
    git:
      url: https://github.com/AryeoHQ/aryeo-api-dart-sdk.git
      ref: master
```      

## Getting Started

```dart
import 'package:aryeo/api.dart';

void main() {
    defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').accessToken = 'API_KEY';

    final api_instance = ListingsApi();
    const uuid = 'UUID';

    try {
        api_instance.getListingsId(uuid)                    
                    .catchError((e) {
                        print("Got error: ${e.error}");
                        return 42;
                    })
                    .then((result) {
                        print(result.data?.address.addressLine1);
                    });                                                                    
    } catch (e) {
        print('Exception when calling ListingsApi->getListingsId: $e\n');
    }   
}
```

## Documentation for API Endpoints

All URIs are relative to *https://api.aryeo.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AppointmentsApi* | [**getAppointments**](doc//AppointmentsApi.md#getappointments) | **GET** /appointments | List all appointments.
*AppointmentsApi* | [**getUnconfirmedAppointments**](doc//AppointmentsApi.md#getunconfirmedappointments) | **GET** /unconfirmed-appointments | List all unconfirmed appointments.
*AppointmentsApi* | [**getUnconfirmedAppointmentsId**](doc//AppointmentsApi.md#getunconfirmedappointmentsid) | **GET** /unconfirmed-appointments/{unconfirmed_appointment_id} | Retrieve an unconfirmed appointment.
*AppointmentsApi* | [**putAppointmentsAppointmentIdCancel**](doc//AppointmentsApi.md#putappointmentsappointmentidcancel) | **PUT** /appointments/{appointment_id}/cancel | Cancel an appointment.
*AppointmentsApi* | [**putAppointmentsAppointmentIdReschedule**](doc//AppointmentsApi.md#putappointmentsappointmentidreschedule) | **PUT** /appointments/{appointment_id}/reschedule | Reschedule an appointment.
*ListingsApi* | [**getListings**](doc//ListingsApi.md#getlistings) | **GET** /listings | List all listings.
*ListingsApi* | [**getListingsId**](doc//ListingsApi.md#getlistingsid) | **GET** /listings/{listing_id} | Retrieve a listing.
*OrdersApi* | [**getOrders**](doc//OrdersApi.md#getorders) | **GET** /orders | List all orders.
*OrdersApi* | [**getOrdersId**](doc//OrdersApi.md#getordersid) | **GET** /orders/{order_id} | Retrieve an order.
*OrdersApi* | [**getProducts**](doc//OrdersApi.md#getproducts) | **GET** /products | List all products.
*OrdersApi* | [**postOrders**](doc//OrdersApi.md#postorders) | **POST** /orders | Create an order.
*VendorsApi* | [**getVendors**](doc//VendorsApi.md#getvendors) | **GET** /vendors | List all vendors.
*VendorsApi* | [**getVendorsId**](doc//VendorsApi.md#getvendorsid) | **GET** /vendors/{vendor_id} | Retrieve a vendor.


## Documentation For Models

 - [Address](doc//Address.md)
 - [ApiError403](doc//ApiError403.md)
 - [ApiError404](doc//ApiError404.md)
 - [ApiError409](doc//ApiError409.md)
 - [ApiError500](doc//ApiError500.md)
 - [ApiFail422](doc//ApiFail422.md)
 - [Appointment](doc//Appointment.md)
 - [AppointmentCancelPutPayload](doc//AppointmentCancelPutPayload.md)
 - [AppointmentCollection](doc//AppointmentCollection.md)
 - [AppointmentReschedulePutPayload](doc//AppointmentReschedulePutPayload.md)
 - [AppointmentResource](doc//AppointmentResource.md)
 - [FloorPlan](doc//FloorPlan.md)
 - [Group](doc//Group.md)
 - [GroupCollection](doc//GroupCollection.md)
 - [GroupResource](doc//GroupResource.md)
 - [Image](doc//Image.md)
 - [InteractiveContent](doc//InteractiveContent.md)
 - [Listing](doc//Listing.md)
 - [ListingBuilding](doc//ListingBuilding.md)
 - [ListingCollection](doc//ListingCollection.md)
 - [ListingLot](doc//ListingLot.md)
 - [ListingPrice](doc//ListingPrice.md)
 - [ListingResource](doc//ListingResource.md)
 - [Order](doc//Order.md)
 - [OrderCollection](doc//OrderCollection.md)
 - [OrderForm](doc//OrderForm.md)
 - [OrderItem](doc//OrderItem.md)
 - [OrderPostPayload](doc//OrderPostPayload.md)
 - [OrderResource](doc//OrderResource.md)
 - [PaginationLinks](doc//PaginationLinks.md)
 - [PaginationMeta](doc//PaginationMeta.md)
 - [Product](doc//Product.md)
 - [ProductCategory](doc//ProductCategory.md)
 - [ProductCollection](doc//ProductCollection.md)
 - [ProductVariant](doc//ProductVariant.md)
 - [PropertyWebsite](doc//PropertyWebsite.md)
 - [SocialProfiles](doc//SocialProfiles.md)
 - [UnconfirmedAppointment](doc//UnconfirmedAppointment.md)
 - [UnconfirmedAppointmentCollection](doc//UnconfirmedAppointmentCollection.md)
 - [UnconfirmedAppointmentResource](doc//UnconfirmedAppointmentResource.md)
 - [User](doc//User.md)
 - [Video](doc//Video.md)


## Documentation For Authorization


## Token

- **Type**: HTTP Bearer authentication


## Author

jarrod@aryeo.com
