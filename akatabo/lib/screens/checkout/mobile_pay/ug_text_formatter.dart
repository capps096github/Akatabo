import 'package:flutter/services.dart';

class UgNumberTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue, // previous text value
    TextEditingValue newValue, // new text value
  ) {
    final newTextLength = newValue.text.length; // length of new text value
    final newText = StringBuffer(); // buffer to hold new formatted text
    var selectionIndex = newValue.selection.end; // selection index in new text
    var usedSubstringIndex = 0; // index of the last digit that was formatted

    // Format first 3 digits and add a hyphen.
    if (newTextLength >= 4) {
      newText.write('${newValue.text.substring(0, usedSubstringIndex = 3)}-');
      if (newValue.selection.end >= 3) selectionIndex++;
    }

    // Format next 3 digits and add a hyphen.
    if (newTextLength >= 7) {
      newText.write('${newValue.text.substring(3, usedSubstringIndex = 6)}-');
      if (newValue.selection.end >= 6) selectionIndex++;
    }

    // Format last 3 digits.
    if (newTextLength >= 10) {
      newText.write(newValue.text.substring(6, usedSubstringIndex = 9));
      if (newValue.selection.end >= 9) selectionIndex++;
    }

    // Add any remaining digits to the new text.
    if (newTextLength >= usedSubstringIndex) {
      newText.write(newValue.text.substring(usedSubstringIndex));
    }

    // Return the new text and selection index as a TextEditingValue object.
    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
