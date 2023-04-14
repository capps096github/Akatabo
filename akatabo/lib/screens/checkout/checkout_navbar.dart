import '../../akatabo_exporter.dart';
import '../cart/components/cart_total.dart';
import 'providers.dart';

class CheckoutNavbar extends ConsumerWidget {
  const CheckoutNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final checkoutPageIndex = ref.watch(checkoutPageIndexProvider);

    // is first page
    final isFirstPage = checkoutPageIndex == 0;

    return Container(
      color: akataboBackground,
      child: isFirstPage
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // title
                const CartTotal(totalColor: akataboRadioButtonColor),

                // go to payments
                Padding(
                  padding: padding16,
                  child: AppButton(
                    label: "Proceed to Payment",
                    onTap: () {
                      // checkoutPageIndexProvider to 1
                      ref.read(checkoutPageIndexProvider.notifier).state = 1;
                    },
                  ),
                ),
              ],
            )
          : Padding(
              padding: padding16,
              child: AppButton(
                label: "Confirm Payment",
                onTap: () {
                  // checkoutPageIndexProvider to 1
                  ref.read(checkoutPageIndexProvider.notifier).state = 0;
                },
              ),
            ),
    );
  }
}
