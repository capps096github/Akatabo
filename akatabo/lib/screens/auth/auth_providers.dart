// Project imports:
import '../../akatabo_exporter.dart';

///Current Index of the auth pages
final authPageIndexProvider = StateProvider<int>((_) => 0);

///Sign Up form
final signUpFormKeyProvider =
    Provider<GlobalKey<FormState>>((_) => GlobalKey<FormState>());

///Sign In Form
final signInFormKeyProvider =
    Provider<GlobalKey<FormState>>((_) => GlobalKey<FormState>());

///Forgot form
final forgotFormKeyProvider =
    Provider<GlobalKey<FormState>>((_) => GlobalKey<FormState>());

// auth error text provider
final authErrorTextProvider = StateProvider<String>((_) => '');

///whether the email to rest password has been sent
final isResetEmailSentProvider = StateProvider((ref) => false);

//
final List<String> educationLevels = [
  "Nursery",
  "Primary",
  "Secondary",
  "Tertiary (University)",
  "Post Graduate",
  "PhD",
  "Other",
];

// level of education provider
final levelOfEducProvider = StateProvider((ref) => educationLevels.first);
