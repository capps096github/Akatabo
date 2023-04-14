import '../../../akatabo_exporter.dart';
import 'providers.dart';

class ReadNavbar extends ConsumerWidget {
  const ReadNavbar({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // add functionality to save this and recover it when user returns to the app
    final currentBookPage = ref.watch(currentBookPageProvider);

    const bacgroundColor = akataboWhite;
    const textColor = akataboSecondaryColor;

    // max pages
    const maxPages = 20;

    // isFirst
    final isFirst = (currentBookPage == 1) || (currentBookPage < 1);
    final isLast =
        (currentBookPage == maxPages) || (currentBookPage > maxPages);

    return Padding(
      padding: padding16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PageSwitcher(
            hideIconIf: isFirst,
            textColor: textColor,
            bacgroundColor: bacgroundColor,
            icon: Icons.arrow_back_ios_new,
            onPressed: () {
              // reduce the current page if it is not the first page
              if (currentBookPage > 1) {
                ref.read(currentBookPageProvider.notifier).state--;
              }
              // if it is lesser set it to one still to avoid errors that maybe as a result of a user clicking the icon very fast
              else {
                ref.read(currentBookPageProvider.notifier).state = 1;
              }
            },
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 2,
            ),
            decoration: BoxDecoration(
              color: textColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "$currentBookPage of $maxPages",
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                color: bacgroundColor,
              ),
            ),
          ),
          PageSwitcher(
            hideIconIf: isLast,
            textColor: textColor,
            bacgroundColor: bacgroundColor,
            icon: Icons.arrow_forward_ios,
            onPressed: () {
              // increase the current page if it is not the last page
              if (currentBookPage < maxPages) {
                ref.read(currentBookPageProvider.notifier).state++;
              } else {
                // if it is greater, set it to 20 still
                ref.read(currentBookPageProvider.notifier).state = maxPages;
              }
            },
          ),
        ],
      ),
    );
  }
}

class PageSwitcher extends StatelessWidget {
  const PageSwitcher({
    super.key,
    required this.textColor,
    required this.bacgroundColor,
    required this.icon,
    required this.onPressed,
    required this.hideIconIf,
  });

  final Color textColor;
  final Color bacgroundColor;

  // icon
  final IconData icon;

  // onPressed
  final VoidCallback onPressed;

  // showIf
  final bool hideIconIf;

  @override
  Widget build(BuildContext context) {
    //
    return AnimatedSwitcher(
      duration: halfQuarterSeconds,
      child: hideIconIf
          ? const EmptySpace()
          : CircleAvatar(
              backgroundColor: textColor,
              child: IconButton(
                onPressed: hideIconIf ? null : onPressed,
                icon: Icon(
                  icon,
                  color: bacgroundColor,
                  size: 20,
                ),
              ),
            ),
      transitionBuilder: (child, animation) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
    );
  }
}
