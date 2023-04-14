import '../../../akatabo_exporter.dart';
import '../components/methods_list.dart';
import '../components/payment_method_card.dart';
import '../voucher/voucher_pay.dart';

class SelectPaymentMethod extends StatelessWidget {
  const SelectPaymentMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //
    return ListView(
      children: [
        // title
        const Text(
          "SELECT A PAYMENT METHOD",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const VerticalSpace(of: spacing16),
        // METHODS
        ...List.generate(
          paymentMethods.length,
          (index) {
            final method = paymentMethods[index];
            return PaymentMethodCard(
              paymentMethod: method,
              index: index,
            );
          },
        ),

        const VoucherPay(),
      ],
    );
  }
}
