// Project imports:
import '../../../akatabo_exporter.dart';
import '../auth_providers.dart';
import '../components/auth_error_text.dart';
import '../text_fields/email_field.dart';
import '../text_fields/password_field.dart';
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
            VerticalSpace(of: spacing8),

            AuthErrorText(),
            LogInButton(),

            ///or
            VerticalSpace(of: spacing32),

            ///GOOGLE AUTH
            // GoogleAuthButton(),
            VerticalSpace(of: spacing24),

            ///bottom
            // CreateAccountButton(),
            VerticalSpace(of: spacing24),

            AkataboDisclaimer(),
            VerticalSpace(of: spacing24),
          ],
        ),
      ),
    );
  }
}
