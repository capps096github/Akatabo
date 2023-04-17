import '../../akatabo_exporter.dart';
import 'pages/pages_data.dart';
import 'providers.dart';

class CheckoutPageSwitcher extends ConsumerWidget {
  const CheckoutPageSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkoutPageIndex = ref.watch(checkoutPageIndexProvider);

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
      child: checkoutPages[checkoutPageIndex].page,
    );
  }
}
