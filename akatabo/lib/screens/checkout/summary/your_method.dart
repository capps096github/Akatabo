import '../../../akatabo_exporter.dart';
import '../components/methods_list.dart';
import '../providers.dart';

class YourMethod extends ConsumerWidget {
  const YourMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final paymentMethodIndex = ref.watch(paymentMethodIndexProvider);
    final paymentMethods = ref.watch(paymentMethodsProvider);

    // payment method
    final paymentMethod = paymentMethods[paymentMethodIndex];
    //
    return Padding(
      padding: padding8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "YOUR PAYMENT METHOD",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize18,
              color: akataboSecondaryColor,
            ),
          ),

          const VerticalSpace(of: spacing8),
          // rounded container at 8
          Container(
            padding: padding8,
            decoration: BoxDecoration(
              color: akataboWhite,
              border: Border.all(
                color: akataboSecondaryColor,
                width: 2,
              ),
              borderRadius: borderRadius8,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // radio button
                const Icon(
                  Icons.radio_button_checked,
                  color: akataboRadioButtonColor,
                ),

                const HorizontalSpace(of: spacing8),
                //
                Text(
                  paymentMethod.label,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize14,
                    color: akataboSecondaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
