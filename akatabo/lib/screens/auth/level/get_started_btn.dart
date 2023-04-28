import '../../../akatabo_exporter.dart';

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
        // set the button to tapped
        setState(() {
          isButtonTapped = true;
        });

        //  current user id
        final akataboUserId = FirebaseAuth.instance.currentUser?.uid;

        // level of education from provider
        final levelOfEduc = ref.watch(levelOfEducProvider);

        // update the level of education in the database
        if (akataboUserId != null) {
          await AkataboDBService.updateLevelOfEduc(
                  levelOfEduc: levelOfEduc, userId: akataboUserId)
              .then((_) {
            // set the button to not tapped
            // ignore: avoid_print
            print("User Level of Education Updated");
            if (mounted) {
              setState(() {
                isButtonTapped = false;
              });
            }

            // reset the auth index provider
            ref.read(authPageIndexProvider.notifier).state = 0;

            // go to home
            context.go(homePath);
          });
        } else {
          // login
          ref.read(authErrorTextProvider.notifier).state =
              'Login to Set your Level of Education';

          // reset the auth index provider
          ref.read(authPageIndexProvider.notifier).state = 0;
        }
      },
    );
  }
}
