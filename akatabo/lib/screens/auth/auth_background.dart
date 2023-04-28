import '../../akatabo_exporter.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({
    super.key,
    required this.screen,
    required this.imagePath,
     this.horizontalPadding,
  });

  final Widget screen;

  final String imagePath;

  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // background
        Stack(
          children: [
            // image
            BackgroundImage(imagePath: imagePath),

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
                    akataboColor.withOpacity(0.25),
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
          padding:  EdgeInsets.symmetric(horizontal:horizontalPadding?? spacing16),
          child: SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: maxAuthWidth),
                child: screen,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
