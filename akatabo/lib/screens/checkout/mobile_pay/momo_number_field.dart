// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import '../../../akatabo_exporter.dart';
import '../providers.dart';
import 'ug_text_formatter.dart';

// final momoNumberExp = RegExp(r'^[0-9]+$');
// ^ - start of the string
// \d{3} - match exactly 3 digits
// \- - match a hyphen (-) character
// $ - end of the string
final momoNumberExp = RegExp(r'^\d{3}\-\d{3}\-\d{3}$');

class MoMoNumberField extends ConsumerWidget {
  const MoMoNumberField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final momoNumber = ref.watch(momoNumberProvider);
    //
    return CustomTextField(
      initialValue: momoNumber,
      restorationId: 'momo_number_field',
      onChanged: (phoneNo) {
        if (momoNumberExp.hasMatch(phoneNo)) {
          ref.read(momoNumberProvider.notifier).state = phoneNo;
        }
      },
      validator: (phoneNo) {
        if (phoneNo == null || phoneNo.isEmpty) {
          return "Your Mobile Money Number is Required e.g. 0780-123-124";
        }

        if (!momoNumberExp.hasMatch(phoneNo)) {
          return "Invalid Mobile Money Number";
        }
        return null;
      },
      keyboardType: TextInputType.phone,
      prefixText: "0",
      hintText: '780-123-124',
      maxLength: 11, // 0780-123-124 this caters for the - too which is 11
      labelText: 'Enter Phone Number',
      fillColor: akataboSecondaryColor.withOpacity(.05),
      borderColor: akataboSecondaryColor,
      labelTextColor: akataboSecondaryColor,
      autofillHints: const [
        AutofillHints.telephoneNumber,
      ],
      // TextInputFormatters are applied in sequence.
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        UgNumberTextInputFormatter(),
      ],
    );
  }
}
