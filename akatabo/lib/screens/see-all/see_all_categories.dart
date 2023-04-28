import '../../akatabo_exporter.dart';
import '../home/components/categories_grid.dart';
import 'see_all_screen.dart';

class SeeAllCategories extends StatelessWidget {
  const SeeAllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return const AkataboSeeAll(
      seeAllSliver: CategoriesGrid(),
      title: "All Categories",
    );
  }
}
