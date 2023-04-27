import '../../akatabo_exporter.dart';
import 'appbar/home_appbar.dart';

import 'navbar/exporter.dart';
import 'providers/exporter.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: homeAppBar(context, ref),
      body: const HomeScreens(),
      bottomNavigationBar: const HomeNavbar(),
    );
  }
}

class HomeScreens extends ConsumerWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navBarIndex = ref.watch(selectedNavBarIndexProvider);

    //
    return PageTransitionSwitcher(
      transitionBuilder: (child, animation, secondaryAnimation) {
        return FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          fillColor: akataboTransparent,
          child: child,
        );
      },
      duration: halfSeconds,
      child: navScreens[navBarIndex].screenWidget,
    );
  }
}
