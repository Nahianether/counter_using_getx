import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_logic.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );

class MyHomePage extends StatelessWidget {
  // var count = 0.obs;

  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    var controller = Get.put(
      Controller1(),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("counter"),
      ),
      body: Center(
        child: Obx(
          () => Text("${controller.count}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.increment(),
      ),
    );
  }
}
