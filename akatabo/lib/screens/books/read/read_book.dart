import 'book_page.dart';
import 'read_navbar.dart';

import '../../../akatabo_exporter.dart';

class ReadBook extends StatelessWidget {
  const ReadBook({super.key, required this.book});

  final AkataBook book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        leading: const AkataboBackButton(),
        title: Text(book.title),
      ),
      // juhs a container switching colors on ta on a btton
      body: const BookPage(),
      bottomNavigationBar: const ReadNavbar(),
    );
  }
}
