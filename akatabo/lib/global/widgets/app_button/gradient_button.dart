import '../../../akatabo_exporter.dart';

class GradientButton extends ConsumerWidget {
  const GradientButton({
    super.key,
    required this.label,
    required this.onTap,
    this.colors,
    this.textColor = akataboWhite,
    this.toolTip,
  });

  // colors
  final Color textColor;
  final List<Color>? colors;

  // labels
  final String label;

  // tooltip
  final String? toolTip;

  // onTap
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, ref) {
    VisualDensity density = Theme.of(context).visualDensity;

    final width = MediaQuery.of(context).size.width;

    final akataboResponsive = ref.watch(akataboResponsiveProvider(context));

    final isDesktop = akataboResponsive.isDesktopScreen;
    final isMobile = akataboResponsive.isMobileScreen;

    return AnimatedContainer(
      duration: fiftyMilliseconds,
      // for good looking UI o mobile we set this height to 42
      height: isDesktop ? kDesktopButtonHeight : kButtonHeight,
      width: (isMobile ? width : maxAuthWidth),
      decoration: BoxDecoration(
        color: textColor,
        borderRadius: borderRadius6,
        gradient: LinearGradient(
          colors: colors ??
              [
                const Color(0xFFE960F7),
                akataboPink,
                // akataboColor,
                // const Color(0xFF5733B2).withOpacity(.7),
              ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Tooltip(
        message: toolTip ?? label,
        textStyle: TextStyle(color: textColor),
        decoration: const BoxDecoration(
          color: akataboPink,
          borderRadius: borderRadius6,
        ),
        child: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            foregroundColor: textColor,
            shape: buttonBorder,
            shadowColor: textColor.withOpacity(.2),
            visualDensity: density,
            textStyle: TextStyle(
              fontSize: isDesktop ? 16 : 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          child: Text(
            label,
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
