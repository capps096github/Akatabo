// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../../akatabo_exporter.dart';
import '../providers.dart';

class ConfirmPasswordField extends ConsumerStatefulWidget {
  const ConfirmPasswordField({super.key});

  @override
  ConsumerState<ConfirmPasswordField> createState() =>
      _ConfirmPasswordFieldState();
}

class _ConfirmPasswordFieldState extends ConsumerState<ConfirmPasswordField> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    //
    return CustomTextField(
      restorationId: 'confirm_password_field',
      onChanged: (confirmedPassword) {
        ref.read(confirmAccountPasswordProvider.notifier).state =
            confirmedPassword;
      },
      validator: (confirmedPassword) {
        // password text
        // TODO put here user password
        const password = "12345";

        if (confirmedPassword == null || confirmedPassword.isEmpty) {
          return "Confirm your Password.";
        }

        if (password != confirmedPassword) {
          return "Passwords do not match.";
        }

        return null;
      },
      keyboardType: TextInputType.visiblePassword,
      fillColor: akataboSecondaryColor.withOpacity(.05),
      borderColor: akataboSecondaryColor,
      labelTextColor: akataboSecondaryColor,
      labelText: 'Confirm Password',
      hintText: 'Confirm Password',
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
      obscuringCharacter: '*',
      textInputAction: TextInputAction.done,
    );
  }
}
