// Project imports:
import 'package:flutter/cupertino.dart';

import '../../akatabo_exporter.dart';

class AkataboErrorPlaceHolder extends StatelessWidget {
  const AkataboErrorPlaceHolder({
    Key? key,
    this.backgroundColor = akataboColor,
    this.textColor = akataboWhite,
    this.iconSize = 30,
    required this.errorText,
    required this.errorTitle,
  }) : super(key: key);

  final Color backgroundColor;
  final Color textColor;
  final double iconSize;
  final String errorText, errorTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding: padding16,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // error header
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.drop_triangle_fill,
                  color: textColor,
                  size: iconSize,
                ),
                const HorizontalSpace(of: spacing8),
                Flexible(
                  child: Text(
                    errorTitle,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const VerticalSpace(of: spacing16),

            //  error text
            Center(
              child: Text(
                'Error: $errorText',
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
