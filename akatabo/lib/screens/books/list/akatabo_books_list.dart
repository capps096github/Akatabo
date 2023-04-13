import '../../../akatabo_exporter.dart';
import 'providers.dart';

class AkataboBooksList extends ConsumerWidget {
  const AkataboBooksList({super.key, required this.categoryId});

// category id
  final String categoryId;

  @override
  Widget build(BuildContext context, ref) {
    // get this book category via the category id
    final bookCategory = ref.watch(bookCategoryProvider(categoryId));

    // get the list of books that belong to this category
    final booksList = ref.watch(booksListProvider(bookCategory));

    //
    return Scaffold(
      // this to later on change to search
      body: CustomScrollView(
        controller: ScrollController(),
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(bookCategory.title),
            leading: BackButton(onPressed: () => context.go(homePath)),
          ),

          // search bar
          const SliverAppBar(
            floating: true,
            automaticallyImplyLeading: false,
            title: SearchContainer(),
          ),

          // list of books
          SliverPadding(
            padding:  horizontalPadding8,
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  // book
                  final book = booksList[index];

                  return BookTile(akataBook: book);
                },
                childCount: booksList.length,
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
