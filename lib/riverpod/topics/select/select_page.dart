import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/riverpod/topics/select/model/user.dart';
import 'package:riverpod_flutter/riverpod/topics/select/provider/user_provider.dart';

class SelectPage extends ConsumerWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    User testUser = User(id: 1, name: '메롱', age: '123123');
    final user = ref.watch(userProvider(testUser));

    ref.listen(userProvider(testUser), (user) {
      print('유저변경: $user');
    });
    ref.listen(userProvider(testUser).select((u) => u.name), (name) {
      print('이름변경: $name');
    });
    ref.listen(userProvider(testUser).select((u) => u.age), (age) {
      print('나이변경: $age');
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'user: $user',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'user.name: ${user.name}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'user.age: ${user.age}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(userProvider(testUser).notifier).setAge();
              },
              child: const Text('Change user age'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(userProvider(testUser).notifier).setName();
              },
              child: const Text('Change user age'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(userProvider(testUser).notifier).resetUser();
              },
              child: const Text('Reset user'),
            ),
          ],
        ),
      ),
    );
  }
}
