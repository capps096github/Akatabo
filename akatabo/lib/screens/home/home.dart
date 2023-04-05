import '../../akatabo_exporter.dart';
import 'appbar/home_appbar.dart';
import 'fab/home_fab.dart';
import 'navbar/home_navbar.dart';
import 'navbar/screens_data.dart';
import 'providers/navbar_index_provider.dart';

class AkataboHome extends StatelessWidget {
  const AkataboHome({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: homeAppBar(context),
      body: const HomeScreens(),
      bottomNavigationBar: const HomeNavbar(),
      floatingActionButton: const HomeFAB(),
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
