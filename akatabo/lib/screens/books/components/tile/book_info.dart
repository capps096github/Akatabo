import '../../../../akatabo_exporter.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
    required this.akataBook,
  });

  final AkataBook akataBook;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          const VerticalSpace(of: spacing8),
          Row(
            children: [
              // user
              Expanded(
                child: Text(
                  akataBook.author,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                    color: akataboColor,
                    fontSize: fontSize10,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),

              const HorizontalSpace(of: spacing4),

              // rating
              RatingBarIndicator(
                rating: akataBook.rating,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: akataboRatingsColor,
                ),
                unratedColor: akataboSecondaryColor.withOpacity(.2),
                itemCount: 5,
                itemSize: 12.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
