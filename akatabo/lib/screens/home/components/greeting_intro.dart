import '../../../akatabo_exporter.dart';
import '../providers/greeting_provider.dart';

class GreetingIntro extends ConsumerWidget {
  const GreetingIntro({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final greeting = ref.watch(greetingProvider);

    return SliverToBoxAdapter(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            greeting,
            style: const TextStyle(
              fontSize: fontSize24,
              color: akataboSecondaryColor,
              fontWeight: FontWeight.w900,
            ),
          ),
          const Text(
            "What are you reading today?",
            style: TextStyle(
              fontSize: fontSize16,
              color: akataboSecondaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
