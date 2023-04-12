import '../akatabo_exporter.dart';
import '../screens/auth/auth_background.dart';

class AkataboSplash extends StatelessWidget {
  const AkataboSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: akataboColor,
      body: AuthBackground(
        screen: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // space
            const Spacer(flex: 4),

            const VerticalSpace(of: spacing16),

            // logo
            Image.asset(
              smallIcon,
              fit: BoxFit.fill,
              width: 184,
              height: 150,
            ),
            //
            const Text(
              "The school library in the palm of your hands",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: akataboWhite,
                fontSize: 16,
              ),
            ),
            const Spacer(),

            // space
            const VerticalSpace(of: spacing16),
          ],
        ),
        imagePath: splashImage,
      ),
    );
  }
}
