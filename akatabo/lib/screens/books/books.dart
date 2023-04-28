import '../../akatabo_exporter.dart';
import 'components/recent_books_list.dart';
import 'components/your_books.dart';

class AkataboBooks extends StatelessWidget {
  const AkataboBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontalPadding8,
      child: CustomScrollView(
        slivers: [
          const SliverVerticalSpace(of: spacing16),

          const SliverVerticalSpace(of: spacing16),

          // search
          const SliverSearchContainer(),
          const SliverVerticalSpace(of: spacing16),

          // title
          SectionTitle(
              title: "Recent",
              onTap: () {
                // go to list of recents
                context.push(seeAllRecentsPath);
              }),

          const RecentBooksList(),

          const SliverVerticalSpace(of: spacing32),

          // title
          SectionTitle(
              title: "My Books",
              onTap: () {
                // go to list of recents
                context.push(seeMyBooksPath);
              }),

          // your books
          const YourBooks(),

          const SliverVerticalSpace(of: spacing32),
        ],
      ),
    );
  }
}
