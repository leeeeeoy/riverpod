import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/riverpod/topics/scroll_v2/repository.dart';
import 'package:riverpod_flutter/riverpod/topics/scroll_v2/rest_client.dart';
import 'package:riverpod_flutter/riverpod/topics/scroll_v2/user.dart';

class UsersState extends StateNotifier<Users> {
  Repositroy repositroy;

  UsersState({
    required this.repositroy,
  }) : super(Users(users: []));

  getUsers(int page) async {
    if (page >= 3) {
      return;
    }
    var newUsers = await repositroy.getUsers(page);
    state = state.copyWith(users: [...state.users, ...newUsers.users]);
  }

  setUserName(int index, String name) {
    var newUser = state.users[index].copyWith(lastName: name);
    var curUsers = state.users;
    curUsers[index] = newUser;
    state = state.copyWith(users: curUsers);

    // state.users[index] = newUser;
  }
}

final usersProvider = StateNotifierProvider<UsersState, Users>(
  (ref) => UsersState(
    repositroy: Repositroy(
      client: RestClient(
        Dio(),
      ),
    ),
  ),
);

final usersProvider2 = Provider<Users>((ref) {
  final users = ref.watch(usersProvider);
  return users;
});
