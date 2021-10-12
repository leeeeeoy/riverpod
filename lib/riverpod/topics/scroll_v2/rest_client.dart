import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_flutter/riverpod/topics/scroll_v2/user.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://reqres.in')
abstract class RestClient {
  factory RestClient(
    Dio dio, {
    String baseUrl,
  }) = _RestClient;

  @GET('/api/users/{id}')
  Future<User> getUser(@Path() int id);

  @GET('/api/users/')
  Future<Users> getUsers(@Query('page') int page);
}
