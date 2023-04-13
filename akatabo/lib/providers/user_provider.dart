import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../akatabo_exporter.dart';

part 'user_provider.g.dart';

@riverpod
AkataboUser akataboUser(AkataboUserRef ref) {
  // get user from akataboDefaultUserProvider
  final akataboDefaultUser = ref.watch(akataboDefaultUserProvider);

  return akataboDefaultUser;
}
