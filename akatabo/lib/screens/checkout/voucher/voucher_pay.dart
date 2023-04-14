import '../../../akatabo_exporter.dart';
import 'voucher_field.dart';

class VoucherPay extends StatelessWidget {
  const VoucherPay({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Column(
      children: const [
        VerticalSpace(of: spacing16),
        VoucherField(),
        VerticalSpace(of: spacing8),
      ],
    );
  }
}
