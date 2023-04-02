import '../../../akatabo_exporter.dart';

AppBar homeAppBar(BuildContext context) {
//
  return AppBar(
    title: const Text('Akatabo'),
    leading: IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppImage(
          imageUrl: akataboDefaultUser.profilePic,
          borderRadius: borderRadius4,
          width: 40,
          height: 40,
        ),
      )
    ],
  );
}
