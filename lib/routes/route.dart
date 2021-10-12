import 'package:get/get.dart';
import 'package:riverpod_flutter/riverpod/route_page.dart';
import 'package:riverpod_flutter/riverpod/topics/infinite_scroll/scroll_page.dart';
import 'package:riverpod_flutter/riverpod/topics/practice/counter.dart';
import 'package:riverpod_flutter/riverpod/topics/scroll_v2/scroll_v2_page.dart';

final routes = [
  GetPage(name: '/', page: () => const RoutePage()),
  GetPage(name: '/practice', page: () => PracticePage()),
  GetPage(name: '/scroll', page: () => ScrollPage()),
  GetPage(name: '/scroll_v2', page: () => ScrollV2Page()),
];
