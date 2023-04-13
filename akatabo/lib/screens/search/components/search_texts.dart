import '../../../akatabo_exporter.dart';

final searchTexts = [
  'Search for a Book to read',
  'Search by Name',
  'Search by Description',
  'Happy Searching!',
  'Search for any Book here',
];

class SearchTexts extends StatelessWidget {
  const SearchTexts({Key? key, this.onPressed}) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: spacing4),
      child: AnimatedTextKit(
        animatedTexts: searchTexts
            .map((searchText) =>
                typewriterAnimatedText(searchText, akataboSecondaryColor))
            .toList(),
        onTap: onPressed,
      ),
    );
  }

  TypewriterAnimatedText typewriterAnimatedText(String text, Color color) {
    return TypewriterAnimatedText(
      text,
      textAlign: TextAlign.start,
      speed: const Duration(milliseconds: 80),
      cursor: '|',
      curve: Curves.easeIn,
      textStyle: TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
