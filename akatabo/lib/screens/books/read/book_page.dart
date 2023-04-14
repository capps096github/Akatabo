import '../../../akatabo_exporter.dart';
import 'providers.dart';

class BookPage extends ConsumerWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // add functionality to save this and recover it when user returns to the app
    final currentBookPage = ref.watch(currentBookPageProvider);

    return Container(
      margin: margin8,
      width: double.infinity,
      padding: padding16,
      decoration: BoxDecoration(
        color: akataboRandomColor.withOpacity(.1),
        borderRadius: borderRadius8,
      ),
      child: ExpandedScrollingColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AkataboLogo(),
          const VerticalSpace(of: spacing4),
          const Text(
            'Now Reading',
            style: TextStyle(color: akataboSecondaryColor),
          ),
          const VerticalSpace(of: spacing4),
          Text(
            'Page $currentBookPage',
            style: const TextStyle(
              color: akataboSecondaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          const VerticalSpace(of: spacing4),

          // render here MD instead
          const Text(
            """Topic: Types and Stages of Seed Germination
Seed: A seed is a ripened ovule, which consists of an embryo and stored food supply surrounded by protected seed coverings.
Embryo: A miniature plant within a seed, produces by the union of male and female gamete.
Germinate: To being to grow.
Germination: The process in which seed embryo starts growing, which leads to the development of seedling.
Dicots: Plants having two cotyledons in their seeds.
The Process of Seed Germination:
The activation of metabolic machinery of seed embryo is the first and foremost step to initiate the seed germination process Thus, seed germination is the process of reactivation of the metabolic activity of the seed embryo, resulting in the emergence of radical (root) and plumule (shoot), thus leading to the production of a seedling or a young plant.
Seed germination is a very complex process as it involves many biochemical, physiological and morphological changes within a seed. For germination to be initiated, three conditions must be fulfilled First, the seed must be viable i.e the embryo should be alive and capable of germination. Second, the seed should be non-dormant i.e there should not be any dormancy or any chemical barrier for germination Third, the environmental conditions like moisture, temperature, air (O2) and light must be available in appropriate amount. If all these conditions are fulfilled, the quiescent embryo in the seed will resume growth, thus initiating the process of germination. In the early stages of growth, the embryo draws nutrients from the stored food material in the cotyledons or the endosperm of Later, new shoot/leaves are developed, which produce their own photosynthetic system.
Stages of seed germination:
The process of seed germination involves several consecutive but overlapping events like:
Absorption of water,
Initiation of cell enlargement and division,
Increased enzymatic activity,
Food translocation to growing embryo,
Increase in respiration and assimilation,
Increase in cell division and enlargement and
Differentiation of cells into tissue and organs of a seedling.""",
            style: TextStyle(
              color: akataboSecondaryColor,
            ),
          ),
          const VerticalSpace(of: spacing64),
        ],
      ),
    );
  }
}
