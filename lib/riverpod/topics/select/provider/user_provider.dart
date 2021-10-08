import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/riverpod/topics/select/model/user.dart';

class MyUser extends StateNotifier<User> {
  int id;
  String name;
  String age;

  MyUser({
    required this.id,
    required this.name,
    required this.age,
  }) : super(User(
          id: id,
          name: name,
          age: age,
        ));

  void setName() => state = state.copyWith(name: 'Lee');
  void setAge() => state = state.copyWith(age: '21');
}

// final userProvider = StateNotifierProvider<MyUser, User>((ref) {
//   return MyUser();
// });

class MyUsers extends StateNotifier<Users> {
  MyUsers()
      : super(
          Users(
            users: [
              User(id: 1, name: 'L', age: '22'),
              User(id: 2, name: 'J', age: '23'),
              User(id: 3, name: 'K', age: '24'),
            ],
            next: 'true',
          ),
        );

  setUserAge(int index) {
    var curUsers = state.users;
    curUsers[index] = state.users[index].copyWith(age: '111');
    state = state.copyWith(users: curUsers);
  }
}

final usersProvider = StateNotifierProvider<MyUsers, Users>((ref) {
  return MyUsers();
});
