// Project imports:

import '../../akatabo_exporter.dart';

class AkataboErrorPlaceHolder extends StatelessWidget {
  const AkataboErrorPlaceHolder({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
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
    final error = 'Error: $errorText';

    //
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius8,
        color: backgroundColor.withOpacity(.8),
      ),
      child: const Padding(
        padding: padding8,
        child: AkataboLogo(isFull: false),
      ),
    );
  }
}
