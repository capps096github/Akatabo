// ignore_for_file: avoid_print

import '../../akatabo_exporter.dart';

final akataboDBServiceProvider = Provider<AkataboDBService>((ref) {
  final akataboUser = ref.watch(akataboUserProvider);

  //
  return AkataboDBService(akataboUser: akataboUser);
});

class AkataboDBService {
  /// curreent app user at the moment
  final AkataboUser akataboUser;

  ///we make this take in the current app user so that we don't have to manually pass it in all the time
  AkataboDBService({required this.akataboUser});

// * Static Methods --------------------------------------------------------------------------------

  // ? ---- Users Database Service ----
  ///This function uploads the user to cloud under the [usersDatabaseRef]
  static Future<void> uploadAkataboUser({required AkataboUser appUser}) async =>
      await usersDatabaseRef
          .doc(appUser.userId)
          .set(
            appUser,
            SetOptions(merge: true),
          )
          .then((_) => print("User uploaded successfully"));

  // upload user on sign in incase they are new and don't exist in our database yet
  static Future<void> uploadAkataboUserOnSignIn(
          {required AkataboUser appUser}) async =>
      await usersDatabaseRef
          .doc(appUser.userId)
          .get()
          .then((akataboUser) async {
        if (akataboUser.exists) {
          //user exists then just return
          return;
        } else {
          //user doesn't exist - create and upload a new user in firestore
          await uploadAkataboUser(appUser: appUser);
        }
      });

  ///This function uploads the google user to cloud under the [usersDatabaseRef]
  static Future<void> uploadAkataboGoogleUser(
          {required AkataboUser appUser}) async =>
      await usersDatabaseRef
          .doc(appUser.userId)
          .get()
          .then((akataboUser) async {
        if (akataboUser.exists) {
          //user exists then just return
          return;
        } else {
          //user doesn't exist - create and upload a new user in firestore
          await uploadAkataboUser(appUser: appUser);
        }
      });

  /// This function deletes the user from the cloud
  static Future<void> deleteAkataboUser({required String userId}) async =>
      await usersDatabaseRef.doc(userId).delete();

  /// this function updates the levelOfEduc field of the user
  ///
  /// [levelOfEduc] is the new level of education
  Future<void> updateLevelOfEduc({required String levelOfEduc}) async {
    await usersDatabaseRef
        .doc(akataboUser.userId)
        .update({'levelOfEduc': levelOfEduc});
  }
}
