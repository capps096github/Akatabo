import 'package:firebase_auth/firebase_auth.dart';

///Reset Password via Email Link
Future<void> forgotAkataboPassword({
  required String email,
}) async {
  await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
}
