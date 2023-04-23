import '../../../akatabo_exporter.dart';

class CategoryCard extends ConsumerWidget {
  const CategoryCard({
    super.key,
    required this.bookCategory,
  });

  // book category
  final BookCategory bookCategory;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final akataboResponsive = AkataboResponsive(context: context);

    final isMobile = akataboResponsive.isMobileScreen;

    // image size 100 on mobile and 125 on others
    final double imageSize = isMobile ? 100 : 125;

    // title
    final title = bookCategory.title;

    // image
    final image = bookCategory.image;

    // color
    final color = Color(bookCategory.colorCode);

    return Container(
      margin: margin4,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius8,
        gradient: LinearGradient(
          colors: bookCategory.gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: InkWell(
        borderRadius: borderRadius8,
        onTap: () {
          // go to list of books via id
          // category id
          final categoryId = bookCategory.id;

          // go to list of books
          context.push("$booksPath/$categoryId");
        },
        child: Stack(
          children: [
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

            // image at the bottom left conner but tilted to an angle of 45 degrees
            Positioned(
              bottom: 0,
              right: 0,
              child: AppImage(
                imageUrl: image,
                fit: BoxFit.fill,
                backgroundColor: bookCategory.gradientColors.last,
                borderRadius: borderRadius4,
                height: imageSize,
                width: imageSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
