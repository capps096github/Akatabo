// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../../akatabo_exporter.dart';
import 'textfields_riverpod.dart';

// password regex
final passwordRegex = RegExp(
  r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})',
);

class PasswordField extends ConsumerStatefulWidget {
  const PasswordField({
    super.key,
    this.isSignUpScreen = false,
  });

// check whether we are on Sign In Screen
  final bool isSignUpScreen;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends ConsumerState<PasswordField> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      onChanged: (password) {
        if (password.length > 6) {
          ref.read(passwordProvider.notifier).state = password;
        }
      },
      validator: (password) {
        if (password == null || password.isEmpty) {
          return " A Strong Password is required. ";
        }

        // check if we are on Sign Up Screen
        if (widget.isSignUpScreen) {
          if (!passwordRegex.hasMatch(password)) {
            return "Choose a Stronger Password with at least 8 characters, 1 uppercase, 1 lowercase, 1 number and 1 special character. e.g #@!\\\$%^&*";
          }
        }

        return null;
      },
      keyboardType: TextInputType.visiblePassword,
      prefixIcon:
          isObscured ? CupertinoIcons.lock_fill : CupertinoIcons.lock_open_fill,
      labelText: 'Password',
      hintText: 'Password',
      suffixIcon: IconButton(
        icon: Icon(
          isObscured ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
          color: akataboSecondaryColor,
        ),
        onPressed: () {
          setState(() {
            isObscured = !isObscured;
          });
        },
      ),
      autofillHints: const [AutofillHints.password],
      obscureText: isObscured,
      textInputAction: TextInputAction.done,
    );
  }
}
