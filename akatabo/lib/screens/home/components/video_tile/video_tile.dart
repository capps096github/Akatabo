import '../../../../akatabo_exporter.dart';
import 'video_info.dart';
import 'video_thumbnail.dart';

class VideoTile extends StatelessWidget {
  const VideoTile({
    Key? key,
    required this.videoPost,
  }) : super(key: key);
// video
  final AkataboVideo videoPost;

  @override
  Widget build(BuildContext context) {
    // button Color
    const backgroundColor = akataboColor;

    return Card(
      color: akataboWhite,
      surfaceTintColor: akataboWhite,
      margin: const EdgeInsets.symmetric(vertical: spacing4),
      shape: const RoundedRectangleBorder(borderRadius: borderRadius8),
      child: InkWell(
        borderRadius: borderRadius8,
        hoverColor: backgroundColor.withOpacity(.1),
        splashColor: backgroundColor.withOpacity(.1),
        onTap: () {
          // context.push('/watch/${videoPost.videoID}');
        },
        child: Padding(
          padding: padding8,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(spacing8),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: VideoThumbnail(videoPost: videoPost),
                ),
              ),
              //
              const HorizontalSpace(of: spacing8),
              //
              VideoInfo(videoPost: videoPost),
              //
            ],
          ),
        ),
      ),
    );
  }
}
