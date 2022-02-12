import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_builder/GetX/home.dart';

import 'controller.dart';

class HomeBuilder extends StatelessWidget {
  const HomeBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  // Get.put(GETHome());
                  Get.defaultDialog(
                      title: 'You sure you wanna get back',
                      textConfirm: 'Go to GETX',
                      onConfirm: () {
                        Get.snackbar('Notify', 'On GETX');

                        Get.toNamed('/');
                      });
                },
                icon: Icon(Icons.backspace))
          ],
        ),
        body: GetBuilder<Controller>(
          init: Controller(),
          builder: (v) => Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 200),
                // margin: EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                    onChanged: ((value) => v.counter = value),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)))),
              ),
              const Spacer(),
              Text(
                '${v.counter}',
                style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () => v.increment(), child: const Icon(Icons.add)),
              const Spacer(),
            ],
          ),
        ));
  }
}
