// Project imports:

import 'package:akatabo/akatabo_exporter.dart';
import 'package:akatabo/screens/home/home_page.dart';
import 'package:flutter/cupertino.dart';

import 'navbar_screen.dart';

List<NavbarScreen> navScreens = [
  NavbarScreen(
    name: 'Home',
    iconData: CupertinoIcons.home,
    screenWidget: const HomePage(),
  ),
  // NavbarScreen(
  //   name: 'Search',
  //   iconData: Icons.search,
  //   screenWidget: const AkataboPlaceholder(title: "Search"),
  // ),
  NavbarScreen(
    name: 'Books',
    iconData: CupertinoIcons.doc_plaintext,
    screenWidget: const AkataboPlaceholder(title: "Books"),
  ),
  NavbarScreen(
    name: 'Shop',
    iconData: CupertinoIcons.bag,
    screenWidget: const AkataboPlaceholder(title: "Shop"),
  ),
];
