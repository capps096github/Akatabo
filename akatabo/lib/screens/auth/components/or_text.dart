import '../../../akatabo_exporter.dart';

class OrAuthText extends StatelessWidget {
  const OrAuthText({
    super.key,
    this.actionText = "Or",
  });

  // action text
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding16,
      child: Row(
        children: [
          Expanded(
            child: ThickHorizontalDivider(
              color: akataboWhite.withOpacity(.6),
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: spacing16),
            child: Text(
              actionText,
              style: const TextStyle(
                color: akataboWhite,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: ThickHorizontalDivider(
              color: akataboWhite.withOpacity(.6),
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
