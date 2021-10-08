import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCounter extends StateNotifier<int> {
  MyCounter() : super(0);

  void increment() => state++;
  void decrement() => state--;
  void initCount() => state = 0;
}

final myCounterStateNotifierProvider =
    StateNotifierProvider<MyCounter, int>((ref) {
  return MyCounter();
});

final countProvider1 = StateProvider<int>((ref) => 0);
final countProvider2 = StateProvider<int>((ref) => 10);

final countProvider = Provider<int>((ref) {
  final count1 = ref.watch(countProvider1);
  final count2 = ref.watch(countProvider2);

  return count1.state + count2.state;
});

class PracticePage extends ConsumerWidget {
  const PracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(countProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Practice'),
      ),
      body: Center(
        child: Text(
          'Value: $count',
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: '111',
              onPressed: () => ref.read(countProvider1).state++,
              child: const Icon(
                Icons.add,
              ),
            ),
            const SizedBox(width: 10.0),
            FloatingActionButton(
              heroTag: '222',
              onPressed: () => ref.read(countProvider2).state++,
              child: const Icon(
                Icons.remove,
              ),
            ),
            const SizedBox(width: 10.0),
            FloatingActionButton(
              heroTag: '333',
              onPressed: () {
                ref.read(countProvider1).state = 0;
                ref.read(countProvider2).state = 10;
              },
              child: const Icon(
                Icons.refresh,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
