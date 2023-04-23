import '../../../akatabo_exporter.dart';
import '../navbar/screens_data.dart';
import '../providers/exporter.dart';
import 'profile_pic.dart';

AppBar homeAppBar(BuildContext context, WidgetRef ref) {
  final navBarIndex = ref.watch(selectedNavBarIndexProvider);

// is home screen
  final isHomeScreen = (navBarIndex == 0);

  // title
  final title = isHomeScreen ? 'Akatabo' : navScreens[navBarIndex].name;
  //

  return AppBar(
    title: isHomeScreen
        ? Image.asset(
            fullIcon,
            fit: BoxFit.fill,
            height: 45,
          )
        : Text(title),
    elevation: 0,
    scrolledUnderElevation: 0,
    leading: const HomeProfilePic(),
  );
}
