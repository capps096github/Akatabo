import '../../../akatabo_exporter.dart';

class PaymentMethod {
  /// title
  final String label, description;

  /// body as list of widgets
  final List<Widget> contents;

  // auto fill key
  final String autoFillKey;

  // form key
  final GlobalKey<FormState> formKey;

  PaymentMethod({
    required this.label,
    required this.description,
    required this.contents,
    required this.autoFillKey,
    required this.formKey,
  });
}
