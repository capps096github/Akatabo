import '../../../akatabo_exporter.dart';
import '../summary/summary_card.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        // title
        Text(
          "PAYMENT SUMMARY",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),

        // vertical space
        VerticalSpace(of: spacing16),

        // payment summary
        PaymentSummaryCard(),
      ],
    );
  }
}
