import '../../../akatabo_exporter.dart';
import '../navbar/screens_data.dart';
import '../providers/exporter.dart';

AppBar homeAppBar(BuildContext context, WidgetRef ref) {
  final navBarIndex = ref.watch(selectedNavBarIndexProvider);

// is home screen
  final isHomeScreen = (navBarIndex == 0);

  // title
  final title = isHomeScreen ? 'Akatabo' : navScreens[navBarIndex].name;
  //
  return AppBar(
    title: Text(title),
    elevation: 0,
    scrolledUnderElevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () {
        // Scaffold.of(context).openDrawer();
      },
    ),
    actions: [
      // profile
      Padding(
        padding: padding8,
        child: InkWell(
          onTap: () {
            // navigate to the profile page
            context.push(profilePath);
          },
          borderRadius: borderRadius4,
          child: Hero(
            tag: userProfileTag,
            child: AppImage(
              imageUrl: akataboDefaultUser.profilePic,
              borderRadius: borderRadius4,
              width: spacing40,
              height: spacing40,
            ),
          ),
        ),
      ),
    ],
  );
}
