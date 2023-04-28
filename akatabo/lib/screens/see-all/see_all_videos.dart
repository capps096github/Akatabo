import '../../akatabo_exporter.dart';
import '../home/components/videos_list.dart';
import 'see_all_screen.dart';

class SeeAllVideos extends StatelessWidget {
  const SeeAllVideos({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return const AkataboSeeAll(
      seeAllSliver: VideosList(),
      title: "Videos for You",
    );
  }
}
