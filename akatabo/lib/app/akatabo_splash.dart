import '../akatabo_exporter.dart';

class AkataboSplash extends ConsumerWidget {
  const AkataboSplash({
    super.key,
    required this.screen,
  });

  // screen to show after splash
  final Widget screen;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashWaiter = ref.watch(splashWaiterProvider);

    return splashWaiter.when(
      data: (_) => screen,
      loading: () => const SplashScreen(),
      error: (error, stackTrace) => ErrorWidget(error),
    );
  }
}
