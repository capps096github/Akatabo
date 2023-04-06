import '../../../../akatabo_exporter.dart';

class OtherDetailText extends StatelessWidget {
  const OtherDetailText({
    super.key,
    required this.title,
    required this.text,
  });

  final String title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: spacing2),
      child: Row(
        children: [
          Text(
            "$title: ",
            style: const TextStyle(
              fontSize: fontSize14,
              color: akataboSecondaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const HorizontalSpace(of: spacing4),
          Text(
            text,
            style: const TextStyle(
              fontSize: fontSize14,
              color: akataboSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
