import '../../../akatabo_exporter.dart';
import 'your_address.dart';
import 'your_method.dart';
import 'your_order.dart';

class PaymentSummaryCard extends StatelessWidget {
  const PaymentSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Container(
      decoration: BoxDecoration(
        color: akataboWhite.withOpacity(.5),
        borderRadius: borderRadius8,
      ),
      padding: verticalPadding8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          //
          YourOrder(),
          //
          YourAddress(),
          //
          YourMethod(),
        ],
      ),
    );
  }
}
