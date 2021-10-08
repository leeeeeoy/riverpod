import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/riverpod/topics/select/provider/user_provider.dart';

class SelectPage extends ConsumerWidget {
  SelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'user1: ' + '${users.users[0]}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'user2: ' + '${users.users[1]}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'user3: ' + '${users.users[2]}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(usersProvider.notifier).setUserAge(0);
              },
              child: const Text('Change user age'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(usersProvider.notifier).setUserAge(1);
              },
              child: const Text('Change user age'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(usersProvider.notifier).setUserAge(2);
              },
              child: const Text('Change user age'),
            ),
          ],
        ),
      ),
    );
  }
}
