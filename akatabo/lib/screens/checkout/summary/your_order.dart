import '../../../akatabo_exporter.dart';
import '../components/pricing_summary.dart';

class YourOrder extends StatelessWidget {
  const YourOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "YOUR ORDER",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize18,
              color: akataboSecondaryColor,
            ),
          ),

          const VerticalSpace(of: spacing8),
          // rounded container at 8
          Container(
            width: double.infinity,
            padding: padding8,
            decoration: const BoxDecoration(
              color: akataboWhite,
              borderRadius: borderRadius8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                PricingSummary(label: "Subtotal", pricing: 50000),
                PricingSummary(label: "Voucher Discount", pricing: 5000),
                ThickHorizontalDivider(
                  width: double.infinity,
                  thickness: 2,
                  color: akataboSecondaryColor,
                  margin: EdgeInsets.symmetric(vertical: spacing8),
                ),
                PricingSummary(
                  label: "Total",
                  pricing: 45000,
                  priceColor: akataboRadioButtonColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
