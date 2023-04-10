// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../../akatabo_exporter.dart';
import 'textfields_riverpod.dart';

final usernameExp = RegExp(r'^[A-Za-z ]+$');

class UsernameField extends ConsumerWidget {
  const UsernameField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //
    return CustomTextField(
      onChanged: (username) {
        if (usernameExp.hasMatch(username)) {
          ref.read(userNameProvider.notifier).state = username;
        }
      },
      validator: (username) {
        if (username == null || username.isEmpty) {
          return " Your Username is Required e.g. Cephas ";
        }

        if (!usernameExp.hasMatch(username)) {
          return "Username must have only Alphabets";
        }
        return null;
      },
      keyboardType: TextInputType.name,
      prefixIcon: CupertinoIcons.person,
      hintText: 'Username',
      autofillHints: const [AutofillHints.name, AutofillHints.username],
      labelText: 'Username',
    );
  }
}
