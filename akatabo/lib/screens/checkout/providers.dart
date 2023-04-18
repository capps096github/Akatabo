import '../../akatabo_exporter.dart';

// slected payment mode index
final paymentMethodIndexProvider = StateProvider<int>((_) => 0);

// TODO set this up
// selected payment method
// final selectedPaymentMethodProvider = Provider<>((ref) {
//   return ;
// });



// mobile money number
final momoNumberProvider = StateProvider<String>((_) => '');

// * Card Pay
// card number
final cardNumberProvider = StateProvider<String>((_) => '');

// cvv number
final cvvNumberProvider = StateProvider<String>((_) => '');

// expiry date
final expiryDateProvider = StateProvider<String>((_) => "");

// confirm password
final confirmAccountPasswordProvider = StateProvider<String>((ref) => '');

// voucher
final voucherProvider = StateProvider<String>((ref) => '');

// * page index
final checkoutPageIndexProvider = StateProvider<int>((_) => 0);

// * make payments page
// is confirming
final isConfirmingPaymentProvider = StateProvider<bool>((ref) {
  return false;
});

//* Form Keys for the check out cards
// mobile pay
final mobilePayFormKeyProvider =
    Provider<GlobalKey<FormState>>((_) => GlobalKey<FormState>());

// card pay
final cardPayFormKeyProvider =
    Provider<GlobalKey<FormState>>((_) => GlobalKey<FormState>());

// voucher pay
final voucherPayFormKeyProvider =
    Provider<GlobalKey<FormState>>((_) => GlobalKey<FormState>());

// user account pay form key
final userAccountPayFormKeyProvider =
    Provider<GlobalKey<FormState>>((_) => GlobalKey<FormState>());
