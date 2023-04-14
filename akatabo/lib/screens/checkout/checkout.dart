import '../../akatabo_exporter.dart';
import 'checkout_navbar.dart';
import 'pages/payment_summary.dart';
import 'pages/select_payment_mode.dart';
import 'providers.dart';

class AkataboCheckout extends StatelessWidget {
  const AkataboCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        leading: const AkataboBackButton(),
        title: const Text('Checkout'),
      ),
      // TODO code leading step navigator here
      body: const Padding(
        padding: padding8,
        child: CheckoutPages(),
      ),
      bottomNavigationBar: const CheckoutNavbar(),
    );
  }
}

class CheckoutPages extends ConsumerWidget {
  const CheckoutPages({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkoutPageIndex = ref.watch(checkoutPageIndexProvider);

    // checkout pages
    const navScreens = [
      SelectPaymentMethod(),
      // MakePayment(),
      PaymentSummary(),
    ];

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
      child: navScreens[checkoutPageIndex],
    );
  }
}
