import '../../../../akatabo_exporter.dart';
import 'book_info.dart';

class BookTile extends StatelessWidget {
  const BookTile({super.key, required this.akataBook});

  final AkataBook akataBook;

  @override
  Widget build(BuildContext context) {
    // button Color
    const backgroundColor = akataboColor;

    return Card(
      color: akataboWhite,
      surfaceTintColor: akataboWhite,
      margin: const EdgeInsets.symmetric(vertical: spacing4),
      shape: const RoundedRectangleBorder(borderRadius: borderRadius8),
      child: InkWell(
        borderRadius: borderRadius8,
        hoverColor: backgroundColor.withOpacity(.1),
        splashColor: backgroundColor.withOpacity(.1),
        onTap: () {
          // context.push('/watch/${videoPost.videoID}');
        },
        child: Padding(
          padding: padding8,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppImage(
                imageUrl: akataBook.coverImage,
                borderRadius: borderRadius8,
                width: 80,
                height: 80,
              ),
              //
              const HorizontalSpace(of: spacing8),
              //
              BookInfo(akataBook: akataBook),
              //
            ],
          ),
        ),
      ),
    );
  }
}
