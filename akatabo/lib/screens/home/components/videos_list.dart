import '../../../akatabo_exporter.dart';
import 'video_tile/video_tile.dart';

class VideosList extends StatelessWidget {
  const VideosList({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          // akataboVideo
          final akataboVideo = akataboVideos[index];

          return VideoTile(videoPost: akataboVideo);
        },
        childCount: akataboVideos.length,
      ),
    );
  }
}
