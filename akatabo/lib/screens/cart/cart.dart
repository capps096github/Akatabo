import '../../akatabo_exporter.dart';
import 'components/cart_list.dart';
import 'components/cart_total.dart';
import 'components/check_out_btn.dart';
import 'components/recently_viewed.dart';

class AkataboCart extends StatelessWidget {
  const AkataboCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spacing8),
      child: CustomScrollView(
        slivers: [
          const SliverVerticalSpace(of: spacing16),

          const SectionTitle(title: "Your Cart", onTap: null),

          const CartList(),
          const SliverVerticalSpace(of: spacing16),
          // title
          const CartTotal(),

          // checkout
          const CheckoutButton(),

          const SliverVerticalSpace(of: spacing64),

          // title
          SectionTitle(title: "Recently Viewed", onTap: () {}),

          // your books
          const RecentlyViewedBooks(),
        ],
      ),
    );
  }
}
