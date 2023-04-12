// Project imports:
import '../../../akatabo_exporter.dart';
import '../auth_page.dart';
import '../auth_providers.dart';
import '../functions/functions.dart';
import '../text_fields/textfields_riverpod.dart';

class SignUpButton extends ConsumerStatefulWidget {
  const SignUpButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends ConsumerState<SignUpButton> {
  // istapped
  bool isButtonTapped = false;
  @override
  Widget build(BuildContext context) {
    final signUpFormKey = ref.watch(signUpFormKeyProvider);

    // Credentials
    final email = ref.watch(emailProvider);
    final name = ref.watch(userNameProvider);
    final password = ref.watch(passwordProvider);

    // is password Confirmed
    final isPasswordConfirmed = ref.watch(isPasswordConfirmedProvider);

    return CircularProgressAppButton(
      isTapped: isButtonTapped,
      text: "SIGN UP",
      onTap: isPasswordConfirmed
          ? () async {
              // set the error to an empty string
              ref.read(authErrorTextProvider.notifier).state = '';

              // Unfocus Keyboard
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }

              if (signUpFormKey.currentState!.validate()) {
                //  update button state
                setState(() {
                  isButtonTapped = !isButtonTapped;
                });

                // await signUpForThumbsApp(
                //   email: email,
                //   password: password,
                //   name: name,
                //   ref: ref,
                // ).then((_) {
                //   // check if widget is mounted

                //   if (mounted) {
                //     //  update button state
                // setState(() {
                //   isButtonTapped = !isButtonTapped;
                // });

                //     // clear the form after sign in
                //     signUpFormKey.currentState!.reset();
                //   }
                // });

                // then go to the select level page index
                // * simulated auth
                await authSimulation().then(
                  (_) => ref.read(authPageIndexProvider.notifier).state =
                      authPages.indexOf(
                    authPages.last,
                  ),
                );
              }
            }
          : () {
              // set the error to tell the user to have matching passwords
              ref.read(authErrorTextProvider.notifier).state =
                  'Passwords do not match';
            },
      icon: Icons.connect_without_contact_rounded,
      textColor: akataboWhite,
      buttonColor: akataboPink,
    );
  }
}
