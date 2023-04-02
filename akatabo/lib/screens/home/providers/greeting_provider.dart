// riverpod_annotaion
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'greeting_provider.g.dart';

@riverpod
String greeting(GreetingRef ref) {
  // final akataboUser = ref.watch(akataboUserProvider);

  // date
  final now = DateTime.now();
  final hour = now.hour;

  final greeting = hour < 12
      ? "Good Morning"
      : hour < 18
          ? "Good Afternoon"
          : "Good Evening";

  return greeting;
  // return "$greeting, ${akataboUser.firstName}";
}
