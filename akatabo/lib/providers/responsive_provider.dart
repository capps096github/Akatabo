import '../../akatabo_exporter.dart';

// riverpod_annotaion
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'responsive_provider.g.dart';

@riverpod
AkataboResponsive akataboResponsive(
    AkataboResponsiveRef ref, BuildContext context) {
  return AkataboResponsive(context: context);
}
