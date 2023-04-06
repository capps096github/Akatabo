import '../../../../akatabo_exporter.dart';

class SectionTitleText extends StatelessWidget {
  const SectionTitleText({
    super.key,
    required this.title,
    required this.bodyText,
  });

  final String title, bodyText;

  @override
  Widget build(BuildContext context) {
    //
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: fontSize20,
            color: akataboSecondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const VerticalSpace(of: spacing4),
        Text(
          bodyText,
          style: const TextStyle(
            fontSize: fontSize14,
            color: akataboSecondaryColor,
          ),
        ),
      ],
    );
  }
}
