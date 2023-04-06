import '../../../akatabo_exporter.dart';
import 'cart_tile_info.dart';

class CartTile extends StatelessWidget {
  const CartTile({super.key, required this.akataBook});

  final AkataBook akataBook;

  @override
  Widget build(BuildContext context) {
    //
    return Card(
      color: akataboWhite,
      surfaceTintColor: akataboWhite,
      margin: const EdgeInsets.symmetric(vertical: spacing4),
      shape: const RoundedRectangleBorder(borderRadius: borderRadius8),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: padding8,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppImage(
              imageUrl: akataBook.coverImage,
              borderRadius: borderRadius8,
              width: tileHeight + 10,
              height: tileHeight + 10,
            ),
            //
            const HorizontalSpace(of: spacing8),
            //
            CartTileInfo(akataBook: akataBook),
          ],
        ),
      ),
    );
  }
}
