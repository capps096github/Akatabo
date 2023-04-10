// Project imports:
import '../../../akatabo_exporter.dart';
import '../components/auth_heading.dart';
import 'signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpandedScrollingColumn(
      key: PageStorageKey("signup"),
      children: [
        Spacer(flex: 2),
        AuthHeader(heading: "Sign Up"),
        Spacer(),

        //
        SignUpForm(),
      ],
    );
  }
}
