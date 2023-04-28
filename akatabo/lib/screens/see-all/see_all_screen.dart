import '../../akatabo_exporter.dart';

class AkataboSeeAll extends StatelessWidget {
  const AkataboSeeAll({
    super.key,
    required this.title,
    required this.seeAllSliver,
  });

  // title
  final String title;

  // see all widget
  final Widget seeAllSliver;

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      // this to later on change to search
      body: CustomScrollView(
        controller: ScrollController(),
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(title),
            leading: const AkataboBackButton(path: homePath),
          ),

          const SliverVerticalSpace(of: spacing32),

          // 
          SliverPadding(
            padding: horizontalPadding8,
            sliver: seeAllSliver,
          ),

          // space
          const SliverVerticalSpace(of: spacing16),
        ],
      ),
    );
  }
}
