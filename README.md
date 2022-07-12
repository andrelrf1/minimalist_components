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

Minimalist stylized widgets for diverse use.

## Features

Some stylized widgets:

* Text fields;
* Buttons;
* App Bars;
* Cards;
* and others...

## Usage

You can use this package in any flutter project.

```dart
import 'package:minimalist_components/minimalist_components.dart';

...

MinimalistButton(
  child: const Text('Next page'),
  onPressed: () => Navigator.push(
    context,
    MinimalistAnimatedPageRoute.slide(
      screen: const PageTwo(),
    ),
  ),
),

...
```
