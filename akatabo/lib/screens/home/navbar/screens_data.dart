// Project imports:

import '../../../akatabo_exporter.dart';
import '../home_page.dart';
import 'package:flutter/cupertino.dart';

import 'navbar_screen.dart';

List<NavbarScreen> navScreens = [
  NavbarScreen(
    name: 'Home',
    unselectedIcon: CupertinoIcons.house,
    selectedIcon: CupertinoIcons.house_fill,
    screenWidget: const HomePage(),
  ),
  NavbarScreen(
    name: 'My Books',
    unselectedIcon: CupertinoIcons.doc_plaintext,
    selectedIcon: CupertinoIcons.doc_plaintext,
    screenWidget: const AkataboBooks(),
  ),
  NavbarScreen(
    name: 'My Shop',
    unselectedIcon: CupertinoIcons.bag,
    selectedIcon: CupertinoIcons.bag_fill,
    // TODO add shop UI here
    screenWidget: const AkataboCart(),
    // screenWidget: const AkataboShop(),
  ),
];
