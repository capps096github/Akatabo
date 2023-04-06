import '../../akatabo_exporter.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.onTap,
  });

  // title
  final String title;

  // on tap
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    //
    return SliverToBoxAdapter(
      child: Material(
        color: akataboTransparent,
        child: InkWell(
          borderRadius: borderRadius8,
          onTap: onTap,
          highlightColor: akataboColor.withOpacity(.1),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: spacing8,
              vertical: spacing8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // heading
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize20,
                      color: akataboSecondaryColor,
                    ),
                  ),
                ),

                // arrow show it if on tap is not null
                if(onTap != null)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    // see all
                    Text(
                      'See All',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: akataboColor,
                      ),
                    ),

                    HorizontalSpace(of: spacing8),

                    // arrow
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: akataboColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
