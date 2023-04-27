import '../../akatabo_exporter.dart';
import 'home_body.dart';

class AkataboHome extends ConsumerWidget {
  const AkataboHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final userStream = ref.watch(currentUserStreamProvider);

    // * Listen to the user stream so that the app user updates automatically
    return userStream.when(
      loading: () => const AkataboSplash(),
      error: (error, stackTrace) => ErrorWidget(error),
      data: (_) => const HomeBody(),
    );
  }
}
