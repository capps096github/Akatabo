import '../../../akatabo_exporter.dart';
import 'book_card.dart';

class RecentBook extends StatefulWidget {
  const RecentBook({
    super.key,
    required this.book,
  });

  final AkataBook book;

  @override
  State<RecentBook> createState() => _RecentBookState();
}

class _RecentBookState extends State<RecentBook> {
// is hovered
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: quarterSeconds,
      margin: const EdgeInsets.only(right: spacing8),
      width: recentBooksWidth,
      // height: recentBooksHeight,
      padding: isHovered ? padding2 : null,
      decoration: BoxDecoration(
        color: akataboWhite.withOpacity(.5),
        borderRadius: borderRadius8,
        border: isHovered
            ? Border.all(
                color: akataboColor.withOpacity(.7),
                width: 1,
              )
            : null,
      ),
      child: InkWell(
        onTap: () {
          // TODO navigate to book details
        },
        hoverColor: akataboColor.withOpacity(.05),
        onHover: (value) => setState(() => isHovered = value),
        borderRadius: borderRadius6,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // progress bar
            LinearPercentIndicator(
              width: recentBooksWidth - spacing8,
              // to center the progress bar
              alignment: MainAxisAlignment.center,
              // TODO create a class of recent books that inherits from book but comes with a progress parameter
              // or takes a book ID and then returns the book and tracks the progress
              percent: 0.3,
              backgroundColor: akataboSecondaryColor.withOpacity(.2),
              progressColor: akataboColor,
              barRadius: circularRadius4,
            ),

            // book cover
            const VerticalSpace(of: spacing4),
            // book
            BookCard(book: widget.book),
          ],
        ),
      ),
    );
  }
}
