import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get_builder/GetBuilder/home.dart';

import 'controller.dart';

class GETHome extends StatelessWidget {
  const GETHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('/Home');
                Get.snackbar('Notify', 'On Get Builder');
              },
              icon: Icon(Icons.next_plan))
        ],
      ),
      body: GetX<ControllerGETX>(
        init: ControllerGETX(),
        builder: (val) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 200),
              // margin: EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                  onChanged: ((value) => val.counter.value = value),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)))),
            ),
            Spacer(),
            Text(
              '${val.counter.value}',
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  val.increment();
                },
                child: Icon(Icons.add)),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
