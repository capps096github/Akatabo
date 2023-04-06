import '../../../../akatabo_exporter.dart';
import 'author.dart';
import 'name_description.dart';

class BookTileInfo extends StatelessWidget {
  const BookTileInfo({
    super.key,
    required this.akataBook,
  });

  final AkataBook akataBook;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: tileHeight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BookNameDescription(akataBook: akataBook),
            const VerticalSpace(of: spacing8),
            Row(
              children: [
                // user
                Expanded(child: BookAuthor(akataBook: akataBook)),

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
      ),
    );
  }
}
