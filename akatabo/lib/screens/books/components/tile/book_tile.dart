import '../../../../akatabo_exporter.dart';
import 'book_info.dart';

class BookTile extends StatelessWidget {
  const BookTile({super.key, required this.akataBook});

  final AkataBook akataBook;

  @override
  Widget build(BuildContext context) {
    // button Color
    const backgroundColor = akataboColor;

    return OpenRoute(
      routePath: '/book/${akataBook.bookId}',
      to: BookDetail(akataBook: akataBook),
      closedBuilder: (context, goToDetails) => Card(
        color: akataboWhite,
        surfaceTintColor: akataboWhite,
        margin: const EdgeInsets.symmetric(vertical: spacing4),
        shape: const RoundedRectangleBorder(borderRadius: borderRadius8),
        child: InkWell(
          borderRadius: borderRadius8,
          hoverColor: backgroundColor.withOpacity(.1),
          splashColor: backgroundColor.withOpacity(.1),
          onTap: goToDetails,
          child: Padding(
            padding: padding8,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppImage(
                  imageUrl: akataBook.coverImage,
                  borderRadius: borderRadius8,
                  width: 90,
                  height: 90,
                ),
                //
                const HorizontalSpace(of: spacing8),
                //
                BookTileInfo(akataBook: akataBook),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
