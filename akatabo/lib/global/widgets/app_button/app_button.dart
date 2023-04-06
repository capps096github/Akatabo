import '../../../akatabo_exporter.dart';
import 'button_body.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
    this.textColor = akataboWhite,
    this.buttonColor = akataboColor,
    this.icon,
    this.iconWidget,
    this.toolTip,
    this.isSmallButton = false,
  });

  const AppButton.small({
    super.key,
    required this.text,
    required this.onTap,
    this.textColor = akataboWhite,
    this.buttonColor = akataboColor,
    this.icon,
    this.toolTip,
    this.iconWidget,
    this.isSmallButton = true,
  });

  ///Wether the button is small or not
  final bool isSmallButton;
  final String text;
  final Widget? iconWidget;
  final VoidCallback onTap;
  final Color textColor, buttonColor;
  final IconData? icon;
  final String? toolTip;

  @override
  Widget build(BuildContext context) {
    return ButtonBody(
      buttonColor: buttonColor,
      toolTip: toolTip,
      text: text,
      textColor: textColor,
      iconData: icon,
      iconWidget: iconWidget,
      onTap: onTap,
      isSmallButton: isSmallButton,
    );
  }
}
