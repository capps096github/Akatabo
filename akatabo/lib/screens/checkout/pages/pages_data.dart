import '../../../akatabo_exporter.dart';
import 'make_payment.dart';
import 'pages_cta.dart';
import 'payment_summary.dart';
import 'select_payment_mode.dart';

class CheckoutPage {
  // page name
  final String name;

  // widget page
  final Widget page;

  // call to action
  final Widget cta;

  CheckoutPage({
    required this.name,
    required this.page,
    required this.cta,
  });
}

List<CheckoutPage> checkoutPages = [
//  select
  CheckoutPage(
    name: "Select",
    page: const SelectPaymentMethod(),
    cta: const SelectPaymentCTA(),
  ),

  // make payment
  CheckoutPage(
    name: "Payment",
    page: const MakePayment(),
    cta: const ConfirmPayCTA(),
  ),

  // summary
  CheckoutPage(
    name: "Summary",
    page: const PaymentSummary(),
    cta: const SummaryPageCTA(),
  ),
];
