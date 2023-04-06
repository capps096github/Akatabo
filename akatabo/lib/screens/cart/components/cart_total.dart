import '../../../akatabo_exporter.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
//
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: spacing8,
          vertical: spacing8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // heading
            const Expanded(
              child: Text(
                "Subtotal",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize18,
                  color: akataboColor,
                ),
              ),
            ),

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
                    color: akataboColor,
                  ),
                ),

                const HorizontalSpace(of: spacing4),

                // arrow
                // see all
                const Text(
                  "/-",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize20,
                    color: akataboColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
