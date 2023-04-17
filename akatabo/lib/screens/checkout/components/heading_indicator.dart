import '../../../akatabo_exporter.dart';
import '../providers.dart';
import 'dot_line.dart';
import 'heading_title.dart';

class HeadingIndicator extends ConsumerWidget {
  const HeadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final checkoutPageIndex = ref.watch(checkoutPageIndexProvider);

    //
    return Container(
      color: akataboBackground,
      padding: verticalPadding8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // text
          HeadingTitle(checkoutPageIndex: checkoutPageIndex),

          // dot and line
          DotLine(checkoutPageIndex: checkoutPageIndex),
        ],
      ),
    );
  }
}
