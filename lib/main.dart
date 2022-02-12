import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_builder/GetBuilder/home.dart';
import 'package:get_builder/GetX/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/Home', page: () => HomeBuilder()),
        GetPage(name: '/', page: () => GETHome()),
      ],
      home: GETHome(),
    );
  }
}
