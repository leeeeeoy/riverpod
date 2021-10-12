import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  int id;
  String name;
  bool like;

  User({
    required this.name,
    required this.id,
    required this.like,
  });
}

class UserState extends StateNotifier<List<User>> {
  UserState() : super([]);

  Future<List<User>> makeUser(int nextIndex) async {
    await Future.delayed(const Duration(seconds: 1));
    var newUsers = List.generate(20, (index) {
      var curIndex = index + nextIndex;
      return User(
        name: 'user $curIndex',
        id: curIndex,
        like: false,
      );
    });
    state = [...state, ...newUsers];
    // print(state.length);
    return newUsers;
  }

  void setLike(int id) {
    state = state.map<User>((e) {
      if (e.id == id) {
        e.like = !e.like;
      }
      return e;
    }).toList();
    // state[index].like = !state[index].like;
  }
}

final userProvider =
    StateNotifierProvider<UserState, List<User>>((ref) => UserState());

final userReadProvider = Provider<List<User>>((ref) {
  final users = ref.watch(userProvider);
  return users;
});
