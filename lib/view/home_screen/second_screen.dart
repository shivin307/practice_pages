import 'package:dgsea/config/theme_data/app_text_styles.dart';
import 'package:dgsea/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Screen',
          style: AppThemeConst.semiBoldText,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is semibold text in the second screen.',
              style:AppThemeConst.semiBoldText,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Go back to Home Screen',
                style: AppThemeConst.mediumBoldText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}