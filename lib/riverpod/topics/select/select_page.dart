import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/riverpod/topics/select/provider/user_provider.dart';

class SelectPage extends ConsumerWidget {
  SelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user1 = ref.watch(userProvider);
    ref.listen(userProvider, (value) {
      print('userProvider listen');
    });
    // final userName =
    // ref.watch(userProvider.select((value) => value.state.name));
    // final userAge = ref.watch(userProvider.select((value) => value.state.age));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'user1: ' + user1,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Text(
            //   'user1.age: ' + '${user1.age}',
            //   style: const TextStyle(
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // Text(
            //   'userName: ' + userName,
            //   style: const TextStyle(
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // Text(
            //   'userName: ' + userAge,
            //   style: const TextStyle(
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            ElevatedButton(
              onPressed: () {
                ref.read(userProvider.notifier).setName();
              },
              child: const Text('Change user name'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(userProvider.notifier).setAge();
              },
              child: const Text('Change user age'),
            ),
          ],
        ),
      ),
    );
  }
}
