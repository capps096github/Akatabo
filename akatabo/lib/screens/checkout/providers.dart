import '../../akatabo_exporter.dart';

// slected payment mode index
final paymentMethodIndexProvider = StateProvider<int>((_) => 0);

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