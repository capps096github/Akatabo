// ? ---- Users Database ----
import '../../akatabo_exporter.dart';

const usersDatabasePath = 'akatabo_users';

/// Links to [usersDatabasePath] database in cloud firestore
// final usersDatabase = FirebaseFirestore.instance.collection(usersDatabasePath);
final usersDatabaseRef = FirebaseFirestore.instance
    .collection(usersDatabasePath)
    .withConverter<AkataboUser>(
      fromFirestore: (snapshot, _) =>
          AkataboUser.fromFirestore(userMap: snapshot.data()!),
      toFirestore: (thumbsUser, _) => thumbsUser.toFirestore(),
    );