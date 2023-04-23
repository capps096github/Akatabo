// Project imports:
import '../../../akatabo_exporter.dart';
import '../components/auth_error_text.dart';
import '../components/auth_heading.dart';
import '../components/auth_option_text.dart';
import '../text_fields/forgot_email_field.dart';
import 'forgot_password_btn.dart';

class ForgotForm extends ConsumerWidget {
  const ForgotForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forgotFormKey = ref.watch(forgotFormKeyProvider);
    return ExpandedScrollingColumn(
      children: [
        const Spacer(flex: 2),

        // form
        AutofillGroup(
          key: const ValueKey('Forgot Password'),
          child: Form(
            key: forgotFormKey,
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    AuthHeader(heading: 'Forgot Password?'),
                    VerticalSpace(of: 40),
                    Text(
                      "Enter your email and we will send you instructions on how to reset your password.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        wordSpacing: 2,
                        fontSize: 14,
                        letterSpacing: .5,
                        color: akataboWhite,
                      ),
                    ),
                    VerticalSpace(of: 40),

                    ForgotEmailField(),
                    VerticalSpace(of: 25),

                    ///error text
                    AuthErrorText(),
                    ForgotPasswordButton(),
                    VerticalSpace(of: 50),
                    AuthOptionText(),
                    VerticalSpace(of: 25),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
