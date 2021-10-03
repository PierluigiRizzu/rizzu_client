<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

This is a simple Networking Request Builder, written in Dart using Dio.

## Features

It's just simple to use! Look at the example!

## Getting started

Please remember to add the package as a dependency.
```dart
flutter:
    sdk: flutter
  rizzu_client: 
```  


```dart
import 'package:rizzu_client/rizzu_client.dart';
```
then Just import this and u are ready to go!

## Usage

```dart
 RizzuClient rizzuClient = RizzuClient(baseUrl: 'https://jsonplaceholder.typicode.com/');
 //GET REQUEST
 await rizzuClient.call('posts', method: ApiMethod.GET);
 //POST REQUEST
  await rizzuClient.call('/posts', method: ApiMethod.POST, params: {
    'id': 5,
    'title': 'foo',
    'body': 'bar',
    'userId': '1',
  });
//PUT REQUEST 
 await rizzuClient.call('/posts/1', method: ApiMethod.PUT, params: {
    'id': 1,
    'title': 'foo',
    'body': 'hii',
    'userId': '1',
  });
 
```

## Additional information

Feel free to contribute!
