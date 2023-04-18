import '../../../akatabo_exporter.dart';

class ConfirmingPayment extends StatelessWidget {
  const ConfirmingPayment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        // progress indicator
        CircularProgressIndicator(),

        VerticalSpace(of: spacing16),
        // text
        Center(
          child: Text('Making Payment ... Please Wait'),
        ),
      ],
    );
  }
}
