import '../../akatabo_exporter.dart';
import '../cart/components/recently_viewed.dart';
import 'see_all_screen.dart';

class SeeAllRecents extends StatelessWidget {
  const SeeAllRecents({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return const AkataboSeeAll(
      seeAllSliver: RecentlyViewedBooks(),
      title: "Recently Viewed",
    );
  }
}
