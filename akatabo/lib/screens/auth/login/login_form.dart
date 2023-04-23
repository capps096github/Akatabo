// Project imports:
import '../../../akatabo_exporter.dart';
import '../components/auth_error_text.dart';
import '../components/auth_option_text.dart';
import '../components/or_text.dart';
import '../text_fields/exporter.dart';
import '../google/google_auth_button.dart';
import 'login_button.dart';
import 'to_forgot_password_btn.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final signInFormKey = ref.watch(signInFormKeyProvider);

    return AutofillGroup(
      key: const ValueKey('SignIn'),
      child: Form(
        key: signInFormKey,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            ///Email
            EmailField(),
            VerticalSpace(of: spacing16),

            ///Password
            PasswordField(),
            VerticalSpace(of: spacing16),

            ///Forgot Password Button
            ToForgotPasswordButton(),

            AuthErrorText(),
            LogInButton(),

            ///or
            OrAuthText(),

            ///GOOGLE AUTH
            GoogleAuthButton(),
            VerticalSpace(of: spacing32),

            ///bottom
            AuthOptionText(),
            VerticalSpace(of: spacing24),

            // AkataboDisclaimer(),
            // VerticalSpace(of: spacing24),
          ],
        ),
      ),
    );
  }
}
