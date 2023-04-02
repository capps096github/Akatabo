import 'package:flutter/foundation.dart';

/// check if the current platform is Windows
final bool isAkataboWindows = (defaultTargetPlatform == TargetPlatform.windows);

/// check if the current platform is Windows
final bool isAkataboAndroid = (defaultTargetPlatform == TargetPlatform.android);

/// check if the current platform is Windows
final bool isAkataboiOs = (defaultTargetPlatform == TargetPlatform.iOS);

/// check if the current platform is Windows or Web
const bool isAkataboWeb = (kIsWeb);

/// check if the current platform is Windows or Web
final bool isAkataboWebOrWindows = (isAkataboWindows || isAkataboWeb);

///This variable declares that if we are on phone
///, no mouse region, else we gat a mouse region
final isPhone = (isAkataboAndroid || isAkataboiOs);
