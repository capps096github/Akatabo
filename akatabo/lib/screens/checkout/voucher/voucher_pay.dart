import '../../../akatabo_exporter.dart';
import '../providers.dart';
import 'voucher_field.dart';

class VoucherPay extends ConsumerWidget {
  const VoucherPay({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // voucher pay
    final voucherPayKey = ref.watch(voucherPayFormKeyProvider);

    //
    return AutofillGroup(
      key: const ValueKey("voucher"),
      child: Form(
        key: voucherPayKey,
        child: Column(
          children: const [
            VerticalSpace(of: spacing16),
            VoucherField(),
            VerticalSpace(of: spacing8),
          ],
        ),
      ),
    );
  }
}
