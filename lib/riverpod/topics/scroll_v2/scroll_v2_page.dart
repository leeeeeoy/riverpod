import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/riverpod/topics/scroll_v2/provider.dart';

class ScrollV2Page extends ConsumerStatefulWidget {
  const ScrollV2Page({Key? key}) : super(key: key);

  @override
  ConsumerState<ScrollV2Page> createState() => _ScrollV2PageState();
}

class _ScrollV2PageState extends ConsumerState<ScrollV2Page> {
  int page = 1;

  @override
  Widget build(BuildContext context) {
    // final usersState = ref.watch(usersProvider);
    final usersState = ref.watch(usersProvider2);

    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll V2'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: usersState.users.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.lightBlueAccent.shade200,
              leading: Image.network(usersState.users[index].avatar),
              title: Column(
                children: [
                  Text(
                    usersState.users[index].firstName,
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text(
                    usersState.users[index].lastName,
                    style: const TextStyle(fontSize: 24),
                  ),
                ],
              ),
              onTap: () {
                ref.read(usersProvider.notifier).setUserName(index, 'Lee');
              },
              onLongPress: () {
                ref.read(usersProvider.notifier).setUserName(index, 'Song');
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(usersProvider.notifier).getUsers(page++);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
