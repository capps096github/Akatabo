import '../../../akatabo_exporter.dart';
import '../pages/pages_data.dart';
import '../providers.dart';

class HeadingTitle extends ConsumerWidget {
  const HeadingTitle({
    super.key,
    required this.checkoutPageIndex,
  });

  final int checkoutPageIndex;

  @override
  Widget build(BuildContext context, ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          checkoutPages.length,
          (index) {
            // is selected
            final isSelected = (checkoutPageIndex == index);

            // allow tap only if the current index being tapped is less than it
            final allowTap = (index < checkoutPageIndex);

            return InkWell(
              onTap: allowTap
                  ? () {
                      // set the index to be updated
                      ref.read(checkoutPageIndexProvider.notifier).state =
                          index;
                    }
                  : null,
              child: Padding(
                padding: horizontalPadding4,
                child: Text(
                  checkoutPages[index].name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isSelected ? 14 : 12,
                    fontWeight: FontWeight.bold,
                    color: isSelected
                        ? akataboColor
                        : akataboSecondaryColor.withOpacity(.5),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
