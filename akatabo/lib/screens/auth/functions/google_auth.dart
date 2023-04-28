import '../../../akatabo_exporter.dart';
import 'dart:async';

import 'error_handler.dart';

Future<void> akataboGoogleAuth({required WidgetRef ref}) async {
  FirebaseAuth auth = FirebaseAuth.instance;

// * WEB
  if (isAkataboWeb) {
    GoogleAuthProvider authProvider = GoogleAuthProvider();

    try {
      await auth.signInWithPopup(authProvider).then(
            (userCredential) => uploadUserToCloud(userCredential, ref),
          );
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
  // * MOBILE
  else {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

// ? Logic Here
      try {
        await auth
            .signInWithCredential(credential)
            .then((userCredential) => uploadUserToCloud(userCredential, ref));
      } on FirebaseAuthException catch (e) {
        checkExceptionAndUpdate(firebaseAuthException: e, ref: ref);
      } catch (e) {
        // update authErrorTextProvider
        ref.read(authErrorTextProvider.notifier).state =
            'Error Authenticating with Google. Try Again.\nError Code: ${e.toString()}';
      }
    }
  }
}

Future<void> uploadUserToCloud(
  UserCredential userCredential,
  WidgetRef ref,
) async {
  final User? user = userCredential.user;
  if (user != null) {
    final akataboUser = AkataboUser(
      username: user.displayName ?? "-",
      email: user.email ?? "-",
      profilePic: user.photoURL ?? defaultProfilePic,
      userId: user.uid,
      isEmailVerified: user.emailVerified,
      authProvider: user.providerData[0].providerId,
      authProviderDisplayName:
          user.providerData[0].displayName ?? 'Akatabo Auth',
      joinedOn: Timestamp.now(),
    );

    //? wait for futures ...
    await Future.wait([
      // reload the user
      user.reload(),

      /// Upload User
      AkataboDBService.uploadAkataboGoogleUser(appUser: akataboUser, ref: ref),
    ]);
  }
}
