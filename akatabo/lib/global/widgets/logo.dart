import '../../akatabo_exporter.dart';

class AkataboLogo extends StatelessWidget {
  const AkataboLogo({
    super.key,
    this.width = 184,
    this.height = 150,
    this.isFull = true,
  });

  // width
  final double width, height;

  // is full icon
  final bool isFull;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      isFull ? fullIcon : smallIcon,
      fit: BoxFit.fill,
      width: width,
      height: height,
    );
  }
}
