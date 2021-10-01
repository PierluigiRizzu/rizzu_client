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

TODO: This is a simple Networking Client, written in Dart using Dio.

## Features

It's just simple to use! Look at the example!

## Getting started

```dart
import 'package:rizzu_client/rizzu_client.dart';
```
Just import this and u are ready to go!

## Usage

```dart
 var rizzuClient = RizzuClient(baseUrl: 'https://jsonplaceholder.typicode.com/posts/1');
 print(await rizzuClient.call('', method: ApiMethod.GET));
```

## Additional information

Feel free to contribute!
