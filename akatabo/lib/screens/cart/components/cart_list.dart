import '../../../akatabo_exporter.dart';
import 'cart_tile.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO shud have a checker incase user has no books
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          // book
          final book = akataboBooks[index];

          return CartTile(akataBook: book);
        },
        childCount: akataboBooks.length,
      ),
    );
  }
}
