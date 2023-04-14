// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import '../../../akatabo_exporter.dart';
import '../providers.dart';

// ^ - start of the string
// $ - end of the string
// The cvvRegex regular expression is used to verify that the input is
//a 3-digit number.
//It matches strings that start with 3 digits (\d{3})
//and have no additional characters before or after the digits.
final cvvRegex = RegExp(r'^\d{3}$');

class CVVField extends ConsumerWidget {
  const CVVField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cvvNumber = ref.watch(cvvNumberProvider);
    //
    return CustomTextField(
      initialValue: cvvNumber,
      restorationId: 'cvv_field',
      onChanged: (cvvNo) {
        if (cvvRegex.hasMatch(cvvNo)) {
          ref.read(cvvNumberProvider.notifier).state = cvvNo;
        }
      },
      validator: (cvvNo) {
        if (cvvNo == null || cvvNo.isEmpty) {
          return "Your CVV is Required e.g. 999";
        }

        if (!cvvRegex.hasMatch(cvvNo)) {
          return "Invalid CVV";
        }
        return null;
      },
      keyboardType: TextInputType.number,
      hintText: '000',
      maxLength: 3, // 999
      labelText: 'CVV Code',
      fillColor: akataboSecondaryColor.withOpacity(.05),
      borderColor: akataboSecondaryColor,
      labelTextColor: akataboSecondaryColor,
      autofillHints: const [AutofillHints.creditCardSecurityCode],
      // TextInputFormatters are applied in sequence.
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }
}
