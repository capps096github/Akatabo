import '../../akatabo_exporter.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({
    super.key,
    required this.authChild,
    required this.imagePath,
  });

  final Widget authChild;

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // background
        Stack(
          children: [
            // image
            SizedBox(
              height:
                  MediaQuery.of(context).size.height, //75% of the screen height
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),

            // gradient
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    akataboTransparent,
                    akataboColor.withOpacity(0.5),
                    akataboColor.withOpacity(0.75),
                    akataboColor,
                    akataboColor,
                  ],
                ),
              ),
            ),
          ],
        ),

        // child
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: spacing16),
          child: authChild,
        ),
      ],
    );
  }
}
