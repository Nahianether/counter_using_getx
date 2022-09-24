import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_logic.dart';
import 'second_screen.dart';

void main() => runApp(
      const GetMaterialApp(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${controller.count}",
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async => await Get.to(
                () => const SecondScreen(),
              ),
              child: const Text("Second Screen"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.increment(),
      ),
    );
  }
}
