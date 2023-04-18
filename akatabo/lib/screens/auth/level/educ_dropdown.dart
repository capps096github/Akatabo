import '../../../akatabo_exporter.dart';

class EducationLevelDropdown extends ConsumerWidget {
  const EducationLevelDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // level of education from provider
    final levelOfEduc = ref.watch(levelOfEducProvider);

    //
    return Container(
      constraints: const BoxConstraints(maxWidth: maxAuthWidth),
      padding: const EdgeInsets.symmetric(
        vertical: spacing2,
        horizontal: spacing24,
      ),
      decoration: const BoxDecoration(
        color: akataboWhite,
        borderRadius: borderRadius8,
      ),
      child: DropdownButton<String>(
        value: levelOfEduc,
        isExpanded: true,
        onChanged: (level) {
          //* set the level of educ
          if (level != null) {
            ref.read(levelOfEducProvider.notifier).state = level;
          }
        },
        items: List.generate(
          educationLevels.length,
          (index) {
            // education level
            final value = educationLevels[index];

            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ),
        borderRadius: borderRadius8,
        dropdownColor: akataboWhite,
        icon: const Icon(
          Icons.expand_more,
          color: akataboColor,
        ),

        // this is the selected item text
        selectedItemBuilder: (_) => List.generate(
          educationLevels.length,
          (_) => Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                // radio button
                const Icon(
                  Icons.radio_button_checked,
                  color: akataboColor,
                ),

                const HorizontalSpace(of: spacing8),

                // text
                Text(
                  levelOfEduc,
                  style: const TextStyle(
                    color: akataboColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
        ),

        // underline
        underline: const EmptySpace(),
      ),
    );
  }
}
