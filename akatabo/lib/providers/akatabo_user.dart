import '../akatabo_exporter.dart';

/// currenty logggen in user streamProvider
final currentUserStreamProvider =
    StreamProvider<DocumentSnapshot<AkataboUser>>((ref) {
  final User? user = FirebaseAuth.instance.currentUser;

  return usersDatabaseRef.doc(user!.uid).snapshots();
});

// * Current user from ID
final userFromIdStreamProvider = StreamProvider.autoDispose
    .family<DocumentSnapshot<AkataboUser>, String>((ref, userId) {
  return usersDatabaseRef.doc(userId).snapshots();
});

// akataboUserProvider make it dispose when no longer needed
//* more infor here https://riverpod.dev/docs/concepts/modifiers/auto_dispose/
final akataboUserProvider = StateProvider<AkataboUser>((ref) {
  // listen to the user stream
  final userStream = ref.watch(currentUserStreamProvider);

  final AkataboUser? akataboUser =
      userStream.whenData((DocumentSnapshot<AkataboUser> userSnaphot) {
    return userSnaphot.data();
  }).value;

  // print this Akatabo user as string
  // ignore: avoid_print
  print("Current Akatabo User is: ${akataboUser.toString()}");

    // get user from akataboDefaultUserProvider
  final akataboDefaultUser = ref.watch(akataboDefaultUserProvider);


  return akataboUser ?? akataboDefaultUser;
});
