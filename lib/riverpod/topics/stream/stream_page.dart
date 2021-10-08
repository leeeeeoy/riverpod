import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/riverpod/topics/stream/provider.dart';

Stream<int> getSessionTime() {
  return Stream.periodic(
      const Duration(seconds: 1), (sessionTime) => sessionTime++);
}

final streamProvider = StreamProvider.autoDispose<int>((ref) {
  return getSessionTime();
});

class StreamPage extends ConsumerStatefulWidget {
  const StreamPage({Key? key}) : super(key: key);

  @override
  _StreamPageState createState() => _StreamPageState();
}

class _StreamPageState extends ConsumerState<StreamPage> {
  @override
  void initState() {
    ref.read(myListProvider.notifier).fetchItems(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final lists = ref.watch(myListProvider);
    final reader = ref.read(myListProvider.notifier);

    _renderListView() {
      if (lists.loading && lists.users.isEmpty) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      if (!lists.loading && lists.users.isEmpty) {
        return const Center(
          child: Text('아이템을 불러오는 중입니다'),
        );
      }

      return ListView.builder(
        itemCount: lists.users.length + 1,
        itemBuilder: (context, index) {
          if (index < lists.users.length) {
            return ListTile(
              title: Text(
                lists.users[index].id.toString(),
              ),
              subtitle: Text(
                lists.users[index].name.toString(),
              ),
              trailing: Text(
                lists.users[index].like.toString(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: lists.users[index].like ? Colors.red : Colors.blue,
                ),
              ),
              onTap: () {
                // lists.users[index].changeLike();
              },
            );
          }

          if (lists.next) {
            Future.delayed(Duration(seconds: 0), () {
              reader.fetchItems(index);
            });
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Center(
              child: Text('마지막입니다'),
            );
          }
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('StremProvider'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _renderListView(),
      ),
    );
  }
}
