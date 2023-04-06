import 'package:flutter/cupertino.dart';

import '../../../../akatabo_exporter.dart';

class BookHeader extends StatelessWidget {
  const BookHeader({
    super.key,
    required this.akataBook,
  });

  final AkataBook akataBook;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: recentBooksCoverHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // cover image
          AppImage(
            imageUrl: akataBook.coverImage,
            borderRadius: borderRadius4,
            fit: BoxFit.fill,
            width: recentBooksWidth,
            height: recentBooksCoverHeight,
          ),
          //
          const HorizontalSpace(of: spacing8),
          // title
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: spacing8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // author
                      Text(
                        "by ${akataBook.author}",
                        style: const TextStyle(
                          fontSize: fontSize16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const VerticalSpace(of: spacing8),

                      // price
                      Text(
                        ugxFormatter.format(akataBook.price),
                        style: const TextStyle(
                          fontSize: fontSize24,
                          fontWeight: FontWeight.bold,
                          color: akataboColor,
                        ),
                      ),
                      const VerticalSpace(of: spacing16),

                      // rating
                      RatingBarIndicator(
                        rating: akataBook.rating,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: akataboRatingsColor,
                        ),
                        unratedColor: akataboSecondaryColor.withOpacity(.2),
                        itemCount: 5,
                        itemSize: 20.0,
                      ),
                    ],
                  ),
                  const VerticalSpace(of: spacing8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      // user
                      Icon(
                        CupertinoIcons.tag_fill,
                        color: akataboPink,
                      ),

                      HorizontalSpace(of: spacing4),

                      // rating
                      Text(
                        "Best Seller (2018)",
                        style: TextStyle(
                          fontSize: fontSize12,
                          color: akataboPink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
