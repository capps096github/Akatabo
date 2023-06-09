import '../../../akatabo_exporter.dart';

class CircularProgressAppButton extends StatelessWidget {
  const CircularProgressAppButton({
    super.key,
    required this.isTapped,
    required this.onTap,
    required this.text,
    this.textColor = akataboWhite,
    this.buttonColor = akataboPink,
    this.icon,
    this.toolTip,
    this.iconWidget,
    this.isGradientButton = false,
  });
  final bool isTapped;
  final VoidCallback onTap;
  final String text;
  final Color textColor, buttonColor;
  final IconData? icon;
  final String? toolTip;

  // this will be rendered incase the icon is not provided
  final Widget? iconWidget;

  // is gradient button
  final bool isGradientButton;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: quarterSeconds,
      child: isTapped
          ? Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: buttonColor,
              ),
              child: CircularProgressIndicator(color: textColor),
            )
          : isGradientButton
              ? GradientButton(
                  label: text,
                  onTap: onTap,
                  toolTip: toolTip,
                  textColor: textColor,
                )
              : AppButton(
                  label: text,
                  onTap: onTap,
                  toolTip: toolTip,
                  icon: icon,
                  textColor: textColor,
                  buttonColor: buttonColor,
                  iconWidget: iconWidget,
                ),
    );
  }
}
