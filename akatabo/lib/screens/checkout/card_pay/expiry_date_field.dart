// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import '../../../akatabo_exporter.dart';
import '../providers.dart';
import 'expiry_date_formatter.dart';

// ^ - start of the string
// $ - end of the string
// Regular expression to validate expiry date in the format of MM / YY
// This regex matches two digits for the month (with leading zero if necessary), followed by a space, a forward slash, another space, and two digits for the year (without century).
// The space characters around the forward slash are optional and added for readability.
final RegExp expiryDateRegex = RegExp(r'^(0[1-9]|1[0-2]) \/ ([0-9]{2})$');

class ExpiryDateField extends ConsumerWidget {
  const ExpiryDateField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expiryDate = ref.watch(expiryDateProvider);
    //
    return CustomTextField(
      initialValue: expiryDate,
      restorationId: 'expiry_date_field',
      keyboardType: TextInputType.number,
      hintText: 'MM/YY',
      labelText: 'Expiry Date',
      fillColor: akataboSecondaryColor.withOpacity(.05),
      borderColor: akataboSecondaryColor,
      labelTextColor: akataboSecondaryColor,
      autofillHints: const [
        AutofillHints.creditCardExpirationMonth,
        AutofillHints.creditCardExpirationYear,
      ],
      // TextInputFormatters are applied in sequence.
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        ExpiryDateInputFormatter(),
      ],
      onChanged: (expiryDate) {
        if (expiryDateRegex.hasMatch(expiryDate)) {
          ref.read(expiryDateProvider.notifier).state = expiryDate;
        }
      },
      validator: (expiryDate) {
        if (expiryDate == null || expiryDate.isEmpty) {
          return 'Please enter expiry date';
        }

        final match = expiryDateRegex.firstMatch(expiryDate);
        if (match == null) {
          return 'Invalid Card expiry date';
        }

        // Get the expiry year and month from the input
        final year = int.parse(match.group(2)!);
        final month = int.parse(match.group(1)!);

        // Get the current year and month
        final now = DateTime.now();

        // get the last two digits of the current year by using the modulo operator on 100 with the current year because the year is represented by four digits
        final currentYear = now.year % 100;

        // get the current month
        final currentMonth = now.month;

        if (year < currentYear ||
            (year == currentYear && month < currentMonth)) {
          return 'Card has expired';
        }

        // Return null if the expiry date is valid
        return null;
      },
    );
  }
}
