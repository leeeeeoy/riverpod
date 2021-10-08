import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final listState = StateProvider<List<bool>>((ref) => [false, true]);

int i = 0;

class User {
  int id;
  String name;
  bool like;

  User({
    required this.id,
    required this.name,
    required this.like,
  });

  User copyWith({
    int? id,
    String? name,
    bool? like,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        like: like ?? this.like,
      );
}

class MyUser extends StateNotifier<User> {
  MyUser({
    required int id,
    required String name,
    required bool like,
  }) : super(
          User(
            id: id,
            name: name,
            like: like,
          ),
        );

  void changeLike() => state = state.copyWith(like: !state.like);
}

class Users {
  List<User> users;
  bool loading;
  bool next;

  Users({
    required this.users,
    required this.loading,
    required this.next,
  });

  Users copyWith({
    List<User>? users,
    bool? next,
    bool? loading,
  }) =>
      Users(
        users: users ?? this.users,
        next: next ?? this.next,
        loading: next ?? this.loading,
      );
}

class MyList extends StateNotifier<Users> {
  MyList()
      : super(
          Users(
            users: [],
            next: true,
            loading: true,
          ),
        );

  makeRequest(int nextId) async {
    await Future.delayed(const Duration(seconds: 1));

    if (state.users.length >= 100) {
      return [];
    }
    return List.generate(
      20,
      (index) => User(
        id: i++,
        name: '${index + nextId}',
        like: false,
      ),
    );
  }

  fetchItems(int? nextId) async {
    nextId ??= 0;

    state = state.copyWith(loading: true);

    final items = await makeRequest(nextId);
    if (items.length == 0) {
      state = state.copyWith(next: false, loading: false);
      return;
    }
    state = state.copyWith(
      users: [...state.users, ...items],
    );
    print(state.users.length);

    state = state.copyWith(loading: false);
  }

  changeLike(int index) {}
}

final myListProvider = StateNotifierProvider<MyList, Users>((ref) {
  return MyList();
});
