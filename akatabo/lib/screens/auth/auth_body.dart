import '../../akatabo_exporter.dart';

class AuthBody extends ConsumerWidget {
  const AuthBody({super.key, required this.child});

  // cild widget
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final akataboResponsive = AkataboResponsive(context: context);

    final isMobile = akataboResponsive.isMobileScreen;

    return PageTransitionSwitcher(
      transitionBuilder: (child, animation, secondaryAnimation) {
        // return FadeThroughTransition(
        return SharedAxisTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          fillColor: akataboTransparent,
          transitionType: isMobile
              ? SharedAxisTransitionType.scaled
              : SharedAxisTransitionType.horizontal,
          child: child,
        );
      },
      duration: halfSeconds,
      child: GestureDetector(
        onTap: () {
          // Unfocus Keyboard
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: child,
      ),
    );
  }
}
