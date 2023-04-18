import '../../../akatabo_exporter.dart';
import '../../cart/components/cart_list.dart';
import '../providers.dart';
import 'methods_list.dart';

class PayingFor extends ConsumerWidget {
  const PayingFor({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final paymentMethods = ref.watch(paymentMethodsProvider);

    final paymentMethodIndex = ref.watch(paymentMethodIndexProvider);

    // payment method
    final paymentMethod = paymentMethods[paymentMethodIndex];

    //
    return CustomScrollView(
      slivers: [
        // heading
        SliverToBoxAdapter(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
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

              const VerticalSpace(of: spacing16),
            ],
          ),
        ),

        const SliverToBoxAdapter(
          child: Center(
            child: ThickHorizontalDivider(),
          ),
        ),

        const SectionTitle(title: "Your Cart", onTap: null),

        const CartList(),
      ],
    );
  }
}
