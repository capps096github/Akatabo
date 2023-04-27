import '../../../akatabo_exporter.dart';

import 'error_handler.dart';

Future<void> signUpForAkatabo({
  required String email,
  required String password,
  required String name,
  required WidgetRef ref,
}) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then(
      (userCredential) async {
        final User? user = userCredential.user;
        if (user != null) {
          final akataboUser = AkataboUser(
            username: user.displayName ?? name,
            email: user.email ?? email,
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
            // update name
            user.updateDisplayName(name),

            //  verify email
            if (!user.emailVerified) user.sendEmailVerification(),

            // reload the user
            user.reload(),

            // upload user to database
            AkataboDBService.uploadAkataboUser(appUser: akataboUser),
          ]);
        }
      },
    );
  } on FirebaseAuthException catch (e) {
    checkExceptionAndUpdate(
      firebaseAuthException: e,
      ref: ref,
      password: password,
      email: email,
    );
  } catch (e) {
    // update authErrorTextProvider
    ref.read(authErrorTextProvider.notifier).state =
        'Error Signing Up. Try Again.\nError Code: ${e.toString()}';

  }
}
