import '../../../akatabo_exporter.dart';

class PricingSummary extends StatelessWidget {
  const PricingSummary({
    super.key,
    this.priceColor = akataboSecondaryColor,
    required this.pricing,
    required this.label,
  });

  final Color priceColor;

  // pricing
  final int pricing;

  // label
  final String label;

  @override
  Widget build(BuildContext context) {
    //
    return Padding(
      padding: verticalPadding4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // heading
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSize14,
                color: akataboSecondaryColor,
              ),
            ),
          ),

          // arrow
          Text(
            ugxFormatter.format(pricing),
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: fontSize14,
              color: priceColor,
            ),
          ),
        ],
      ),
    );
  }
}
