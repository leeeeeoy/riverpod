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
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/select');
                },
                child: const Text('Select')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/practice');
                },
                child: const Text('Practice')),
          ],
        ),
      ),
    );
  }
}
