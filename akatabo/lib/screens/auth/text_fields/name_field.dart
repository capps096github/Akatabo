// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../../akatabo_exporter.dart';
import 'textfields_riverpod.dart';

final nameExp = RegExp(r'^[A-Za-z ]+$');

class NameField extends ConsumerWidget {
  const NameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomTextField(
      onChanged: (name) {
        if (nameExp.hasMatch(name)) {
          ref.read(nameProvider.notifier).state = name;
        }
      },
      validator: (name) {
        if (name == null || name.isEmpty) {
          return " Your Name is Required e.g. Cephas ";
        }

        if (!nameExp.hasMatch(name)) {
          return "Name must have only Alphabets";
        }
        return null;
      },
      keyboardType: TextInputType.name,
      prefixIcon: CupertinoIcons.person,
      hintText: 'Name',
      autofillHints: const [AutofillHints.name, AutofillHints.username],
      labelText: 'Name',
    );
  }
}
