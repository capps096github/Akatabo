import '../../../akatabo_exporter.dart';
import '../components/methods_list.dart';
import '../providers.dart';

class MakePayment extends ConsumerWidget {
  const MakePayment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // is confirming
    final isConfirming = ref.watch(isConfirmingPaymentProvider);

    final paymentMethods = ref.watch(paymentMethodsProvider);

    final paymentMethodIndex = ref.watch(paymentMethodIndexProvider);

    // payment method
    final paymentMethod = paymentMethods[paymentMethodIndex];

    return AnimatedSwitcher(
      duration: quarterSeconds,
      child: isConfirming
          ? const ConfirmingPayment()
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // heading
                const Text(
                  "You're Paying",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize16,
                  ),
                ),

                const VerticalSpace(of: spacing8),
                // arrow
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // see all
                    Text(
                      ugxFormatter.format(100000),
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: fontSize20,
                        color: akataboRadioButtonColor,
                      ),
                    ),

                    const HorizontalSpace(of: spacing4),

                    // only
                    const Text(
                      "/-",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize20,
                        color: akataboRadioButtonColor,
                      ),
                    ),
                  ],
                ),

                const VerticalSpace(of: spacing16),

                //
                const Text(
                  "via",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize16,
                  ),
                ),
                //

                //
                Text(
                  paymentMethod.label,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize18,
                    color: akataboColor,
                  ),
                ),
              ],
            ),
    );
  }
}

class ConfirmingPayment extends StatelessWidget {
  const ConfirmingPayment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        // progress indicator
        CircularProgressIndicator(),

        VerticalSpace(of: spacing16),
        // text
        Center(
          child: Text('Making Payment ... Please Wait'),
        ),
      ],
    );
  }
}
