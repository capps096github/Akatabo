import '../../../akatabo_exporter.dart';

class CheckoutButton extends ConsumerWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverToBoxAdapter(
      child: AppButton(
        label: "Checkout",
        onTap: () {
          // push to checkout screen
          context.push(checkoutPath);
        },
      ),
    );
  }
}
