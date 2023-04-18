import '../../../akatabo_exporter.dart';
import '../components/confirming_payment.dart';
import '../components/paying_for.dart';
import '../providers.dart';

class MakePayment extends ConsumerWidget {
  const MakePayment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // is confirming
    final isConfirming = ref.watch(isConfirmingPaymentProvider);

    return AnimatedSwitcher(
      duration: quarterSeconds,
      child: isConfirming ? const ConfirmingPayment() : const PayingFor(),
    );
  }
}
