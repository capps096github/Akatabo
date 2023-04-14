import 'dart:math';

import 'package:flutter/services.dart';

/// A [TextInputFormatter] that formats credit card expiry date in the format of MM/YY
class ExpiryDateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove any non-numeric characters from the input
    final nonFormatted = newValue.text.replaceAll(RegExp('[^0-9]'), '');

    // Get the current selection index
    var selectionIndex = newValue.selection.end;

    // Format the date as MM/YY
    var formattedDate = '';
    if (nonFormatted.isNotEmpty) {
      // Add the first two digits to the formatted date
      formattedDate += nonFormatted.substring(0, min(nonFormatted.length, 2));

      if (nonFormatted.length > 2) {
        // Add a slash and the next two digits if they exist
        formattedDate +=
            ' / ${nonFormatted.substring(2, min(nonFormatted.length, 4))}';
      }
    }

    // Update the selection index to account for the formatting
    selectionIndex += formattedDate.length - newValue.text.length;

    // Return the formatted date as a TextEditingValue
    return TextEditingValue(
        text: formattedDate,
        selection: TextSelection.collapsed(offset: selectionIndex));
  }
}
