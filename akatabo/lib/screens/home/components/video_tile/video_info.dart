import '../../../../akatabo_exporter.dart';

class VideoInfo extends StatelessWidget {
  const VideoInfo({
    super.key,
    required this.videoPost,
  });

  final AkataboVideo videoPost;

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
            // name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: padding2,
                  child: Text(
                    videoPost.title,
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
                  videoPost.description,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: fontSize12,
                    overflow: TextOverflow.ellipsis,
                    color: akataboColor.withOpacity(.5),
                  ),
                ),
                const VerticalSpace(of: spacing8),
              ],
            ),
            // user and rating
            Row(
              children: [
                // user
                Expanded(
                  child: Text(
                    videoPost.postedBy,
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
                  rating: videoPost.rating,
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
