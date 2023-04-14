import '../../../akatabo_exporter.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({
    super.key,
    this.totalColor = akataboColor,
  });

  // total color
  final Color totalColor;

  @override
  Widget build(BuildContext context) {
//
    return Padding(
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
              "Total",
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
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: fontSize20,
                  color: totalColor,
                ),
              ),

              const HorizontalSpace(of: spacing4),

              // only
              Text(
                "/-",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize20,
                  color: totalColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
