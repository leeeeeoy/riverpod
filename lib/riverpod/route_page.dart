import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod'),
      ),
      body: Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 5.0,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/scroll_v2');
                },
                child: const Text('Scroll v2')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/practice');
                },
                child: const Text('Practice')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/scroll');
                },
                child: const Text('Scroll')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/observer');
                },
                child: const Text('Observer')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/select');
                },
                child: const Text('Select')),
          ],
        ),
      ),
    );
  }
}
