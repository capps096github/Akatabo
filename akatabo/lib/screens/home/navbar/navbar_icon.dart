// Project imports:

import '../../../akatabo_exporter.dart';
import '../providers/navbar_index_provider.dart';
import 'navbar_screen.dart';

class NavbarIcon extends ConsumerWidget {
  const NavbarIcon({
    super.key,
    required this.screen,
    required this.index,
  });
  // screen
  final NavbarScreen screen;

  // index
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //  selected
    final selectedIndex = ref.watch(selectedNavBarIndexProvider);

    // is selected
    final isSelected = (index == selectedIndex);

    return AnimatedSwitcher(
      duration: quarterSeconds,
      transitionBuilder: (child, animation) => FadeScaleTransition(
        animation: animation,
        child: child,
      ),
      child: isSelected
          ? SelectedIcon(screen: screen)
          : UnselectedIcon(index: index, screen: screen),
    );
  }
}

class SelectedIcon extends StatelessWidget {
  const SelectedIcon({Key? key, required this.screen}) : super(key: key);

  // screen
  final NavbarScreen screen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // icon
          Icon(
            screen.selectedIcon,
            color: akataboColor,
            size: 24,
          ),
          const VerticalSpace(of: spacing2),
          // text
          Text(
            screen.name,
            style: const TextStyle(
              color: akataboColor,
              fontSize: fontSize12,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

class UnselectedIcon extends ConsumerWidget {
  const UnselectedIcon({
    Key? key,
    required this.index,
    required this.screen,
  }) : super(key: key);

  // index
  final int index;

  // screen
  final NavbarScreen screen;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = akataboSecondaryColor.withOpacity(.5);
    // icon button with svg as icon
    return InkWell(
      onTap: () {
        // update the selected index
        ref.read(selectedNavBarIndexProvider.notifier).state = index;
      },
      child: Padding(
        padding: padding2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // icon
            Icon(
              screen.unselectedIcon,
              color: color,
              size: 20,
            ),

            const VerticalSpace(of: spacing2),

            // text
            Text(
              screen.name,
              style: TextStyle(
                color: color,
                fontSize: fontSize10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
