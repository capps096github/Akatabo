// ignore_for_file: avoid_print

import '../../akatabo_exporter.dart';

class AkataboDBService {
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
  static Future<void> uploadAkataboGoogleUser({
    required AkataboUser appUser,
    required WidgetRef ref,
  }) async =>
      await usersDatabaseRef
          .doc(appUser.userId)
          .get()
          .then((akataboUser) async {
        if (akataboUser.exists) {
          //user exists then check if their levelOfEduc is empty,
          if (akataboUser.data()?.levelOfEduc == '') {
            //if it is empty then go to the select level page index
            // go to setEducLevelPath
            ref.read(goRouterProvider).go(setEducLevelPath);
          }
          //if it is not empty then just return
          return;
        } else {
          //user doesn't exist - create and upload a new user in firestore
          await uploadAkataboUser(appUser: appUser).then((_) {
            // go to home if all is set - Well use the same logic to set the gender for our Calcut app
            ref.read(goRouterProvider).go(homePath);
          });
        }
      });

  /// This function deletes the user from the cloud
  static Future<void> deleteAkataboUser({required String userId}) async =>
      await usersDatabaseRef.doc(userId).delete();

  /// this function updates the levelOfEduc field of the user
  ///
  /// [levelOfEduc] is the new level of education
  static Future<void> updateLevelOfEduc({
    required String levelOfEduc,
    required String userId,
  }) async {
    await usersDatabaseRef.doc(userId).update({'levelOfEduc': levelOfEduc});
  }
}
