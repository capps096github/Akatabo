import '../../../akatabo_exporter.dart';

class NavbarScreen {
  // name
  final String name;

  // icon data
  final IconData unselectedIcon, selectedIcon;

  // widget
  final Widget screenWidget;

  NavbarScreen({
    required this.name,
    required this.screenWidget,
    required this.unselectedIcon,
    required this.selectedIcon,
  });
}
