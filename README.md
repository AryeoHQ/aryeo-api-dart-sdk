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
*ListingsApi* | [**getListings**](doc//ListingsApi.md#getlistings) | **GET** /listings | Get the listings available to a group.
*ListingsApi* | [**getListingsId**](doc//ListingsApi.md#getlistingsid) | **GET** /listings/{uuid} | Get information about a listing.
*OrdersApi* | [**getOrders**](doc//OrdersApi.md#getorders) | **GET** /orders | Get orders available to a group.
*OrdersApi* | [**postOrders**](doc//OrdersApi.md#postorders) | **POST** /orders | Create an order.
*VendorsApi* | [**getVendors**](doc//VendorsApi.md#getvendors) | **GET** /vendors | Get vendors available to a group.
*VendorsApi* | [**getVendorsSearch**](doc//VendorsApi.md#getvendorssearch) | **GET** /vendors/search | Get vendors that can be added to the group's vendor list.


## Documentation For Models

 - [ApiError](doc//ApiError.md)
 - [Currency](doc//Currency.md)
 - [FloorPlan](doc//FloorPlan.md)
 - [Group](doc//Group.md)
 - [GroupAgentProperties](doc//GroupAgentProperties.md)
 - [GroupCollection](doc//GroupCollection.md)
 - [Image](doc//Image.md)
 - [InteractiveContent](doc//InteractiveContent.md)
 - [Listing](doc//Listing.md)
 - [ListingResource](doc//ListingResource.md)
 - [Order](doc//Order.md)
 - [OrderCollection](doc//OrderCollection.md)
 - [OrderForm](doc//OrderForm.md)
 - [OrderPostPayload](doc//OrderPostPayload.md)
 - [OrderResource](doc//OrderResource.md)
 - [PaginationLinks](doc//PaginationLinks.md)
 - [PaginationMeta](doc//PaginationMeta.md)
 - [PartialAddress](doc//PartialAddress.md)
 - [PartialGroup](doc//PartialGroup.md)
 - [PartialListing](doc//PartialListing.md)
 - [PartialListingCollection](doc//PartialListingCollection.md)
 - [ProductItem](doc//ProductItem.md)
 - [PropertyDetails](doc//PropertyDetails.md)
 - [PropertyWebsites](doc//PropertyWebsites.md)
 - [SocialProfiles](doc//SocialProfiles.md)
 - [User](doc//User.md)
 - [Video](doc//Video.md)


## Documentation For Authorization


## JWT

- **Type**: HTTP Bearer authentication


## Author

jarrod@aryeo.com
