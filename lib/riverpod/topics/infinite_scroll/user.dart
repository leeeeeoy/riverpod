import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  int id;
  String name;

  User({
    required this.name,
    required this.id,
  });
}

class UserState extends StateNotifier<List<User>> {
  UserState() : super([]);

  Future<List<User>> makeUser(int nextIndex) async {
    await Future.delayed(const Duration(seconds: 1));
    var newUsers = List.generate(20, (index) {
      var curIndex = index + nextIndex;
      return User(name: 'user $curIndex', id: curIndex);
    });
    state = [...state, ...newUsers];
    // print(state.length);
    return newUsers;
  }
}

final userProvider =
    StateNotifierProvider<UserState, List<User>>((ref) => UserState());
