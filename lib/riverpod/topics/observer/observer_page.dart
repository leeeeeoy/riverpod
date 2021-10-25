import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countProvider = StateProvider<int>((ref) {
  ref.onDispose(() {
    print('onDiospose');
  });
  return 0;
});

class ObserverPage extends StatelessWidget {
  const ObserverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Observer'),
      ),
      body: Center(),
    );
  }
}
