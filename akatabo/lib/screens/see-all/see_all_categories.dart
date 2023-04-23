import '../../akatabo_exporter.dart';
import 'components/category_tile.dart';

class SeeAllCategories extends StatelessWidget {
  const SeeAllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      // this to later on change to search
      body: CustomScrollView(
        controller: ScrollController(),
        slivers: [
          const SliverAppBar(
            pinned: true,
            title: Text("All Categories"),
            leading: AkataboBackButton(path: homePath),
          ),

          // search bar
          // const SliverAppBar(
          //   floating: true,
          //   automaticallyImplyLeading: false,
          //   title: SearchContainer(),
          // ),

          const SliverVerticalSpace(of: spacing32),

          // list of books
          SliverPadding(
            padding: horizontalPadding8,
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  // book category
                  final bookCategory = bookCategories[index];
                  //
                  return CategoryTile(bookCategory: bookCategory);
                },
                childCount: bookCategories.length,
              ),
            ),
          ),

          // space
          const SliverVerticalSpace(of: spacing16),
        ],
      ),
    );
  }
}
