import '../../../akatabo_exporter.dart';
import 'components/book_header.dart';
import 'components/buy_now_btn.dart';
import 'components/other_detail_text.dart';
import 'components/section_title_text.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key, required this.akataBook});

  final AkataBook akataBook;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(akataBook.title),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: spacing8),
        children: [
          BookHeader(akataBook: akataBook),

          //
          const VerticalSpace(of: spacing16),

          // cover description
          Text(
            akataBook.coverDescription,
            style: const TextStyle(
              color: akataboSecondaryColor,
            ),
          ),

          const VerticalSpace(of: spacing16),

          // texts
          SectionTitleText(
            title: "Description",
            bodyText: akataBook.description,
          ),
          const VerticalSpace(of: spacing16),

          // other details
          const SectionTitleText(
            title: "Book Details",
            bodyText: "Here's more of what you need to know about this book",
          ),
          const VerticalSpace(of: spacing8),

          OtherDetailText(
            title: "Publisher",
            text: akataBook.publisher,
          ),
          OtherDetailText(
            title: "Publisher No",
            text: akataBook.publisherNo,
          ),
          OtherDetailText(
            title: "Published On",
            text: dateFormatter.format(akataBook.publishedOn),
          ),
          OtherDetailText(
            title: "Language",
            text: akataBook.bookLanguage,
          ),
          OtherDetailText(
            title: "Pages",
            text: "${akataBook.numOfPages} pages",
          ),
          OtherDetailText(
            title: "Size",
            text: "${akataBook.bookSize} MB",
          ),

          const VerticalSpace(of: spacing16),
        ],
      ),
      bottomNavigationBar: BuyNowButton(akataBook: akataBook),
    );
  }
}
