import '../../../akatabo_exporter.dart';
import '../providers/exporter.dart';

class HomeFAB extends ConsumerWidget {
  const HomeFAB({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navBarIndex = ref.watch(selectedNavBarIndexProvider);

    // if we are on the shop page, show the cart icon
    // chage this according to the index of the shop page, for now its 2
    final isShopPage = (navBarIndex == 2);
    //
    return AnimatedSwitcher(
      duration: quarterSeconds,
      child: isShopPage
          ? FloatingActionButton(
              backgroundColor: akataboColor,
              onPressed: () {},
              child: const Icon(
                Icons.shopping_cart,
                color: akataboWhite,
              ),
            )
          : const EmptySpace(),
    );
  }
}
