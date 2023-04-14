import '../../../../akatabo_exporter.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    super.key,
    required this.akataBook,
  });

  final AkataBook akataBook;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding4,
      child: AppButton(
        label: "Buy Now",
        onTap: () {},
      ),
    );
  }
}
