import '../../akatabo_exporter.dart';
import 'pages/pages_data.dart';
import 'providers.dart';

class CheckoutNavbar extends ConsumerWidget {
  const CheckoutNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final checkoutPageIndex = ref.watch(checkoutPageIndexProvider);

    return Container(
      color: akataboBackground,
      padding: padding16,
      child: checkoutPages[checkoutPageIndex].cta,
    );
  }
}
