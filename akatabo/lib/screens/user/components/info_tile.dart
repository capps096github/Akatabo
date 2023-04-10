import '../../../akatabo_exporter.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    this.textColor = akataboSecondaryColor,
    this.tileColor = akataboWhite,
    this.icon,
    this.trailingIcon = Icons.edit,
    this.leading,
    this.altTooltip,
    required this.onTap,
    required this.label,
    required this.subtitle,
  }) : tooltip = altTooltip ?? "Edit your $label";

// colors
  final Color textColor, tileColor;

// tooltip
  final String? tooltip, altTooltip;

  // on tap
  final VoidCallback? onTap;

  // leading
  final Widget? leading;

  // icon
  final IconData? icon, trailingIcon;

  // label
  final String label;

  // subtitle/
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: spacing4),
      child: Tooltip(
        message: tooltip,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // tile
            ListTile(
              tileColor: akataboTransparent,
              shape: const RoundedRectangleBorder(borderRadius: borderRadius4),
              onTap: onTap,
              dense: true,
              leading: leading ??
                  CircleAvatar(
                    backgroundColor: textColor,
                    child: Icon(
                      icon,
                      color: tileColor,
                    ),
                  ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: spacing4),
                child: Text(
                  label,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: fontSize14,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: (subtitle != null)
                  ? Text(
                      subtitle!,
                      maxLines: 4,
                      style: TextStyle(
                        fontSize: fontSize12,
                        color: textColor,
                        // fontWeight: FontWeight.bold,
                      ),
                    )
                  : null,
              trailing: Icon(
                trailingIcon,
                color: textColor,
              ),
            ),
            // divider
            const ThickHorizontalDivider(
              color: akataboRatingsColor,
              thickness: 1.5,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: spacing16,
                vertical: spacing4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
