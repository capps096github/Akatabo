import '../../../akatabo_exporter.dart';
import '../providers.dart';

final voucherExp = RegExp(r'^[a-zA-Z0-9]+$');

class VoucherField extends ConsumerWidget {
  const VoucherField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // voucher
    final voucher = ref.watch(voucherProvider);

    //
    return CustomTextField(
      restorationId: 'voucher_field',
      initialValue: voucher,
      keyboardType: TextInputType.visiblePassword,
      hintText: 'Enter Voucher Code',
      labelText: "Have a Voucher? Enter it's code here",
      fillColor: akataboSecondaryColor.withOpacity(.05),
      borderColor: akataboSecondaryColor,
      labelTextColor: akataboSecondaryColor,
      onChanged: (voucher) {
        if (voucherExp.hasMatch(voucher)) {
          ref.read(voucherProvider.notifier).state = voucher;
        }
      },
      validator: (voucher) {
        if (voucher == null || voucher.isEmpty) {
          return "Voucher Code is required ";
        }

        if (!voucherExp.hasMatch(voucher)) {
          return "Username must have only letters and numbers";
        }
        return null;
      },
      suffixIcon: Padding(
        padding: padding2,
        child: AppButton.small(
          label: "Apply",
          onTap: () {},
        ),
      ),
    );
  }
}
