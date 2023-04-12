import '../../../akatabo_exporter.dart';
import 'navbar_icon.dart';
import 'screens_data.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Container(
      height: navbarHeight,
      color: akataboBackground,
      padding: const EdgeInsets.symmetric(horizontal: spacing16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          navScreens.length,
          (index) {
            // screen using elementAt
            final screen = navScreens.elementAt(index);
            return NavbarIcon(index: index, screen: screen);
          },
        ),
      ),
    );
  }
}
