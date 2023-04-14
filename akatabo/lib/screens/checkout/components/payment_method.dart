import '../../../akatabo_exporter.dart';

class PaymentMethod {
  /// title
  final String label, description;

  /// body as list of widgets
  final List<Widget> contents;

   PaymentMethod({
    required this.label,
    required this.description,
    required this.contents,
  });
}
