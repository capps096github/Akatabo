part 'greeting_provider.g.dart';

@riverpod
String greeting(GreetingRef ref) {
  // TODO pass in here the user provider and get the name from it
  // final
  // user provider to have a checker that if we are debugging, we use the default user else otherwise

  // date
  final now = DateTime.now();
  final hour = now.hour;

  final greeting = hour < 12
      ? "Good Morning"
      : hour < 18
          ? "Good Afternoon"
          : "Good Evening";

  return greeting;
}
