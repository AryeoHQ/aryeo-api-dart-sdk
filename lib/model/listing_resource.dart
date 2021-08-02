//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListingResource {
  /// Returns a new [ListingResource] instance.
  ListingResource({
    @required this.status,
    this.data,
  });

  /// What was the state of the request?
  String status;

  Listing data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListingResource &&
     other.status == status &&
     other.data == data;

  @override
  int get hashCode =>
    (status == null ? 0 : status.hashCode) +
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'ListingResource[status=$status, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
    if (data != null) {
      json[r'data'] = data;
    }
    return json;
  }

  /// Returns a new [ListingResource] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListingResource fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListingResource(
        status: json[r'status'],
        data: Listing.fromJson(json[r'data']),
    );

  static List<ListingResource> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListingResource>[]
      : json.map((dynamic value) => ListingResource.fromJson(value)).toList(growable: true == growable);

  static Map<String, ListingResource> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListingResource>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ListingResource.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListingResource-objects as value to a dart map
  static Map<String, List<ListingResource>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListingResource>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ListingResource.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

