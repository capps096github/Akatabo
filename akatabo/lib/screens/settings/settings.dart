import '../../akatabo_exporter.dart';

class AkataboSettings extends ConsumerWidget {
  const AkataboSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        // go to home
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: akataboWhite,
          ),
          onPressed: () => context.go(profilePath),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(color: akataboWhite),
        ),
        backgroundColor: akataboSecondaryColor,
      ),
      body: const Center(
        child: Text('Settings'),
      ),
    );
  }
}
