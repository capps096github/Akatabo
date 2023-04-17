import '../../../akatabo_exporter.dart';
import '../pages/pages_data.dart';
import '../providers.dart';

class DotLine extends StatelessWidget {
  const DotLine({
    super.key,
    required this.checkoutPageIndex,
  });

  final int checkoutPageIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spacing24),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // line behid the dots
          const ThickHorizontalDivider(
            thickness: 2,
            width: double.infinity,
          ),

          // dots
          Consumer(
            builder: (context, ref, child) {
              //
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    checkoutPages.length,
                    (index) {
                      // is selected
                      final isSelected = (checkoutPageIndex == index);

                      //
                      // allow tap only if the current index being tapped is less than it
                      final allowTap = (index < checkoutPageIndex);

                      return InkWell(
                        onTap: allowTap
                            ? () {
                                // set the index to be updated
                                ref
                                    .read(checkoutPageIndexProvider.notifier)
                                    .state = index;
                              }
                            : null,
                        child: Padding(
                          padding: horizontalPadding4,
                          child: Container(
                            color: akataboBackground,
                            child: Dot(
                              dotDiameter: isSelected ? 12 : 8,
                              margin: margin0,
                              dotColor: isSelected
                                  ? akataboColor
                                  : akataboColor.withOpacity(.5),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
