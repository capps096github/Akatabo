import '../akatabo_exporter.dart';

class Akatabo extends ConsumerWidget {
  ///This is the root of our akatabo app
  const Akatabo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //TODO go router access to build the app
    // final goRouter = ref.watch(akataboRouterProvider);
    final goRouter = goRouterProvider;

    return MaterialApp.router(
      // -- Router --
      routerConfig: goRouter,

      // -- Theme --
      color: akataboColor,
      theme: akataboTheme,

      // -- Title --
      title: akataboTitle,
      restorationScopeId: akataboAppId,

      // -- Debug Mode --
      debugShowCheckedModeBanner: false,

      // -- Bouncing Scroll Behavior --
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        physics: const BouncingScrollPhysics(),
        scrollbars: false,
      ),
    );
  }
}
