import '../../../../akatabo_exporter.dart';

class BookNameDescription extends StatelessWidget {
  const BookNameDescription({
    super.key,
    required this.akataBook,
  });

  final AkataBook akataBook;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // name
        Padding(
          padding: padding2,
          child: Text(
            akataBook.title,
            maxLines: 1,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: fontSize16,
              color: akataboSecondaryColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const VerticalSpace(of: spacing2),
        Text(
          akataBook.description,
          maxLines: 2,
          style: TextStyle(
            fontSize: fontSize12,
            overflow: TextOverflow.ellipsis,
            color: akataboColor.withOpacity(.5),
          ),
        ),
      ],
    );
  }
}
