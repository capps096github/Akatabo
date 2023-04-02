import '../../../akatabo_exporter.dart';
import 'category_card.dart';

class CategoriesGrid extends ConsumerWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final akataboResponsive = AkataboResponsive(context: context);

    final isMobile = akataboResponsive.isMobileScreen;

    //
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: isMobile ? 200 : 300,
        childAspectRatio: 1,
      ),
      itemCount: bookCategories.length,
      itemBuilder: (context, index) {
        // book category
        final bookCategory = bookCategories[index];
        //
        return CategoryCard(bookCategory: bookCategory);
      },
    );
  }
}
