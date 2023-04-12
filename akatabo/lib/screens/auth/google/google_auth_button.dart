// Project imports:
import '../../../akatabo_exporter.dart';
import '../auth_providers.dart';
import '../functions/functions.dart';

class GoogleAuthButton extends ConsumerStatefulWidget {
  const GoogleAuthButton({
    super.key,
    this.text = "SIGN IN",
    this.textColor = akataboBlack,
    this.buttonColor = akataboWhite,
    this.tooltipColor = akataboBlack,
  });
  final String text;

  // colors text, button, tooltip
  final Color textColor, buttonColor, tooltipColor;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GoogleAuthButtonState();
}

class _GoogleAuthButtonState extends ConsumerState<GoogleAuthButton> {
  // istapped
  bool isButtonTapped = false;

  @override
  Widget build(BuildContext context) {
    return CircularProgressAppButton(
      isTapped: isButtonTapped,
      text: "${widget.text.toUpperCase()} WITH GOOGLE",
      onTap: () async {
        // set the error to an empty string
        ref.read(authErrorTextProvider.notifier).state = '';

        // Unfocus Keyboard
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }

        //  update button state
        setState(() {
          isButtonTapped = !isButtonTapped;
        });

        // await akataboGoogleAuth(ref: ref).then((_) {
        //   // check if widget is mounted
        //   if (mounted) {
        //     //  update button state
        // setState(() {
        //   isButtonTapped = !isButtonTapped;
        // });
        //   }
        // });

        await authSimulation().then((_) => context.go(homePath));
      },
      iconWidget: SvgPicture.asset(
        "assets/images/google.svg",
        height: 20,
        width: 20,
      ),
      textColor: widget.textColor,
      buttonColor: widget.buttonColor,
    );
  }
}
