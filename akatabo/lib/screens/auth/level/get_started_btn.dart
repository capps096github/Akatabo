import '../../../akatabo_exporter.dart';
import '../auth_providers.dart';
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
    // level of education from provider
    final levelOfEduc = ref.watch(levelOfEducProvider);

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
        await authSimulation().then((_) => context.go(homePath));
      },
    );
  }
}
