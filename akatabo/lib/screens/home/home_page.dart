import '../../akatabo_exporter.dart';
import 'components/exporter.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontalPadding8,
      child: CustomScrollView(
        slivers: [
          const SliverVerticalSpace(of: spacing16),

          // text
          const GreetingIntro(),

          const SliverVerticalSpace(of: spacing16),

          // search
          const SliverSearchContainer(),
          const SliverVerticalSpace(of: spacing16),

          // title
          SectionTitle(
            title: "Categories",
            onTap: () {
              // go to list of categories
              context.push(seeAllCategoriesPath);
            },
          ),

          // categories
          const CategoriesGrid(),

          const SliverVerticalSpace(of: spacing32),

          // title
          SectionTitle(
            title: "Videos for You",
            onTap: () {
              // go to list of books
              context.push(seeAllVideosPath);
            },
          ),

          // videos
          const VideosList(),

          const SliverVerticalSpace(of: spacing32),
        ],
      ),
    );
  }
}
