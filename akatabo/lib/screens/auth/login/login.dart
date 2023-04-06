import '../../../akatabo_exporter.dart';
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpandedScrollingColumn(
      children: [
        Spacer(flex: 2),
        Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize32,
            fontWeight: FontWeight.bold,
            color: akataboWhite,
          ),
        ),
        Spacer(),

        // VerticalSpace(of: spacing16),
        LoginForm(),
      ],
    );
  }
}
