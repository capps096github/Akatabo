import '../../../akatabo_exporter.dart';
import '../providers.dart';
import 'card_no_field.dart';

class CardsAccepted extends ConsumerWidget {
  const CardsAccepted({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final cardNumber = ref.watch(cardNumberProvider);

    // Remove all non-digit characters
    // final cleanedValue = cardNumber.replaceAll(RegExp(r'\D+'), '');

    // Check if it's a valid Visa or Mastercard number
    final isVisa = visaRegex.hasMatch(cardNumber);

    //
    final isMastercard = mastercardRegex.hasMatch(cardNumber) ||
        RegExp(r'^222[1-9]').hasMatch(cardNumber);

    return Row(
      children: [
        //  visa logo
        CardHighlighter(
          showHighlighter: isVisa,
          cardIcon: Image.asset(
            visaIcon,
            fit: BoxFit.fill,
            //! values are generated from the image's aspect ratio don't edit
            width: 61,
            height: 20,
          ),
        ),

        const HorizontalSpace(of: spacing16),

        // mastercard logo
        CardHighlighter(
          showHighlighter: isMastercard,
          cardIcon: SvgPicture.asset(
            mastercardIcon,
            height: 40,
          ),
        ),
      ],
    );
  }
}

// highlighter
class CardHighlighter extends StatelessWidget {
  const CardHighlighter({
    super.key,
    required this.cardIcon,
    required this.showHighlighter,
  });

  //
  final Widget cardIcon;

  // show highlighter
  final bool showHighlighter;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // highlighter
        if (showHighlighter) ...[
          // radio button
          Radio(
            value: 1,
            groupValue: 1,
            onChanged: (_) {},
            activeColor: akataboColor,
          ),
          const HorizontalSpace(of: spacing4),
        ],
        // card icon
        cardIcon,
      ],
    );
  }
}
