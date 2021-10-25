import 'package:get/get.dart';
import 'package:riverpod_flutter/riverpod/route_page.dart';
import 'package:riverpod_flutter/riverpod/topics/infinite_scroll/scroll_page.dart';
import 'package:riverpod_flutter/riverpod/topics/observer/observer_page.dart';
import 'package:riverpod_flutter/riverpod/topics/practice/counter.dart';
import 'package:riverpod_flutter/riverpod/topics/scroll_v2/scroll_v2_page.dart';
import 'package:riverpod_flutter/riverpod/topics/select/select_page.dart';

final routes = [
  GetPage(name: '/', page: () => const RoutePage()),
  GetPage(name: '/practice', page: () => const PracticePage()),
  GetPage(name: '/scroll', page: () => const ScrollPage()),
  GetPage(name: '/scroll_v2', page: () => const ScrollV2Page()),
  GetPage(name: '/observer', page: () => const ObserverPage()),
  GetPage(name: '/select', page: () => const SelectPage()),
];
