import '../../../akatabo_exporter.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.bookCategory,
  });

  // book category
  final BookCategory bookCategory;

  @override
  Widget build(BuildContext context) {
    // title
    final title = bookCategory.title;

    // image
    final image = bookCategory.image;

    // color
    final backgroundColor = akataboRandomColor;

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
          // go to list of books via id
          // category id
          final categoryId = bookCategory.id;

          // go to list of books
          context.push("$booksPath/$categoryId");
        },
        child: Padding(
          padding: padding8,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppImage(
                imageUrl: image,
                borderRadius: borderRadius8,
                width: 90,
                height: 90,
              ),
              //
              const HorizontalSpace(of: spacing8),
              //
              // title
              Padding(
                padding: padding8,
                child: Text(
                  title,
                  maxLines: 2,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: akataboWhite,
                    fontSize: fontSize18,
                  ),
                ),
              ),

              //
            ],
          ),
        ),
      ),
    );
  }
}
