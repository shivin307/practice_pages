import 'package:dgsea/config/routes/controller_binding.dart';
import 'package:dgsea/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: ControllerBinding(), // Use the binding here
      home: HomeScreen(),
    );
  }
}
