import '../../../akatabo_exporter.dart';

class CheckoutButton extends ConsumerWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverToBoxAdapter(
      child: AppButton(
        text: "Checkout",
        onTap: () {},
      ),
    );
  }
}
