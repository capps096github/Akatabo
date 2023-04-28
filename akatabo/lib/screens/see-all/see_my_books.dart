import '../../akatabo_exporter.dart';
import '../books/components/your_books.dart';
import 'see_all_screen.dart';

class SeeMyBooks extends StatelessWidget {
  const SeeMyBooks({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return const AkataboSeeAll(
      seeAllSliver: YourBooks(),
      title: "My Books",
    );
  }
}
