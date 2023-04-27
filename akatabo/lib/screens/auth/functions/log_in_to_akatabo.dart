import '../../../akatabo_exporter.dart';
import 'error_handler.dart';

Future<void> loginToAkatabo({
  required String email,
  required String password,
  required WidgetRef ref,
}) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((UserCredential userCredential) async {
      final User? user = userCredential.user;
      if (user != null) {
        final calcutUser = AkataboUser(
          username: user.displayName ?? '-',
          email: user.email ?? '-',
          profilePic: user.photoURL ?? defaultProfilePic,
          userId: user.uid,
          isEmailVerified: user.emailVerified,
          authProvider: user.providerData[0].providerId,
          authProviderDisplayName:
              user.providerData[0].displayName ?? 'Akatabo Auth',
          joinedOn: Timestamp.now(),
        );

        // wait for futures
        await Future.wait([
          //  verify email
          if (!user.emailVerified) user.sendEmailVerification(),

          // reload the user
          user.reload(),

          // upload user to database
          AkataboDBService.uploadAkataboUserOnSignIn(appUser: calcutUser),
        ]);
      }
    });
    // Do any Logic like updating the number of sign in times here
  } on FirebaseAuthException catch (e) {
    checkExceptionAndUpdate(
      firebaseAuthException: e,
      ref: ref,
      email: email,
      password: password,
    );
  } catch (e) {
    // update authErrorTextProvider
    ref.read(authErrorTextProvider.notifier).state =
        'Error Logging In. Try Again.\nError Code: ${e.toString()}';
  }
}
