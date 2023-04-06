import '../../akatabo_exporter.dart';
import 'auth_background.dart';
import 'login/login.dart';

class AkataboAuth extends StatelessWidget {
  const AkataboAuth({super.key});

  @override
  Widget build(BuildContext context) {
    // switch index to change screens
    return Scaffold(
      body: Stack(
        children: const [
          AuthBackground(
            authChild: LoginScreen(),
            imagePath: loginImage,
          ),
        ],
      ),
    );
  }
}
