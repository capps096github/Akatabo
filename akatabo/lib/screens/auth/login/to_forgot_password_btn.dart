// Project imports:
import '../../../akatabo_exporter.dart';
import '../auth_providers.dart';

class ToForgotPasswordButton extends ConsumerWidget {
  const ToForgotPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return Align(
      alignment: Alignment.centerRight,
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
            // ref.read(authPageIndexProvider.notifier).state =
            //     forgotPasswordPageIndex;
          },
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          hoverColor: akataboColor.withOpacity(.05),
          splashColor: akataboColor.withOpacity(.1),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: akataboWhite,
                fontSize: 14,
                height: 1.71,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
