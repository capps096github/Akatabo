// Project imports:
import '../../../akatabo_exporter.dart';
import '../components/auth_error_text.dart';
import '../components/auth_option_text.dart';
import '../components/or_text.dart';
import '../text_fields/exporter.dart';
import 'signup_button.dart';
import '../google/google_auth_button.dart';

class SignUpForm extends ConsumerWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpFormKey = ref.watch(signUpFormKeyProvider);

    return AutofillGroup(
      key: const ValueKey('SignUp'),
      child: Form(
        key: signUpFormKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            UsernameField(),
            VerticalSpace(of: 16),

            ///Email
            EmailField(),
            VerticalSpace(of: 16),

            ///Password
            PasswordField(isSignUpScreen: true),
            VerticalSpace(of: spacing16),

            ///Confirm Password
            ConfirmPasswordField(),
            VerticalSpace(of: spacing16),

            ///error text
            AuthErrorText(),

            ///Sign Up
            SignUpButton(),

            ///or
            OrAuthText(),

            ///GOOGLE AUTH
            GoogleAuthButton(text: 'SIGN UP'),
            VerticalSpace(of: spacing32),

            ///
            AuthOptionText(),
            VerticalSpace(of: spacing16),

            // AkataboDisclaimer(),
            // VerticalSpace(of: spacing16),
          ],
        ),
      ),
    );
  }
}
