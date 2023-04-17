// list of 3 pages
import '../../../akatabo_exporter.dart';
import '../../cart/components/cart_total.dart';
import '../providers.dart';

// go to home CTA for summary page
class SummaryPageCTA extends ConsumerWidget {
  const SummaryPageCTA({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppButton(
      label: "Go to Home",
      onTap: () {
        // * reset all providers
        // card number provider
        ref.read(cardNumberProvider.notifier).state = "";

        // card cvv provider
        ref.read(cvvNumberProvider.notifier).state = "";

        // card expiry provider
        ref.read(expiryDateProvider.notifier).state = "";

        // confirm password provider
        ref.read(confirmPasswordProvider.notifier).state = "";

        // voucher code provider
        ref.read(voucherProvider.notifier).state = "";

        // reset index to 0
        ref.read(checkoutPageIndexProvider.notifier).state = 0;

        // go to home
        context.go(homePath);
      },
    );
  }
}

class ConfirmPayCTA extends ConsumerWidget {
  const ConfirmPayCTA({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return AppButton(
      label: "Confirm Payment",
      onTap: () async {
        // set isConfirmingPaymentProvider to true after a delay of 3 seconds
        ref.read(isConfirmingPaymentProvider.notifier).state = true;

        // then go to summary page
        await Future.delayed(
          twoSeconds,
          () {
            // checkoutPageIndexProvider to summary page
            ref.read(checkoutPageIndexProvider.notifier).state = 2;
          },
        ).then(
          (_) => ref.read(isConfirmingPaymentProvider.notifier).state = false,
        );
      },
    );
  }
}

class SelectPaymentCTA extends ConsumerWidget {
  const SelectPaymentCTA({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    // mobile pay
    final mobilePayKey = ref.watch(mobilePayFormKeyProvider);

    // card pay
    final cardPayKey = ref.watch(cardPayFormKeyProvider);

    // voucher pay
    final voucherPayKey = ref.watch(voucherPayFormKeyProvider);

    //  user account pay
    final userAccountPayKey = ref.watch(userAccountPayFormKeyProvider);

    //
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // title
        const CartTotal(totalColor: akataboRadioButtonColor),

        // go to payments
        AppButton(
          label: "Proceed to Payment",
          onTap: () {
            //* Unfocus Keyboard
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }

            // * Valiadate the forms
            // is mobile pay valid
            final isMobilePayValid = mobilePayKey.currentState!.validate();

            // is card pay valid
            final isCardPayValid = cardPayKey.currentState!.validate();

            // is voucher pay valid
            final isVoucherPayValid = voucherPayKey.currentState!.validate();

            // is user account pay valid
            final isUserAccountPayValid =
                userAccountPayKey.currentState!.validate();

            // check if the forms are valid via their keys
            if (!isMobilePayValid &&
                !isCardPayValid &&
                !isVoucherPayValid &&
                !isUserAccountPayValid) {
              // show snackbar
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Please fill in the form"),
                ),
              );
            } else {
              // clear the form after confirmation
              mobilePayKey.currentState!.reset();
              cardPayKey.currentState!.reset();
              voucherPayKey.currentState!.reset();
              userAccountPayKey.currentState!.reset();

              // * go to checkoutPageIndexProvider to payments
              ref.read(checkoutPageIndexProvider.notifier).state = 1;
            }
          },
        ),
      ],
    );
  }
}
