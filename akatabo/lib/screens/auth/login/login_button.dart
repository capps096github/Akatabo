// Project imports:
import '../../../akatabo_exporter.dart';
import '../functions/functions.dart';

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
          //     update button state
          setState(() {
            isButtonTapped = !isButtonTapped;
          });

          //   await signInToThumbsApp(email: email, password: password, ref: ref)
          //       .then((_) {
          //     // check if widget is mounted
          //     if (mounted) {
          //       //  update button state
          //       setState(() {
          //         isButtonTapped = !isButtonTapped;
          //       });
          //       // clear the form after sign in
          //       signInFormKey.currentState!.reset();
          //     }
          //   });

          // * simulated auth
          await authSimulation().then((_) => context.go(homePath));
        }
      },
      text: "LOG IN",
      icon: Icons.login,
      textColor: akataboWhite,
      buttonColor: akataboPink,
    );
  }
}
