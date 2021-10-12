import 'package:riverpod_flutter/riverpod/topics/scroll_v2/rest_client.dart';
import 'package:riverpod_flutter/riverpod/topics/scroll_v2/user.dart';

class Repositroy {
  RestClient client;

  Repositroy({
    required this.client,
  });

  Future<User> getUser(int id) async {
    return await client.getUser(id);
  }

  Future<Users> getUsers(int page) async {
    return await client.getUsers(page);
  }
}
