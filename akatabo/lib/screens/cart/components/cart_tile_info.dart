import 'package:flutter/cupertino.dart';

import '../../../akatabo_exporter.dart';
import '../../books/components/tile/name_description.dart';

class CartTileInfo extends StatelessWidget {
  const CartTileInfo({
    super.key,
    required this.akataBook,
  });

  final AkataBook akataBook;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: tileHeight + 15,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BookNameDescription(akataBook: akataBook),
            const VerticalSpace(of: spacing4),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // price
                Expanded(
                  child: Text(
                    ugxFormatter.format(akataBook.price),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      color: akataboColor,
                      fontSize: fontSize14,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),

                // spae
                const HorizontalSpace(of: spacing4),

                // remove
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.bag_fill_badge_minus,
                    // Icons.remove_circle_outline,
                    color: akataboRed,
                    size: 16,
                  ),
                  label: const Text(
                    'Remove',
                    style: TextStyle(
                      color: akataboRed,
                      fontSize: fontSize14,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
