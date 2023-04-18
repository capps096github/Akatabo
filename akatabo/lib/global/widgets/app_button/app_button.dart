import '../../../akatabo_exporter.dart';
import 'button_body.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onTap,
    this.textColor = akataboWhite,
    this.buttonColor = akataboColor,
    this.icon,
    this.iconWidget,
    this.toolTip,
    this.isSmallButton = false,
    this.isGradientButton = false,
  });

  static Widget small({
    Key? key,
    required String label,
    required VoidCallback onTap,
    Color textColor = akataboWhite,
    Color buttonColor = akataboColor,
    IconData? icon,
    Widget? iconWidget,
    String? toolTip,
  }) =>
      AppButton(
        key: key,
        label: label,
        onTap: onTap,
        textColor: textColor,
        buttonColor: buttonColor,
        icon: icon,
        iconWidget: iconWidget,
        toolTip: toolTip,
        isSmallButton: true,
        isGradientButton: false,
      );

  // gradient button
  static Widget gradient({
    Key? key,
    required String label,
    required VoidCallback onTap,
    Color textColor = akataboWhite,
    Color buttonColor = akataboColor,
    IconData? icon,
    Widget? iconWidget,
    String? toolTip,
  }) =>
      AppButton(
        key: key,
        label: label,
        onTap: onTap,
        textColor: textColor,
        buttonColor: buttonColor,
        icon: icon,
        iconWidget: iconWidget,
        toolTip: toolTip,
        isSmallButton: false,
        isGradientButton: true,
      );

  ///Wether the button is small or not
  final bool isSmallButton;

  // text label
  final String label;
  final Widget? iconWidget;
  final VoidCallback onTap;
  final Color textColor, buttonColor;
  final IconData? icon;
  final String? toolTip;

  // is gradient button
  final bool isGradientButton;

  @override
  Widget build(BuildContext context) {
    return ButtonBody(
      buttonColor: buttonColor,
      toolTip: toolTip,
      text: label,
      textColor: textColor,
      iconData: icon,
      iconWidget: iconWidget,
      onTap: onTap,
      isSmallButton: isSmallButton,
      isGradientButton: isGradientButton,
    );
  }
}
