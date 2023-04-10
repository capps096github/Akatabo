import '../../../akatabo_exporter.dart';
import '../auth_page.dart';
import '../auth_providers.dart';

class AuthOptionText extends ConsumerWidget {
  const AuthOptionText({
    super.key,
    this.question,
  });

  // nullable question
  final String? question;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // aceess the auth page
    final authpage = ref.watch(authPageProvider);

    return Align(
      alignment: Alignment.center,
      child: Material(
        borderRadius: borderRadius8,
        color: akataboTransparent,
        child: InkWell(
          onTap: () {
            //* reset the error to an empty string
            ref.read(authErrorTextProvider.notifier).state = '';

            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
            //  go to forgot password page index
            ref.read(authPageIndexProvider.notifier).state =
                authpage.actionPageIndex;
          },
          borderRadius: BorderRadius.circular(8),
          hoverColor: akataboColor.withOpacity(.05),
          splashColor: akataboColor.withOpacity(.1),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:question?? authpage.question,
                style: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  color: akataboWhite,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "  ${authpage.action.toUpperCase()}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      color: akataboRatingsColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
