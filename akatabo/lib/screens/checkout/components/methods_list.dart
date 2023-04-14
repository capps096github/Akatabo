import '../../../akatabo_exporter.dart';
import '../account_pay/account_pay.dart';
import '../card_pay/card_pay.dart';
import '../mobile_pay/mobile_pay.dart';
import 'payment_method.dart';

final List<PaymentMethod> paymentMethods = [
  //  PaymentMethod(
  //   label: "Cash on Delivery",
  //   description: "Pay with cash on delivery",
  //   contents: [
  //     VerticalSpace(of: spacing16),
  //     const Text(
  //       "You will pay the delivery person when your order is delivered",
  //       style: TextStyle(
  //         fontSize: 14,
  //         color: Colors.black54,
  //       ),
  //     ),
  //     VerticalSpace(of: spacing8),
  //   ],
  // ),
  PaymentMethod(
    label: "Mobile Pay",
    description: "Use Airtel Money and MTN Mobile Money",
    contents: [
      const LinesAccepted(),
      const VerticalSpace(of: spacing16),
      const MoMoNumberField(),
      const VerticalSpace(of: spacing8),
    ],
  ),
  PaymentMethod(
    label: "Credit / Debit Card Pay",
    description: "Use your credit or debit card to pay for your order",
    contents: [
      const VerticalSpace(of: spacing8),
      const CardsAccepted(),
      const VerticalSpace(of: spacing8),
      const CardNumberField(),
      const VerticalSpace(of: spacing8),
      const ExpiryDateField(),
      const VerticalSpace(of: spacing8),
      const CVVField(),
      const VerticalSpace(of: spacing8),
    ],
  ),
  PaymentMethod(
    label: "User Account Billing Card",
    description: "Pay with your user account billing card",
    contents: [
      const VerticalSpace(of: spacing16),
      const ConfirmPasswordField(),
      const VerticalSpace(of: spacing8),
    ],
  ),
];
