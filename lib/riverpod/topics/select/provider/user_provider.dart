import 'package:flutter_riverpod/flutter_riverpod.dart';

class User extends StateNotifier<String> {
  User() : super('초기값');

  void setName() => state = 'Lee';
  void setAge() => state = '21';
}

final userProvider = StateNotifierProvider<User, String>((ref) {
  return User();
});
