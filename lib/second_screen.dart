import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_logic.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(
      Controller1(),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("counter"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Center(
        child: Obx(
          () => Text(
            "${controller.count}",
            style: const TextStyle(
              fontSize: 50,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.remove),
        onPressed: () => controller.decrement(),
      ),
    );
  }
}
