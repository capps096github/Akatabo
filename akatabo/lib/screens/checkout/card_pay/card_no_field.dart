// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import '../../../akatabo_exporter.dart';
import '../providers.dart';
import 'card_no_formatter.dart';

// final cardNumberExp = RegExp(r'^[0-9]+$');
// ^ - start of the string
// \d{4} - match exactly 4 digits
// \- - match a hyphen (-) character
// $ - end of the string
// This regex matches a string of 16 digits, separated by hyphens at every fourth position.
final cardNumberRegex = RegExp(r'^\d{4}\-\d{4}\-\d{4}\-\d{4}$');

// Visa starts with 4
final RegExp visaRegex = RegExp(r'^4');

// Mastercard starts with 51, 52, 53, 54, or 55
final RegExp mastercardRegex = RegExp(r'^5[1-5]');

class CardNumberField extends ConsumerWidget {
  const CardNumberField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardNumber = ref.watch(cardNumberProvider);
    //
    return CustomTextField(
      initialValue: cardNumber,
      restorationId: 'card_number_field',
      keyboardType: TextInputType.number,
      // 0000-1234-1204-1234 this caters for the - too which is 11
      hintText: '0000-1234-1204-1234',
      maxLength: 19,
      labelText: 'Card Number',
      fillColor: akataboSecondaryColor.withOpacity(.05),
      borderColor: akataboSecondaryColor,
      labelTextColor: akataboSecondaryColor,
      autofillHints: const [AutofillHints.creditCardNumber],
      // TextInputFormatters are applied in sequence.
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CreditCardFormatter(),
      ],
      onChanged: (cardNumber) {
        if (cardNumberRegex.hasMatch(cardNumber)) {
          ref.read(cardNumberProvider.notifier).state = cardNumber;
        }
      },
      validator: (cardNumber) {
        if (cardNumber == null || cardNumber.isEmpty) {
          return 'Please enter your credit card number';
        }

        // Check if it matches the expected format
        if (!cardNumberRegex.hasMatch(cardNumber)) {
          return 'Please enter a valid 16-digit credit card number';
        }

        // Check if it's a valid Visa or Mastercard number
        final isVisa = visaRegex.hasMatch(cardNumber);
        final isMastercard = mastercardRegex.hasMatch(cardNumber) ||
            RegExp(r'^222[1-9]').hasMatch(cardNumber);

        if (!isVisa && !isMastercard) {
          return 'Please enter a valid Visa or Mastercard number';
        }

        // Return null if the input is valid
        return null;
      },
    );
  }
}
