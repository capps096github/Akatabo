import '../../../akatabo_exporter.dart';

class YourAddress extends StatelessWidget {
  const YourAddress({
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
            "YOUR ADDRESS",
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
                Text(
                  "Username",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize14,
                    color: akataboSecondaryColor,
                  ),
                ),
                VerticalSpace(of: spacing8),
                Text(
                  "Kikoni Kampala - Uganda",
                  style: TextStyle(
                    fontSize: fontSize14,
                    color: akataboSecondaryColor,
                  ),
                ),
                VerticalSpace(of: spacing8),
                Text(
                  "+256 777 258369",
                  style: TextStyle(
                    fontSize: fontSize14,
                    color: akataboSecondaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
