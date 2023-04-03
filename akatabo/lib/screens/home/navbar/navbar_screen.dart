
import '../../../akatabo_exporter.dart';

class NavbarScreen {
  // name
  final String name;

  // icon data
  final IconData? iconData;

  // widget
  final Widget screenWidget;

  NavbarScreen({
    required this.name,
    required this.screenWidget,
     this.iconData,
  });
}
