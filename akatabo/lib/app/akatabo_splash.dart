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
          children: const [
            // space
            Spacer(flex: 4),

            VerticalSpace(of: spacing16),

            // logo
            AkataboLogo(),
            //
            Text(
              "The school library in the palm of your hands",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: akataboWhite,
                fontSize: 16,
              ),
            ),
            Spacer(),

            // space
            VerticalSpace(of: spacing16),
          ],
        ),
        imagePath: splashImage,
      ),
    );
  }
}
