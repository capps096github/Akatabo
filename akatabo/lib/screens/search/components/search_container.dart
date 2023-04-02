import '../../../akatabo_exporter.dart';
import 'search_texts.dart';

class SearchContainer extends ConsumerWidget {
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return SliverToBoxAdapter(
      child: Card(
        margin: margin4,
        color: akataboWhite,
        surfaceTintColor: akataboWhite,
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        shape: const RoundedRectangleBorder(borderRadius: borderRadius8),
        child: InkWell(
          onTap: () {
            //TODO implement search delegate
            // showSearch(
            //   context: context,
            //   delegate: GallerySearchDelegate(),
            // );

            // reset the filters
            // ref.watch(selectedFilterIndexProvider.notifier).state = 0;

            // reset the selected icon index too
            // ref.watch(selectedIconIndexProvider.notifier).state = -1;
          },
          borderRadius: borderRadius8,
          child: Container(
            margin: margin4,
            constraints: const BoxConstraints(maxWidth: 900),
            // decoration: BoxDecoration(
            //   color: akataboWhite,
            //   borderRadius: borderRadius8,
            //   border: Border.all(
            //     color: akataboSecondaryColor,
            //     width: 2,
            //   ),
            // ),
            child: Row(
              children: [
                // search text
                Expanded(
                  child: SearchTexts(
                    onPressed: () {},
                  ),
                ),
                // search icon
                Container(
                  decoration: const BoxDecoration(
                    color: akataboColor,
                    borderRadius: borderRadius4,
                  ),
                  margin: margin2,
                  padding: padding8,
                  child: const Icon(
                    Icons.search,
                    color: akataboWhite,
                    semanticLabel: 'search',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TypewriterAnimatedText typewriterAnimatedText(String text, Color color) {
    return TypewriterAnimatedText(
      text,
      textAlign: TextAlign.center,
      speed: const Duration(milliseconds: 80),
      cursor: '|',
      curve: Curves.easeIn,
      textStyle: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
