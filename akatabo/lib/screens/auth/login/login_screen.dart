import '../../../akatabo_exporter.dart';
import '../components/auth_heading.dart';
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpandedScrollingColumn(
      key: PageStorageKey("login"),
      children: [
        Spacer(flex: 2),
        AuthHeader(heading: "Login"),
        Spacer(),

        // VerticalSpace(of: spacing16),
        LoginForm(),
      ],
    );
  }
}
