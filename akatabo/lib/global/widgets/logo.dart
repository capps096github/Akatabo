import '../../akatabo_exporter.dart';

class AkataboLogo extends StatelessWidget {
  const AkataboLogo({
    super.key,
    this.width = 184,
    this.height = 150,
  });

  // width
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      smallIcon,
      fit: BoxFit.fill,
      width: width,
      height: height,
    );
  }
}
