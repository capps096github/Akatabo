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
      // height: recentBooksCoverHeight,
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
                  // title and author and rating and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // author
                      Text(
                        akataBook.author,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: fontSize16,
                          color: akataboColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const VerticalSpace(of: spacing8),

                      // title
                      Text(
                        akataBook.title,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: fontSize20,
                          color: akataboSecondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const VerticalSpace(of: spacing8),

                      // rating
                      Wrap(
                        runSpacing: spacing8,
                        spacing: spacing8,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
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
                          // price
                          Text(
                            ugxFormatter.format(akataBook.price),
                            style: const TextStyle(
                              fontSize: fontSize18,
                              fontWeight: FontWeight.bold,
                              color: akataboColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const VerticalSpace(of: spacing16),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
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
