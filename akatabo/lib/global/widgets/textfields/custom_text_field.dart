// Flutter imports:
import 'package:flutter/services.dart';

import '../../../akatabo_exporter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.keyboardType,
    required this.onChanged,
    required this.restorationId,
    this.onFieldSubmitted,
    this.obscuringCharacter,
    this.obscureText = false,
    this.initialValue,
    this.fillColor = akataboWhite,
    this.textColor = akataboSecondaryColor,
    this.labelTextColor = akataboWhite,
    this.numLines = 1,
    this.textInputAction = TextInputAction.next,
    this.validator,
    this.style,
    this.controller,
    this.autofillHints,
    this.maxLength,
    this.suffixIcon,
    this.inputFormatters,
    this.prefixText,
    this.borderColor,
  });

  final String? initialValue;
  final TextStyle? style;
  final int numLines;
  final int? maxLength;
  final String? Function(String? value)? validator;
  final String hintText, labelText;
  final TextEditingController? controller;
  final List<String>? autofillHints;
  final bool obscureText;
  final TextInputType keyboardType;

  // action to be shown on the soft keyboard
  final TextInputAction textInputAction;
  final Color fillColor, textColor, labelTextColor;

  final Color? borderColor;

  //
  final Widget? suffixIcon;

  // final IconData? prefixIcon;

  // on field submitted
  final ValueChanged<String>? onFieldSubmitted, onChanged;

  //
  final List<TextInputFormatter>? inputFormatters;

  // restoration id
  final String restorationId;

  final String? prefixText;

  final String? obscuringCharacter;

  @override
  Widget build(BuildContext context) {
    final fieldTextStyle = style ?? TextStyle(fontSize: 15, color: textColor);

    //
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // label
        Text(
          labelText,
          style: TextStyle(
            fontSize: fontSize16,
            color: labelTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),

        const VerticalSpace(of: spacing4),
        // text field
        TextFormField(
          restorationId: restorationId,
          controller: controller,
          autofillHints: autofillHints,
          inputFormatters: inputFormatters ??
              [
                LengthLimitingTextInputFormatter(maxLength),
              ],
          onFieldSubmitted: onFieldSubmitted,
          validator: validator,
          onChanged: onChanged,
          initialValue: initialValue,
          style: fieldTextStyle,
          autofocus: false,
          minLines: numLines,
          maxLines: numLines,
          maxLength: maxLength,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          obscureText: obscureText,

          // decoration
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: fieldTextStyle.copyWith(
              color: textColor.withOpacity(.5),
            ),
            filled: true,
            fillColor: fillColor,
            // * Error Styling
            errorMaxLines: 5,
            errorStyle: const TextStyle(color: akataboRed),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: akataboRed,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: akataboRed,
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
            // * Normal Styling
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: borderColor ?? fillColor,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: akataboVerifiedGreen,
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
            isDense: true,

            //* Icons
            // prefixIcon: Icon(
            //   prefixIcon,
            //   color: textColor,
            // ),
            suffixIcon: suffixIcon,

            //* prefix
            prefixText: prefixText,
            prefixStyle: fieldTextStyle,
          ),
          obscuringCharacter: obscuringCharacter ?? '◉',
          autovalidateMode: AutovalidateMode.onUserInteraction,

          // * cursor
          cursorColor: textColor,
          cursorRadius: const Radius.circular(12),
          textInputAction: textInputAction,
          //
          keyboardType: keyboardType,
        ),
      ],
    );
  }
}
