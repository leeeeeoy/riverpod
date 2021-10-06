import 'package:get/get.dart';
import 'package:riverpod_flutter/riverpod/route_page.dart';
import 'package:riverpod_flutter/riverpod/topics/practice/counter.dart';
import 'package:riverpod_flutter/riverpod/topics/select/select_page.dart';

final routes = [
  GetPage(name: '/', page: () => const RoutePage()),
  GetPage(name: '/select', page: () => SelectPage()),
  GetPage(name: '/practice', page: () => PracticePage()),
];
