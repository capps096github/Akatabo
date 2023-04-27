// Project imports:
import '../../../akatabo_exporter.dart';
import '../functions/auth_fx.dart';

class LogInButton extends ConsumerStatefulWidget {
  const LogInButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInButtonState();
}

class _SignInButtonState extends ConsumerState<LogInButton> {
// istapped
  bool isButtonTapped = false;

  @override
  Widget build(BuildContext context) {
    final signInFormKey = ref.watch(signInFormKeyProvider);
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);

    return CircularProgressAppButton(
      isTapped: isButtonTapped,
      isGradientButton: true,
      onTap: () async {
        // reset the error to an empty string
        ref.read(authErrorTextProvider.notifier).state = '';

        // Unfocus Keyboard
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }

        if (signInFormKey.currentState!.validate()) {
          setState(() {
            isButtonTapped = true;
          });

          await loginToAkatabo(email: email, password: password, ref: ref).then(
            (value) {
              // ignore: avoid_print
              print("User Signed In");
              if (mounted) {
                setState(() {
                  isButtonTapped = false;
                });
              }

              // clear the form after sign in
              signInFormKey.currentState!.reset();

              // Go to Home
              context.go(homePath);
            },
          );
        }
      },
      text: "LOG IN",
      icon: Icons.login,
      textColor: akataboWhite,
      buttonColor: akataboPink,
    );
  }
}
