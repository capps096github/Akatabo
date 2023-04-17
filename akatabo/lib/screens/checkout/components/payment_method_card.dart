import '../../../akatabo_exporter.dart';
import '../providers.dart';
import 'payment_method.dart';

class PaymentMethodCard extends ConsumerWidget {
  const PaymentMethodCard({
    super.key,
    required this.paymentMethod,
    required this.index,
  });

  final PaymentMethod paymentMethod;

  // radio button details
  final int index;

  @override
  Widget build(BuildContext context, ref) {
    // paymentModeIndexProvider
    final paymentMethodIndex = ref.watch(paymentMethodIndexProvider);

    // is selected
    final isSelected = (paymentMethodIndex == index);

    final textBorderColor = isSelected
        ? akataboSecondaryColor
        : akataboSecondaryColor.withOpacity(.25);

    //
    return AnimatedContainer(
      duration: halfSeconds,
      margin: verticalPadding4,
      decoration: BoxDecoration(
        color: isSelected ? akataboWhite : akataboWhite.withOpacity(.25),
        border: Border.all(
          color: textBorderColor,
          width: 2,
        ),
        borderRadius: borderRadius8,
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          if (!isSelected) {
            ref.read(paymentMethodIndexProvider.notifier).state = index;
          }
        },
        child: Padding(
          padding: padding8,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // radio button
              Radio(
                value: index,
                groupValue: paymentMethodIndex,
                onChanged: (currentIndex) {
                  // update the payment mode index if it is not null
                  if (currentIndex != null) {
                    ref.read(paymentMethodIndexProvider.notifier).state =
                        currentIndex;
                  }
                },
                activeColor: akataboRadioButtonColor,
              ),
              const HorizontalSpace(of: spacing8),

              // * Form for the various payment methods
              Expanded(
                child: AutofillGroup(
                  key: ValueKey(paymentMethod.autoFillKey),
                  child: Form(
                    key: paymentMethod.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // title
                        Text(
                          paymentMethod.label,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: textBorderColor,
                          ),
                        ),

                        Text(
                          paymentMethod.description,
                          style: TextStyle(
                            color: textBorderColor,
                          ),
                        ),
                        if (isSelected) const VerticalSpace(of: spacing16),

                        // body as list of widgets if it is selected
                        if (isSelected) ...paymentMethod.contents,
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
