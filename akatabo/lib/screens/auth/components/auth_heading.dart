import '../../../akatabo_exporter.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.heading,
  });

  // text
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: fontSize32,
        fontWeight: FontWeight.bold,
        color: akataboWhite,
      ),
    );
  }
}
