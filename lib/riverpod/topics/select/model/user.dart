import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    required String name,
    required String age,
  }) = _User;
}

@freezed
class Users with _$Users {
  factory Users({
    required List<User> users,
    required String next,
  }) = _Users;
}
