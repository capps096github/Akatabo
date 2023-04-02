import '../../akatabo_exporter.dart';

// riverpod_annotaion
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
ThemeData akataboTheme(AkataboThemeRef ref) {
  return AkataboTheme.light;
}
