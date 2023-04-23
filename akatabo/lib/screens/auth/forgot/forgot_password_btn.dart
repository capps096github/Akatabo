// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../../akatabo_exporter.dart';

class ForgotPasswordButton extends ConsumerStatefulWidget {
  const ForgotPasswordButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ForgotPasswordButtonState();
}

class _ForgotPasswordButtonState extends ConsumerState<ForgotPasswordButton> {
  // istapped
  bool isButtonTapped = false;

  @override
  Widget build(BuildContext context) {
    final forgotFormKey = ref.watch(forgotFormKeyProvider);
    final email = ref.watch(forgotEmailProvider);

    return CircularProgressAppButton(
      text: "SEND MAIL",
      isTapped: isButtonTapped,
      onTap: () async {
        // Unfocus Keyboard
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }

        if (forgotFormKey.currentState!.validate()) {
          //  update button state
          setState(() {
            isButtonTapped = !isButtonTapped;
          });
          // await forgotThumbsPassword(email: email, ref: ref);

          //  update button state
          setState(() {
            isButtonTapped = !isButtonTapped;
          });
        }

        // clear the form after sign in
        forgotFormKey.currentState!.reset();
      },
      textColor: akataboWhite,
      buttonColor: const Color(0xFFCD0000),
      icon: CupertinoIcons.mail_solid,
    );
  }
}
