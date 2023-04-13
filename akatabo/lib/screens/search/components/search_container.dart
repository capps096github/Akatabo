import '../../../akatabo_exporter.dart';
import 'search_texts.dart';

class SliverSearchContainer extends ConsumerWidget {
  const SliverSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return const SliverToBoxAdapter(
      child: SearchContainer(),
    );
  }
}

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
