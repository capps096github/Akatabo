import '../../../akatabo_exporter.dart';
import '../functions/functions.dart';

class GetStartedButton extends ConsumerStatefulWidget {
  const GetStartedButton({super.key});

  @override
  ConsumerState<GetStartedButton> createState() => _GetStartedButtonState();
}

class _GetStartedButtonState extends ConsumerState<GetStartedButton> {
  bool isButtonTapped = false;

  @override
  Widget build(BuildContext context) {
    //
    return CircularProgressAppButton(
      isTapped: isButtonTapped,
      isGradientButton: true,
      text: "Get Started",
      icon: Icons.chevron_right,
      onTap: () async {
        // add level of education to the user db

        setState(() {
          isButtonTapped = !isButtonTapped;
        });

        // go to home page
        // * simulated auth
        await authSimulation().then((_) {
          // reset the auth index provider
          ref.read(authPageIndexProvider.notifier).state = 0;

          // go to home
          context.go(homePath);
        });
      },
    );
  }
}
