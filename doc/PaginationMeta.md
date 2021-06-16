# aryeo.model.PaginationMeta

## Load the model package
```dart
import 'package:aryeo/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** | Total number of records. | 
**perPage** | **int** | Number of records per page. | 
**currentPage** | **int** | The current page. | 
**lastPage** | **int** | The last page of records. | 
**from** | **int** | The ID of the first record on this page. This is specified as either `integer` or `null` purely for contract testing purposes. The model which is autogenerated from this definition will be thrown out and written by-hand. | [optional] 
**to** | **int** | The ID of the last record on this page. This is specified as either `integer` or `null` purely for contract testing purposes. The model which is autogenerated from this definition will be thrown out and written by-hand. | [optional] 
**path** | **String** | The current paged path. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

