import '../../akatabo_exporter.dart';

/// cartStream
final cartStreamProvider =
    StreamProvider.autoDispose<QuerySnapshot<AkataBook>>((ref) {
  // items with a low price appear first
  return cartDatabaseRef.orderBy("price").snapshots();
});

/// returns all carts from the cloud
final calcutPluscartsProvider =
    StateProvider.autoDispose<List<AkataBook>>((ref) {
  // listen to the user stream
  final cartStream = ref.watch(cartStreamProvider);

  //
  final List<AkataBook>? allCartList =
      cartStream.whenData((QuerySnapshot<AkataBook> cartsQuerySnapshot) {
    return cartsQuerySnapshot.docs
        .map((QueryDocumentSnapshot<AkataBook> cartDocSnapshot) =>
            cartDocSnapshot.data())
        .toList();
  }).value;

  // print this calcut user as string
  // ignore: avoid_print
  print("Current cart list is: ${allCartList.toString()}");

  /// return [cartList] if not null else return [defaultcartList]
  return allCartList ?? akataboBooks;
});
