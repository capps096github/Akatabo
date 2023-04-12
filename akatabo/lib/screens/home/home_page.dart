import '../../akatabo_exporter.dart';
import 'components/exporter.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spacing8),
      child: CustomScrollView(
        slivers: [
          const SliverVerticalSpace(of: spacing16),

          // text
          const GreetingIntro(),

          const SliverVerticalSpace(of: spacing16),

          // search
          const SearchContainer(),
          const SliverVerticalSpace(of: spacing16),

          // title
          SectionTitle(title: "Categories", onTap: () {}),

          // categories
          const CategoriesGrid(),

          const SliverVerticalSpace(of: spacing32),

          // title
          SectionTitle(title: "Videos for You", onTap: () {}),

          // videos
          const VideosList(),

          const SliverVerticalSpace(of: spacing32),
        ],
      ),
    );
  }
}
