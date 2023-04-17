import '../../akatabo_exporter.dart';
import 'checkout_navbar.dart';
import 'checkout_pages_switcher.dart';
import 'components/heading_indicator.dart';

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
      body: const CheckoutBody(),
      bottomNavigationBar: const CheckoutNavbar(),
    );
  }
}

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding8,
      child: Column(
        children: const [
          // header
          HeadingIndicator(),

          //  checkout pages
          Expanded(child: CheckoutPageSwitcher()),
        ],
      ),
    );
  }
}
