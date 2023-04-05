import '../../../akatabo_exporter.dart';



AppBar homeAppBar(BuildContext context) {
  return AppBar(
  title: const Text('Akatabo'),
  elevation: 0,
  scrolledUnderElevation: 0,
  leading: IconButton(
    icon: const Icon(Icons.menu),
    onPressed: () {
      Scaffold.of(context).openDrawer();
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
